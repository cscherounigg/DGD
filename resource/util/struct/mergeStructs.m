function mergedStruct = mergeStructs(struct1, struct2, overwriteFields)
%MERGE Summary of this function goes here
%   Detailed explanation goes here
arguments
    struct1
    struct2
    overwriteFields = false; % Overwrite fields of struct1 if necessary
end
    mergedStruct = struct1;
    struct2Fields = fieldnames(struct2);
    for i=1:size(struct2Fields, 1)
        if isfield(struct1, struct2Fields(i)) && ~overwriteFields
           % Field of struct2 already present in struct1
           continue
        end
        mergedStruct.(struct2Fields{i}) = struct2.(struct2Fields{i});        
    end
end

