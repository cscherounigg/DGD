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

