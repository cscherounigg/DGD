function dataAvailable = storedDataAvailable(resultHandler)
%STOREDDATAAVAILABLE Summary of this function goes here
%   Detailed explanation goes here
arguments
    resultHandler ResultHandler
end
dataAvailable = size(resultHandler.getValidIds, 2) > 0;
end

