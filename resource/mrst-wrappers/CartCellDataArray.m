% DEPRECATED!!
classdef CartCellDataArray
    %CARTCELLDATAARRAY Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        data
    end
    
    methods
        function cellData = CartCellDataArray(G, initVal)
            %CARTCELLDATAARRAY Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                G struct
                initVal = 0
            end
            cellData.data = zeros(G.cartDims);
            cellData.data(:,:,:) = initVal;
        end

    end
end

