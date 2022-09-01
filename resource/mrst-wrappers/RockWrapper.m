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

classdef RockWrapper
    %ROCKWRAPPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        rock struct
        GW GridWrapper
        propertyPattern
        uniformParams
        gaussianParams
    end
    
    methods
        function rock = RockWrapper(GW)
            %ROCKWRAPPER Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                GW GridWrapper
            end
            rock.GW = GW;
            
            rock.rock = makeRock(GW.G, 0, 1); % Initialize
            rock.rock = addThermalRockProps(rock.rock); % Initialize
        end        
                      
        function rock = setProperty(rock, property, value, optionalArgs)
            arguments
                rock RockWrapper
                property
                value
                optionalArgs.cells = []; % @TODO: Check if cells are within grid by checking if all cell indices are smaller than the greatest index
            end
            
            validProperties = {'porosity', 'permeability', 'density', 'thermalCond', 'heatCapacity'};
            if ~ismember(property, validProperties)
                propertyInfoStr = sprintf("%s, ", validProperties{:});
                propertyInfoStr = extractBefore(propertyInfoStr, strlength(propertyInfoStr)-1);
                error('Invalid property "%s". Must be one of the following: %s.', property, propertyInfoStr);
            end
            
            mrstProperty = RockWrapper.mapProperty2Mrst(property);

            if size(value, 1) == 1
                % Uniform property
                if isempty(optionalArgs.cells)
                    rock.rock.(mrstProperty)(:) = value;
                else
                    rock.rock.(mrstProperty)(optionalArgs.cells) = value;
                end
                return
            end

            % Property is specified for each cell
            if ~(size(value, 1) == size(optionalArgs.cells, 1) || size(value, 1) == size(rock.rock.(mrstProperty), 1))
                error("Value matrix dimension mismatch.");
            end

            if isempty(optionalArgs.cells)
                rock.rock.(mrstProperty) = value;
            else
                rock.rock.(mrstProperty)(optionalArgs.cells) = value;
            end
            
        end

        function rock = setPropertyGaussian(rock, property, min, max, std)
            arguments
                rock RockWrapper
                property
                min
                max
                std
            end
            value = gaussianField(rock.GW.G.cartDims, [min max], 3, std);
            rock = rock.setProperty(property, value(:));
        end

        function rock = setPropertyDirectional(rock, property, value)
            arguments
                rock RockWrapper
                property
                value
            end
            mrstProperty = RockWrapper.mapProperty2Mrst(property);
            switch property
                case 'permeability'
                    values = repmat(value, numel(rock.rock.(mrstProperty)), 1);
                    rock = rock.setProperty(property, values);
                otherwise
                    error('Invalid property "%s". Currently only "permeability" is supported.', property);
            end
        end

        function rock = setLayerProperty(rock, layer, property, value)
            arguments
                rock RockWrapper
                layer Layer
                property
                value
            end
            cells = layer.getCellsOfLayer();
            rock = rock.setProperty(property, value, cells=cells);
        end

        function rock = setLayerPropertyGaussian(rock, layer, property, min, max, std)
            arguments
                rock RockWrapper
                layer Layer
                property
                min
                max
                std
            end
            value = gaussianField(numel(layer.getCellsOfLayer()), [min max], 3, std);
            rock = rock.setLayerProperty(layer, property, value(:));
        end
                      
    end
    methods(Static)
            function mrstProp = mapProperty2Mrst(prop)
                switch prop
                    case 'porosity'
                        mrstProp = 'poro';
                    case 'permeability'
                        mrstProp = 'perm';
                    case 'density'
                        mrstProp = 'rhoR';
                    case 'heatCapacity'
                        mrstProp = 'CpR';
                    case 'thermalCond'
                        mrstProp = 'lambdaR';
                end
            end
        end
end

