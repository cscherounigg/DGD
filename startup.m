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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                               Startup                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contains the startup routing used to build the MATLAB environment path.

currentPath = fileparts(which(mfilename));

% Add resources to path
addpath('resource');
addpath('resource/geometry');
addpath('resource/global');
addpath('resource/gui');
addpath('resource/gui/dialogs');
addpath('resource/mrst-wrappers');
addpath('resource/plot');
addpath('resource/simulation');
addpath('resource/task');
addpath('resource/util');
addpath('resource/util/cellarray');
addpath('resource/util/logging');
addpath('resource/util/string');
addpath('resource/util/struct');
addpath('resource/util/units');

% Run MRST startup routine
cd('../../mrst'); % Has to point to the installation directory of MRST
startup % Run MRST's startup function
cd(currentPath);

% Load Modules
mrstModule add geothermal ad-core ad-props compositional mrst-gui