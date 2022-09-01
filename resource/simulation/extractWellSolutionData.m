function wellSolutions = extractWellSolutionData(handler)
%EXTRACTWELLDATA Summary of this function goes here
%   Detailed explanation goes here
arguments
    handler ResultHandler
end
    structArray = extractDataAsStructArray(handler);
    wellSolutions = {structArray(:).wellSol}; % Extract well data
end

