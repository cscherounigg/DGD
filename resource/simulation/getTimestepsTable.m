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

function fig = getTimestepsTable(handler, offset)
%GETTIMESTEPSTABLE Summary of this function goes here
%   Detailed explanation goes here
arguments
    handler ResultHandler
    offset = 0;
end
timestepsEnd = extractCumulativeTimesteps(handler, offset)';
timestepsDelta = [timestepsEnd(1); diff(timestepsEnd)];
timestepsStart = timestepsEnd - timestepsDelta;
steps = (1:size(timestepsEnd,1))';

% Convert to human readable format
timestepsStart = arrayfun(@getTimeAsHumanReadableString, timestepsStart);
timestepsEnd = arrayfun(@getTimeAsHumanReadableString, timestepsEnd);
timestepsDelta = arrayfun(@getTimeAsHumanReadableString, timestepsDelta);

% Convert to chars
timestepsStart = convertStringsToChars(timestepsStart);
timestepsEnd = convertStringsToChars(timestepsEnd);
timestepsDelta = convertStringsToChars(timestepsDelta);
steps = arrayfun(@mat2str, steps, 'UniformOutput', false);

data = [steps, timestepsStart, timestepsEnd, timestepsDelta];

fig = uifigure('Position',[200 200 560 600], 'Name', 'Timesteps Table');

header = {'Step', 'Start Time', 'End Time', 'Delta Time'};
table = uitable(fig, 'Data', data);
table.Position = [20 60 520 520];
table.ColumnName = header;
table.RowName = [];

% Add close button
button = uibutton(fig, 'push', 'Text', 'Close', 'ButtonPushedFcn', @(btn, event) closeTable(fig));
button.Position = [440 20 100 22];
end

function closeTable(fig)
    close(fig);
end