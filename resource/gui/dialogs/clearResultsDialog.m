function decision = clearResultsDialog(figure)
%CLEARRESULTSDIALOG Summary of this function goes here
%   Detailed explanation goes here
decision = uiconfirm(figure, 'The existing result set will be removed. Continue?',...
                'Exiting', 'Icon', 'warning', 'Options', {'Yes', 'No'}, 'CancelOption', 2);
end

