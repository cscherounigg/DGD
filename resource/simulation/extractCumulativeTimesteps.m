function timesteps = extractCumulativeTimesteps(handler, offset)
%EXTRACTCUMULATIVETIMESTEPS Summary of this function goes here
%   Detailed explanation goes here
arguments
    handler ResultHandler
    offset = 0; % For instance if reservoir was put into equilibrium in first state.
end
    structArray = extractDataAsStructArray(handler);
    timesteps = [structArray(:).time];
    timesteps = timesteps - offset;
end

