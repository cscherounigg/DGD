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

classdef DialogType
    %DIALOGTYPE Summary of this class goes here
    %   Detailed explanation goes here
    properties
        icon
    end
    methods
        function type = DialogType(icon)
            type.icon = icon;
        end
    end
    enumeration
        INFO("help")
        WARNING("warn")
        ERROR("error")
    end
end

