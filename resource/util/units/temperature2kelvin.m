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

function output = temperature2kelvin(input, unit)
%TEMPERATURE2KELVIN Summary of this function goes here
%   Detailed explanation goes here
switch unit
    case 'K'
        output = input;
    case '°C'
        output = input + 273.15;
    case '°F'
        output = (input - 32) / 1.8 + 273.15;
    otherwise
        error('Unit "%s" not supported.', unit)
end
end

