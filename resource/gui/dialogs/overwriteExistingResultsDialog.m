function decision = overwriteExistingResultsDialog(figure)
%OVERWRITEEXISTINGRESULTSDIALOG Summary of this function goes here
%   Detailed explanation goes here
decision = uiconfirm(figure, 'For this Task a set of results already exists on disk. Executing a new simulation will overwrite the existing set. Continue?',...
                'Exiting', 'Icon', 'warning', 'Options', {'Yes', 'No'}, 'CancelOption', 2);
end

