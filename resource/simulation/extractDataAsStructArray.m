function structArray = extractDataAsStructArray(handler)
%EXTRACTDATAASSTRUCTARRAY Summary of this function goes here
%   Detailed explanation goes here
arguments
    handler ResultHandler
end
    if isempty(handler.data)
        % Load data from disk
        indices = handler.getValidIds();
        data = handler.readFromFile(indices);
    else
        data = handler.data;
    end
    structArray = [data{:}]; % Convert to struct
end

