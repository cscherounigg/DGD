function decision = quitWithoutSavingDialog(figure)
%QUITWITHOUTSAVINGDIALOG Summary of this function goes here
%   Detailed explanation goes here
arguments
    figure matlab.ui.Figure
end
decision = uiconfirm(figure, 'Quit without saving?',...
                'Exiting', 'Icon', 'warning', 'Options', {'Continue', 'Save', 'Cancel'});
end

