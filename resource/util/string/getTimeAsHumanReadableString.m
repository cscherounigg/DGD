function output = getTimeAsHumanReadableString(seconds)
%TIMEASSTRING Summary of this function goes here
%   Detailed explanation goes here
if seconds < 1
    time = seconds*1e3; % ms
    output = sprintf("%i ms", time);
elseif seconds < 60
    output = sprintf("%0.2f s", seconds);
elseif seconds < 60^2
    time = seconds / 60; % min
    output = sprintf("%0.2f min", time);
elseif seconds < 60^2*24
    time = seconds / 60^2; % hours
    output = sprintf("%0.2f h", time);
else
    time = seconds / 60^2 / 24; % days
    output = sprintf("%0.2f d", time);
end
end

