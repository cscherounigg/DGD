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

function fn = evaluateAfterStep(messageFcn, handle)
%EVALUATEAFTERSTEP Summary of this function goes here
%   Detailed explanation goes here

% Return handle with additional parameters
fn = @(model, states, reports, solver, schedule, simtime) ...
    afterStepFunction(model, states, reports, solver, ...
    schedule, simtime, messageFcn, handle);
end

function [model, states, reports, solver, ok] = ...
    afterStepFunction(model, states, reports, solver, ...
    schedule, simtime, messageFcn, handle)
    arguments
        model
        states
        reports
        solver
        schedule
        simtime
        messageFcn
        handle
    end

    % Get step params
    lastCompletedStep = getLastNonEmptyRow(reports);
    totalSteps = size(reports, 1);
    iterations = reports{lastCompletedStep, 1}.Iterations;
    if lastCompletedStep - 1 < 1
        startTime = 0;
    else
        startTime = sum(schedule.step.val( ...
            1:lastCompletedStep - 1));
    end
    endTime = sum(schedule.step.val(1:lastCompletedStep));

    startTime = getTimeAsHumanReadableString(startTime);
    endTime = getTimeAsHumanReadableString(endTime);

    lastMaxTimestep = solver.timeStepSelector.maxTimestep;
    
    % Info message
    if isinf(lastMaxTimestep)
        message = sprintf("Timestep %i of %i (%s to %s) " + ...
            "completed after %i iteration(s).", ...
        lastCompletedStep, totalSteps, startTime, endTime, ...
        iterations);
    else
        lastMaxTimestep = getTimeAsHumanReadableString( ...
            lastMaxTimestep);
        message = sprintf("Timestep %i of %i (%s to %s) " + ...
            "completed after %i iteration(s). Last max. " + ...
            "solver timestep was %s.", ...
        lastCompletedStep, totalSteps, startTime, endTime, ...
        iterations, lastMaxTimestep);
    end

    messageFcn(message);

    % Check for warnings
    lastWarning = lastwarn();
    if contains(lastWarning, ['Matrix is close to singular' ...
            ' or badly scaled. Results may be inaccurate.'])
        messageFcn("Warning: Badly conditioned internal" + ...
            " matrix in last step. Convergence problems" + ...
            " may occur. Consider grid size and timesteps.")
    end
    lastwarn(''); % Clear last warning message
    
    % Update MRST Simulation Panel (via its handle)
    [model, states, reports, solver, ok] = handle(model, states, ...
        reports, solver, schedule, simtime);

    % Update MRST Simulation Panel title
    updateFigureTitle(getFiguresByTag('mrst-simpanel'), ['MRST ' ...
        'Simulation Panel']);
end

