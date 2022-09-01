function figures = getFiguresByTag(tag)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
figures = findall(0,'type', 'figure', 'Tag', tag);
end

