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

classdef Layer
    %LAYER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        plane
        cells % Array of grid cells (logical 1 if cell is part of layer)
    end
    
    methods
        function layer = Layer(planePoint, gridWrapper, thickness, rotAngles)
            %LAYER Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                planePoint 
                gridWrapper GridWrapper
                thickness = 1;
                rotAngles = [0 0 0];
            end
            layer.plane = Plane([0 0 1], planePoint);
            layer.plane = layer.plane.rotate(rotAngles(1), rotAngles(2), rotAngles(3));
            layer.cells = layer.plane.getLayerCellsInGrid(gridWrapper, thickness);
        end

        function cellIndices = getCellsOfLayer(layer)
            arguments
                layer Layer
            end
            
            cellIndices = find(layer.cells == 1);
        end

    end
end

