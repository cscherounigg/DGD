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

function globalConsts = getGlobalConsts()
%GETGLOBALCONSTS Summary of this function goes here
%   Detailed explanation goes here

globalConsts.PROGRAM_NAME = 'DeepGeoDoublet';
globalConsts.VERSION = '1.0.0-rc.3';
globalConsts.AUTHOR_FIRSTNAME = 'Christoph';
globalConsts.AUTHOR_LASTNAME = 'Scherounigg';
globalConsts.YEAR = '2022';

% Colors
globalConsts.LAMP_OFF_COLOR = [0.80, 0.80, 0.80]; % Gray
globalConsts.LAMP_OK_COLOR = [0.00, 1.00, 0.00]; % Green
globalConsts.LAMP_WARNING_COLOR = [1.00, 0.00, 0.00]; % Red
end

