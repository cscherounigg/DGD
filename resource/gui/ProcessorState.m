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

classdef ProcessorState
    %PROCESSORSTATE Summary of this class goes here
    %   Detailed explanation goes here
    properties
        color
        label
    end
    methods
        function state = ProcessorState(color, label)
            state.color = color;
            state.label = label;
        end
    end
    enumeration
        READY([0 1 0], "Ready")
        PREPROCESSING([1 1 0], "Preprocessing")
        RUNNING([1 1 0], "Running")
        POSTPROCESSING([1 1 0], "Postprocessing")
        ERROR([1 0 0], "Error")
        DONE([0 1 0], "Done")
    end
end

