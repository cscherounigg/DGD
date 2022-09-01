function decision = editorSelectionDialog(figure)
%EDITORSELECTIONDIALOG Summary of this function goes here
%   Detailed explanation goes here
arguments
    figure matlab.ui.Figure
end
decision = uiconfirm(figure, 'Which editor to use?',...
                'Editor Selection', 'Icon', 'question', 'Options', {'Graphical', 'Raw', 'Cancel'}, 'CancelOption', 3);
end

