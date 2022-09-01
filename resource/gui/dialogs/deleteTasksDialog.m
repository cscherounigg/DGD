function decision = deleteTasksDialog(figure)
%OVERWRITEEXISTINGRESULTSDIALOG Summary of this function goes here
%   Detailed explanation goes here
decision = uiconfirm(figure, 'Confirm deleting selected tasks.',...
                'Deletion Warning', 'Icon', 'warning', 'Options', {'Abort', 'Continue'}, 'CancelOption', 1);
end

