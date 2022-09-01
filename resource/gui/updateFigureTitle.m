function updateFigureTitle(fig, title, numberPrefix)
%UPDATEFIGURETITLE Summary of this function goes here
%   Detailed explanation goes here
arguments
    fig
    title
    numberPrefix = false;
end
if numberPrefix
    set(fig, 'name', title, 'numberTitle', 'on')
else
    set(fig, 'name', title, 'numberTitle', 'off')
end
end

