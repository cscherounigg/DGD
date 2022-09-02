%{
    Copyright (C) 2022  Christoph Scherounigg

    This file is part of DeepGeoDoublet.

    DeepGeoDoublet is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or (at 
    your option) any later version.

    This program is distributed in the hope that it will be useful, but 
    WITHOUT ANY WARRANTY; without even the implied warranty of 
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
%}

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

