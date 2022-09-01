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

function tasks = loadTasks(varNamedArgs)
%LOADTASKS Summary of this function goes here
%   Detailed explanation goes here
arguments
    varNamedArgs.tasksPath = fullfile(getenv('APPDATA'), 'DeepGeoDoublet', 'tasks');
    varNamedArgs.propertyFilename = 'task.mat'
    varNamedArgs.createdDatetimes = [];
end
tasks = [];

dirContent = dir(varNamedArgs.tasksPath);

createdDatetimes = datestr(varNamedArgs.createdDatetimes(:), 'yyyymmddHHMMSS');
identifiers = strcat("Task_", createdDatetimes);

for i=1:size(dirContent, 1)
    element = dirContent(i);
    if ~(element.isdir) || strcmp(element.name, '.') || strcmp(element.name, '..')
        continue
    end

    subfolder = string(element.name);

    if size(varNamedArgs.createdDatetimes, 1) > 0 && ~any(strcmp(identifiers, subfolder))
        % Check if identifiers array is given and task is not part of array
        continue
    end
    tasks = [tasks; matfile(fullfile(varNamedArgs.tasksPath, subfolder, varNamedArgs.propertyFilename)).task];    
end
end

