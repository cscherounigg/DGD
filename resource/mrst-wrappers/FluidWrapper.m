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

classdef FluidWrapper
    %FLUIDWRAPPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        fluid struct
    end
    
    methods
        function fluid = FluidWrapper(heatCapacity, thermalConductivity, density, viscosity, useEOS)
            %FLUIDWRAPPER Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                heatCapacity
                thermalConductivity
                density = 1000;
                viscosity = 1*centi*poise;
                useEOS = true;
            end
            fluid.fluid = initSimpleADIFluid('rho', density, 'mu', viscosity, 'phases', 'W'); 
            fluid.fluid = addThermalFluidProps(fluid.fluid, 'Cp', heatCapacity, 'lambdaF', thermalConductivity, 'useEOS', useEOS);
        end        
    end
end

