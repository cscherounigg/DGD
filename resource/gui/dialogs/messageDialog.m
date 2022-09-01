function messageDialog(figure, message, title, type)
%MULTIPLETASKSSELECTEDERROR Summary of this function goes here
%   Detailed explanation goes here
arguments
    figure matlab.ui.Figure
    message string
    title string
    type DialogType
end
    uiconfirm(figure, message, title, 'Icon', type.icon, 'Options', {'OK'});
end