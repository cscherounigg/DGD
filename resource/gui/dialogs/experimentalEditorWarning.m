function experimentalEditorWarning(figure)
%EXPERIMENTALEDITORWARNING Summary of this function goes here
%   Detailed explanation goes here
arguments
    figure matlab.ui.Figure
end
    uiconfirm(figure, {'EXPERIMENTAL FUNCTION!', '', 'The raw task editor is currently in experimental state with limited sanitization of user input. Wrong inputs may produce unexpected results. Use with care.'},...
    'Experimental Warning', 'Icon', 'warning', 'Options', {'Confirm'});
end

