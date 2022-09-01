function result = anyFieldEmpty(inputStruct)
%ANYFIELDEMPTY Summary of this function goes here
%   Detailed explanation goes here
arguments
    inputStruct struct
end
    result = any(structfun(@isempty, inputStruct));
end

