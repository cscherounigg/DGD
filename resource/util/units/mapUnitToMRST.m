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

function mrstUnit = mapUnitToMRST(symbol)
%MAPUNITTOMRST Summary of this function goes here
%   Detailed explanation goes here
    switch(symbol)
        
        % Acceleration
        case 'm/s²'
            mrstUnit = meter*second^2;

        % Density
        case 'kg/m³'
            mrstUnit = kilogram/meter^3;
        case 'g/cm³'
            mrstUnit = gram/(centi*meter)^3;
        case 'ppg'
            mrstUnit = pound/gallon;

        % Distance
        case 'μm'
            mrstUnit = micro*meter;
        case 'm'
            mrstUnit = meter;
        case 'mm'
            mrstUnit = milli*meter;
        case 'inch'
            mrstUnit = inch;
        case 'km'
            mrstUnit = kilo*meter;
        case 'ft'
            mrstUnit = ft;
        case 'mi'
            mrstUnit = 5280*ft;
        
        % Flow rate
        case 'm³/s'
            mrstUnit = meter^3/second;
        case 'm³/h'
            mrstUnit = meter^3/hour;
        case 'm³/day'
            mrstUnit = meter^3/day;
        case 'STB/h'
            mrstUnit = stb/hour;
        case 'STB/day'
            mrstUnit = stb/day;
        
        % Heat flux
        case 'W/m²'
            mrstUnit = watt/meter^2;

        % Permeability
        case 'mD'
            mrstUnit = milli*darcy;

        % Specific Heat capacity
        case 'J/kgK'
            mrstUnit = joule/(kilogram*Kelvin);

        % Thermal conductivity
        case 'W/mK'
            mrstUnit = watt/(meter*Kelvin);

        % Time
        case 's'
            mrstUnit = second;
        case 'min'
            mrstUnit = minute;
        case 'h'
            mrstUnit = hour;
        case 'd'
            mrstUnit = day;
        case 'a'
            mrstUnit = year;
        
        % Pressure
        case 'Pa'
            mrstUnit = Pascal;
        case 'MPa'
            mrstUnit = mega*Pascal;
        case 'bara'
            mrstUnit = barsa;
        case 'psi'
            mrstUnit = psia;
        
        % Viscosity
        case 'cP'
            mrstUnit = centi*poise;
        case 'Pas'
            mrstUnit = Pascal*second;

        % Unit not found
        otherwise
            error('Unit "%s" not supported.',symbol);
    end
end

