function outputStruct = transposeVectors(inputStruct)
%TRANSPOSEVECTORS Summary of this function goes here
%   Detailed explanation goes here
    fields = fieldnames(inputStruct);
    for i = 1:size(fields, 1)
        currentValue = inputStruct.(fields{i});
        if isa(currentValue, 'struct')
            currentValue = transposeVectors(currentValue);
        else
            if size(currentValue, 1) > 1 % Column vector
                currentValue = currentValue'; % Transpose
            end
        end
        inputStruct.(fields{i}) = currentValue;
    end
    outputStruct = inputStruct;
end

