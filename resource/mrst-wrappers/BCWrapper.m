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

classdef BCWrapper
    %BCWRAPPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        BC struct
        GW GridWrapper
    end
    
    methods
        function bc = BCWrapper(gridWrapper)
            %BCWRAPPER Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                gridWrapper GridWrapper
            end
            bc.BC = [];
            bc.GW = gridWrapper;
        end
        
        function bc = addSide(bc, side, varNamedArgs)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            arguments
                bc BCWrapper
                side
                varNamedArgs.pressure = nan;
                varNamedArgs.flux = nan;
                varNamedArgs.saturation = [];
                varNamedArgs.temperature = nan;
                varNamedArgs.heatFlux = nan;
            end
            
            if isnan(varNamedArgs.pressure) && isnan(varNamedArgs.flux)
                error("Either a pressure or a flux value has to be supplied.")
            elseif isnan(varNamedArgs.temperature) && isnan(varNamedArgs.heatFlux)
                error("Either a temperature or a heat flux has to be defined.")
            end
            
            % Read old temperature and heatflux values
            if isfield(bc.BC, 'T')
                existingTemperature = bc.BC.T;
                existingHeatFlux = bc.BC.Hflux;
            else
                existingTemperature = [];
                existingHeatFlux = [];
            end

            % Pressure BC
            if ~isnan(varNamedArgs.pressure)
                if numel(varNamedArgs.saturation) == 0
                    bc.BC = pside(bc.BC, bc.GW.G, side, varNamedArgs.pressure);
                else
                    bc.BC = pside(bc.BC, bc.GW.G, side, varNamedArgs.pressure, 'sat', varNamedArgs.saturation);
                end
            % Flux BC
            elseif ~isnan(varNamedArgs.flux)
                if numel(varNamedArgs.saturation) == 0
                    bc.BC = fluxside(bc.BC, bc.GW.G, side, varNamedArgs.flux);
                else
                    bc.BC = fluxside(bc.BC, bc.GW.G, side, varNamedArgs.flux, 'sat', varNamedArgs.saturation);
                end
            end
            
            sideFaces = numel(boundaryFaceIndices(bc.GW.G, side));
            % Temperature BC
            if ~isnan(varNamedArgs.temperature)
                temperature = [existingTemperature; repmat(varNamedArgs.temperature, sideFaces, 1)];
                bc.BC = addThermalBCProps(bc.BC, 'T', temperature);
            % Heat flux BC
            elseif ~isnan(varNamedArgs.heatFlux)
                heatFlux = [existingHeatFlux; repmat(varNamedArgs.heatFlux, sideFaces, 1)];
                bc.BC = addThermalBCProps(bc.BC, 'Hflux', heatFlux);
            end

        end

    end
end

