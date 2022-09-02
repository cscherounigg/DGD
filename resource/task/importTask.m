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

function task = importTask()
%IMPORTTASK Summary of this function goes here
%   Detailed explanation goes here

% Ask for zip file
[importFileName, importPath] = uigetfile({'*.zip', 'ZIP Archive (*.zip)'}, 'Select Task archive');
importFile = fullfile(importPath, importFileName);

% Create new empty task
task = Task(getGlobalVars());
storeTask(task);

% Unzip to temporary directory
taskPath = fullfile(createTasksDir(), task.generic.parentDirName);
mkdir(taskPath, 'tmp');
tmpPath = fullfile(taskPath, 'tmp');
unzip(importFile, tmpPath);

% Read parameters
genericFile = fullfile(tmpPath, 'generic.json');
paramsFile = fullfile(tmpPath, 'params.json');
try
    generic = readlines(genericFile);
    % TODO: It is possible to sanitize when this file is missing e.g. by
    % naming the new task "Imported Task X" etc.
catch e
    rmdir(taskPath, 's');
    if e.identifier == "MATLAB:textio:textio:FileNotFound"
        errorStruct.identifier = 'TaskImport:GenericFileMissing';
        error(errorStruct)
    end
    rethrow(e);
end

try
    params = readlines(paramsFile);
catch e
    rmdir(taskPath, 's');
    if e.identifier == "MATLAB:textio:textio:FileNotFound"
        errorStruct.identifier = 'TaskImport:ParamsFileMissing';
        error(errorStruct)
    end
    rethrow(e);
end

% Remove temporary directory
rmdir(tmpPath, 's')

% Convert json files to structs
try
    genericStruct = jsondecode(strjoin(generic));
catch
    rmdir(taskPath, 's');
    errorStruct.identifier = 'TaskImport:GenericFileSyntaxError';
    error(errorStruct);

end
try
    task.params = jsondecode(strjoin(params));
catch
    rmdir(taskPath, 's');
    errorStruct.identifier = 'TaskImport:ParamsFileSyntaxError';
    error(errorStruct);
end

genericStruct = rmfield(genericStruct, 'created');
genericStruct = rmfield(genericStruct, 'parentDirName');
task.generic = mergeStructs(task.generic, genericStruct, true);

% Update stored task
storeTask(task);
end