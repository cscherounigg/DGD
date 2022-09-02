%{
    Copyright (C) 2022  Christoph Scherounigg

    This file is part of DeepGeoDoublet.

    DeepGeoDoublet is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or (at 
    your option) any later version.

    This program is distributed in the hope that it will be useful, but 
    WITHOUT ANY WARRANTY; without even the implied warranty of 
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
%}

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

