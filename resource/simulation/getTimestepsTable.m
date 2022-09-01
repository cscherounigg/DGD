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