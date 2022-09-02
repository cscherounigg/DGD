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

function exportTask(task)
%EXPORTTASK Summary of this function goes here
%   Detailed explanation goes here
arguments
    task Task
end
    % Ask for filepath
    [exportFile, exportPath] = uiputfile({'*.zip', 'ZIP Archive (*.zip)'}, 'Create export archive');
    if exportFile == 0
        return
    end
    
    % Get json formatted task properties
    generic = jsonencode(task.generic, PrettyPrint=true);
    params = jsonencode(task.params, PrettyPrint=true);

    % Store temporary text files
    genericFile = fullfile(createTasksDir(), task.generic.parentDirName, 'generic.json');
    paramsFile = fullfile(createTasksDir(), task.generic.parentDirName, 'params.json');
    writelines(generic, genericFile);
    writelines(params, paramsFile);

    % Zip text files to user location
    zipFile = fullfile(exportPath, exportFile);
    zip(zipFile, {genericFile, paramsFile});

    % Remove temporary files
    delete(genericFile);
    delete(paramsFile);
end

