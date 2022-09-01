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

function conversionFactor = mapUnitToMRSTReverse(symbol)
%MAPUNITTOMRSTREVERSE Summary of this function goes here
%   Detailed explanation goes here
    switch(symbol)
        
        % Acceleration
        case 'm/s²'
            conversionFactor = 1/meter/second^2;

        % Density
        case 'kg/m³'
            conversionFactor = 1/kilogram*meter^3;
        case 'g/cm³'
            conversionFactor = 1/gram*(centi*meter)^3;
        case 'ppg'
            conversionFactor = 1/pound*gallon;

        % Distance
        case 'μm'
            conversionFactor = 1/micro/meter;
        case 'm'
            conversionFactor = 1/meter;
        case 'mm'
            conversionFactor = 1/milli/meter;
        case 'inch'
            conversionFactor = 1/inch;
        case 'km'
            conversionFactor = 1/kilo/meter;
        case 'ft'
            conversionFactor = 1/ft;
        case 'mi'
            conversionFactor = 1/5280/ft;
        
        % Flow rate
        case 'm³/s'
            conversionFactor = 1/meter^3*second;
        case 'm³/h'
            conversionFactor = 1/meter^3*hour;
        case 'm³/day'
            conversionFactor = 1/meter^3*day;
        case 'STB/h'
            conversionFactor = 1/stb*hour;
        case 'STB/day'
            conversionFactor = 1/stb*day;
        
        % Heat flux
        case 'W/m²'
            conversionFactor = 1/watt*meter^2;

        % Permeability
        case 'mD'
            conversionFactor = 1/milli/darcy;

        % Specific Heat capacity
        case 'J/kgK'
            conversionFactor = 1/joule*(kilogram*Kelvin);

        % Thermal conductivity
        case 'W/mK'
            conversionFactor = 1/watt*(meter*Kelvin);

        % Time
        case 's'
            conversionFactor = 1/second;
        case 'min'
            conversionFactor = 1/minute;
        case 'hour'
            conversionFactor = 1/hour;
        case 'd'
            conversionFactor = 1/day;
        case 'a'
            conversionFactor = 1/year;
        
        % Pressure
        case 'Pa'
            conversionFactor = 1/Pascal;
        case 'MPa'
            conversionFactor = 1/mega/Pascal;
        case 'bara'
            conversionFactor = 1/barsa;
        case 'psi'
            conversionFactor = 1/psia;
        
        % Viscosity
        case 'cP'
            conversionFactor = 1/centi/poise;
        case 'Pas'
            conversionFactor = 1/Pascal/second;

        % Unit not found
        otherwise
            error('Unit "%s" not supported.',symbol);
    end
end

