function fig = plotWellSolutionData(resultHandler, timeOffset)
%PLOTWELLSOLUTIONDATA Summary of this function goes here
%   Detailed explanation goes here
arguments
    resultHandler ResultHandler
    timeOffset = 0;
end
wellSolutions = extractWellSolutionData(resultHandler);
timesteps = extractCumulativeTimesteps(resultHandler, timeOffset);
fig = plotWellSols(wellSolutions, timesteps);
set(fig, "Name", "MRST Well Data Plotter", "NumberTitle", "off");
end

