function row = getLastNonEmptyRow(inputCellArray)
%GETLASTNONEMPTYROW Summary of this function goes here
%   Detailed explanation goes here
row = find(~cellfun(@isempty, inputCellArray));
row = row(end);
end

