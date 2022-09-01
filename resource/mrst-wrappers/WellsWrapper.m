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

classdef WellsWrapper
    %WELLSWRAPPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        grid GridWrapper
        rock RockWrapper
        wells struct
        wellTemperatures
        plotColors
    end
    
    methods
        function wells = WellsWrapper(gridWrapper, rockWrapper)
            %WELLSWRAPPER Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                gridWrapper GridWrapper
                rockWrapper RockWrapper
            end
            wells.grid = gridWrapper;
            wells.rock = rockWrapper;
            wells.wells = [];
            wells.wellTemperatures = [];
            wells.plotColors = [];
        end
        
        function wells = addVerticalWell(wells, bottomHolePoint, radius, name, varNamedArgs)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            arguments
                wells WellsWrapper
                bottomHolePoint
                radius
                name
                varNamedArgs.operatingCondition = 'bhp'
                varNamedArgs.operatingValue = 0
                varNamedArgs.type = 'undefined'
                varNamedArgs.temperature = 0;
                varNamedArgs.color = 'b'
            end
            
            if ~ismember(varNamedArgs.operatingCondition, {'bhp', 'rate'})
                error('Invalid operating condition: "%". Must either be "bhp" or "rate".', varNamedArgs.operatingCondition);
            end
            
            switch varNamedArgs.type
                case 'prod'
                    sign = -1;
                    if varNamedArgs.operatingCondition == "rate"
                        varNamedArgs.operatingValue = -varNamedArgs.operatingValue; % MRST requires flow rate to be negative for producing wells
                    end
                case 'inj'
                    sign = 1;
                case 'undefined'
                    if ~strcmp(varNamedArgs.operatingCondition, 'rate')
                        error('Well type must not be "undefined" if BHP is controlling factor.')
                    end
                    sign = 0;
                otherwise
                    error('Invalid well type: "%s". Must either be "prod", "inj" or "undefined".', varNamedArgs.type)
            end

            x = bottomHolePoint(1);
            y = bottomHolePoint(2);
            z = bottomHolePoint(3);
            wells.wells = verticalWell(wells.wells, wells.grid.G, wells.rock.rock, x, y, 1:z, ...
                'type', varNamedArgs.operatingCondition, 'val', ...
                varNamedArgs.operatingValue, 'radius', radius, 'name', name, ...
                'comp_i', [1, 0, 0], 'sign', sign);
            
            
            
            wells.wellTemperatures = [wells.wellTemperatures varNamedArgs.temperature];
            wells.plotColors = [wells.plotColors varNamedArgs.color];
        end

        function wells = updateThermalProperties(wells)
            wells.wells = addThermalWellProps(wells.wells);
            for i = 1:size(wells.wells, 1)
                wells.wells(i).T = wells.wellTemperatures(i);
            end
        end
    end
end

