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

