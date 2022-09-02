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

function exportTaskResults(task)
%EXPORTTASKRESULTS Summary of this function goes here
%   Detailed explanation goes here
    arguments
        task Task
    end
    if ~task.storedDataAvailable
        warning('No results available for this task. Exported file will be empty.')
    end

    % Ask for filepath
    [exportFile, exportPath] = uiputfile({'*.zip', 'ZIP Archive (*.zip)'}, 'Create export archive');
    if exportFile == 0
        return
    end

    resultsDir = fullfile(createTasksDir(), task.generic.parentDirName, 'results');
    zipFile = fullfile(exportPath, exportFile);

    zip(zipFile, resultsDir);
end

