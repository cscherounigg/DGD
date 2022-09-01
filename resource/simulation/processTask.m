%{
    Copyright (C) 2022  Christoph Scherounigg

    This file is part of DeepGeoDoublet.

    DeepGeoDoublet is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or (at 
    your option) any later version.

    This program is distributed in the hope that it will be useful, but 
    WITHOUT ANY WARRANTY; without even the implied warranty of 
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
%}

function resultHandler = processTask( ...
    task, statusMessageFcn, writeResultsToDisk)
%PROCESSTASK Controls the simulation run for a Task
%   Builds MRST simulation schedule, manages callbacks for status messages
%   and executes the simulation
%
%   ARGUMENTS
%    task               ->  Task to be executed
%    
%   OPTIONAL ARGUMENTS
%    statusMessageFcn   ->  Callback function for status messages. Must
%                           accept a string as argument.
%    writeResultsToDisk ->  Store the results of each simulation step to
%                           the location specified by the Task
arguments
    task Task
    statusMessageFcn = @null; % No callback function for status
                              % messages specified
    writeResultsToDisk = true;
end

% MRST models
statusMessageFcn("Building MRST simulation model.")
equilibriumModel = GeothermalModel(task.model.grid.G, ...
    task.model.rock.rock, task.model.fluid.fluid, ...
    'extraStateOutput', true);
model = GeothermalModel(task.model.grid.G, ...
    task.model.rock.rock, ...
    task.model.fluid.fluid, 'extraStateOutput', true);

% Set limits
model.minimumPressure = task.params.simulation.pressureLimits(1);
model.maximumPressure = task.params.simulation.pressureLimits(2);
model.minimumTemperature = ...
    task.params.simulation.temperatureLimits(1);
model.maximumTemperature = ...
    task.params.simulation.temperatureLimits(2);

% Timesteps
statusMessageFcn("Computing timesteps.")
endTime = task.params.simulation.endTime;
timestep = task.params.simulation.timestep;
switch task.params.simulation.timestepType
    case 'fixed'
        timesteps = diff(0:timestep:endTime);
    case 'geometric_rampup'
        timesteps = rampupTimesteps(endTime, timestep, ...
            task.params.simulation.timeRampupSteps);
    otherwise
        errorMsg = "ERROR: Unrecognized timestep type.";
        statusMessageFcn(errorMsg)
        error(errorMsg)
end

% Gravity
if task.params.fluid.gravity.enabled
    statusMessageFcn("Enabling gravity.")
    gravity reset on
    gravity(task.params.fluid.gravity.vector)
else
    gravity reset off
end

% Initial equilibrium
if task.params.simulation.initializeWithEquilibrium
    statusMessageFcn("Computing initial equilibrium.")
    schedule = simpleSchedule( ...
        task.params.simulation.equilibriumTime, ...
        'bc', task.model.bc.BC);
    try
        [~, reservoirStates, ~] = simulateScheduleAD( ...
            task.model.reservoir.state, equilibriumModel, ...
            schedule);
    catch e
        if contains(e.message, ['Did not find a solution: ' ...
                'Maximum number of substeps stopped timestep ' ...
                'reduction'], IgnoreCase=true)
            errorStruct.identifier = ...
                'TaskProcessor:NoInitialEquilibriumSolution';
            error(errorStruct);
        elseif contains(e.message, ['Pore-volumes must be ' ...
                'non-negative.'], IgnoreCase=true)
            errorStruct.identifier = ...
                'TaskProcessor:InvalidPoreVolume';
            error(errorStruct);
        end
        rethrow(e);
    end
    state0 = reservoirStates{1,1};
    statusMessageFcn("Initial equilibrium sucessfully " + ...
        "calculated.")
else
    state0 = task.model.reservoir.state;
end


% MRST Schedule
statusMessageFcn("Creating MRST simulation schedule.")
schedule  = simpleSchedule(timesteps, 'bc', task.model.bc.BC, ...
    'W', task.model.wells.wells);

% MRST Results handler
statusMessageFcn("Initializing MRST result handler.")
resultsDir = fullfile(getenv('APPDATA'), 'DeepGeoDoublet', ...
    'tasks', task.generic.parentDirName);
if writeResultsToDisk
    resultHandler = ResultHandler('writeToDisk', true, ...
        'dataDirectory', resultsDir, 'dataFolder', 'results');
else
    resultHandler = ResultHandler('storeInMemory', true, ...
        'writeToDisk', false, 'dataDirectory', resultsDir, ...
        'dataFolder', 'results');
end

resultHandler.resetData(); % Delete existing data

% Simulate
statusMessageFcn("Starting MRST simulation.")
fn = getPlotAfterStep(state0, model, schedule, ...
    'plotWell', false, 'plotReservoir', false);
afterStepFunction = evaluateAfterStep(statusMessageFcn, fn);
try
    [~, ~, ~] = simulateScheduleAD(state0, model, schedule, ...
        'afterStepFn', afterStepFunction, ...
        'outputHandler', resultHandler);
catch e
    close(getFiguresByTag('mrst-simpanel')); % Close MRST Panel
    if contains(e.message, ['Did not find a solution: Maximum ' ...
            'number of substeps stopped timestep reduction'], ...
            IgnoreCase=true) == true
        errorStruct.identifier = 'TaskProcessor:NoSolution';
        error(errorStruct);
    else
        rethrow(e)
    end
end
close(getFiguresByTag('mrst-simpanel')); % Close MRST Panel
end

