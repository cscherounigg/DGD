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
%%%                          Global Variables                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script contains global variables required by DeepGeoDoublet and is
% executed within startup. Do not edit until you know, what you are doing.


function globalVars = getGlobalVars()
%GETGLOBALVARS Summary of this function goes here
%   Detailed explanation goes here

% Get global constants
consts = getGlobalConsts();

% General
globalVars.DISPLAY_DATETIME_FORMAT = 'yyyy-mm-dd HH:MM:SS';
globalVars.GRID_SIZE_WARNING_CELL_NUMBER_THRESHOLD = 1e5;
globalVars.TIMESTEP_WARNING_THRESHOLD = 200;

% Locations
globalVars.USERDATA_PATH = fullfile(getenv('APPDATA'), consts.PROGRAM_NAME);
globalVars.TASK_FOLDER = 'tasks';
globalVars.LOG_FOLDER = 'logs';

% Logging
globalVars.DEFAULT_LOG_STORAGE_DATETIME_FORMAT = 'yyyymmddHHMMSS';
globalVars.DEFAULT_LOG_MESSAGE_DATETIME_FORMAT = "yyyy-mm-dd HH:MM:SS";

% Task
globalVars.DEFAULT_TASK_NAME = 'Task';
globalVars.DEFAULT_TASK_STORAGE_DATETIME_FORMAT = 'yyyymmddHHMMSS';
globalVars.DEFAULT_TASK_KEEP_STATES_DURING_SIMULATION = false;

% Default Task params
globalVars.DEFAULT_BUILDER_PREVIEW = false;

globalVars.DEFAULT_GRID_GLOBAL_SIZE      = [100 100 10]; % meter
globalVars.DEFAULT_GRID_GLOBAL_DEPTH     = 0; % meter
globalVars.DEFAULT_GRID_GLOBAL_DIMS      = [20 20 10];
globalVars.DEFAULT_GRID_LAYER_ENABLE     = false;
globalVars.DEFAULT_GRID_LAYER_POINT      = [0 0 0];
globalVars.DEFAULT_GRID_LAYER_THICKNESS  = 1;
globalVars.DEFAULT_GRID_LAYER_ANGLES     = [0 0 0];

globalVars.DEFAULT_ROCK_VISUALIZATION_PROPERTY   = 'porosity'; % Options: 'porosity', 'permeability', 'density', 'thermal_cond', 'heat_capacity'
globalVars.DEFAULT_ROCK_VISUALIZATION_LAYER_ONLY = false;

globalVars.DEFAULT_ROCK_GLOBAL_POROSITY_TYPE         = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_GLOBAL_POROSITY_UNIFORM      = .2;
globalVars.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_MIN = .1;
globalVars.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_MAX = .3;
globalVars.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_STD = 1;
globalVars.DEFAULT_ROCK_LAYER_POROSITY_TYPE          = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_LAYER_POROSITY_UNIFORM       = .2;
globalVars.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_MIN  = .1;
globalVars.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_MAX  = .3;
globalVars.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_STD  = 1;

globalVars.DEFAULT_ROCK_GLOBAL_PERM_TYPE                     = 'uniform'; % Options: 'uniform', 'gaussian', 'directional'
globalVars.DEFAULT_ROCK_GLOBAL_PERM_UNIFORM                  = 1*milli*darcy; % m²
globalVars.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_MIN             = 10*milli*darcy; % m²
globalVars.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_MAX             = 20*milli*darcy; % m²
globalVars.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_STD             = 1;
globalVars.DEFAULT_ROCK_GLOBAL_PERM_DIRECTIONAL              = [10 10 1]*milli*darcy; % m²
globalVars.DEFAULT_ROCK_LAYER_PERM_TYPE                      = 'uniform'; % Options: 'uniform', 'gaussian', 'directional'
globalVars.DEFAULT_ROCK_LAYER_PERM_UNIFORM                   = 1*milli*darcy; % m²
globalVars.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_MIN              = 10*milli*darcy; % m²
globalVars.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_MAX              = 20*milli*darcy; % m²
globalVars.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_STD              = 1;
globalVars.DEFAULT_ROCK_LAYER_PERM_DIRECTIONAL               = [10 10 1]*milli*darcy; % m²

globalVars.DEFAULT_ROCK_GLOBAL_DENSITY_TYPE          = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_GLOBAL_DENSITY_UNIFORM       = 2700; % kg/m³
globalVars.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_MIN  = 2650; % kg/m³
globalVars.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_MAX  = 2750; % kg/m³
globalVars.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_STD  = .5;
globalVars.DEFAULT_ROCK_LAYER_DENSITY_TYPE           = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_LAYER_DENSITY_UNIFORM        = 2700; % kg/m³
globalVars.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_MIN   = 2650; % kg/m³
globalVars.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_MAX   = 2750; % kg/m³
globalVars.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_STD   = .5;

globalVars.DEFAULT_ROCK_GLOBAL_THERMAL_COND_TYPE         = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_GLOBAL_THERMAL_COND_UNIFORM      = 2; % W/mK
globalVars.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_MIN = 1.5; % W/mK
globalVars.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_MAX = 2.5; % W/mK
globalVars.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_STD = .5;
globalVars.DEFAULT_ROCK_LAYER_THERMAL_COND_TYPE          = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_LAYER_THERMAL_COND_UNIFORM       = 2; % W/mK
globalVars.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_MIN  = 1.5; % W/mK
globalVars.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_MAX  = 2.5; % W/mK
globalVars.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_STD  = .5;

globalVars.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_TYPE            = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_UNIFORM         = 1000; % J/kgK
globalVars.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_MIN    = 950; % J/kgK
globalVars.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_MAX    = 1050; % J/kgK
globalVars.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_STD    = .5;
globalVars.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_TYPE             = 'uniform'; % Options: 'uniform', 'gaussian'
globalVars.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_UNIFORM          = 1000; % J/kgK
globalVars.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_MIN     = 950; % J/kgK
globalVars.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_MAX     = 1050; % J/kgK
globalVars.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_STD     = .5;

% Fluid
globalVars.DEFAULT_FLUID_USE_EOS         = true;
globalVars.DEFAULT_FLUID_DENSITY         = 1000; % kg/m³
globalVars.DEFAULT_FLUID_VISCOSITY       = 1*centi*poise; % Pas
globalVars.DEFAULT_FLUID_GRAVITY_ENABLE  = true;
globalVars.DEFAULT_FLUID_GRAVITY_VECTOR  = [0 0 9.81]; % m/s²
globalVars.DEFAULT_FLUID_HEAT_CAPACITY   = 4184; % J/kgK
globalVars.DEFAULT_FLUID_THERMAL_COND    = .598; % W/mK

% BC
globalVars.DEFAULT_BC_THERMAL_TYPE       = 'temperature'; % Options: 'temperature', 'heat_flux'
globalVars.DEFAULT_BC_VISUALIZATION      = 'hydraulic'; % Options: 'hydraulic', 'thermal'
globalVars.DEFAULT_BC_ENABLED(1:6)       = false;
globalVars.DEFAULT_BC_TYPE = cell(1,6);
globalVars.DEFAULT_BC_TYPE(1:6)          = {'pressure'}; % Options: 'pressure', 'flux'
globalVars.DEFAULT_BC_PRESSURE(1:6)      = 0*barsa; % Pa
globalVars.DEFAULT_BC_FLUX(1:6)          = 0; % m³/s
globalVars.DEFAULT_BC_TEMPERATURE(1:6)   = 1; % K
globalVars.DEFAULT_BC_HEAT_FLUX(1:6)     = 0; % W/m²

% Reservoir
globalVars.DEFAULT_RESERVOIR_PRESSURE           = 100*barsa; % Pa
globalVars.DEFAULT_RESERVOIR_TEMPERATURE        = 293.15; % K

% Wells
globalVars.DEFAULT_WELLS_INJ_NAME                = 'Inj';
globalVars.DEFAULT_WELLS_INJ_RADIUS              = 70*milli*meter; % m
globalVars.DEFAULT_WELLS_INJ_CONTROL_TYPE        = 'rate'; % Options: 'bhp', 'rate'
globalVars.DEFAULT_WELLS_INJ_CONTROL_RATE        = .1; % m³/s
globalVars.DEFAULT_WELLS_INJ_CONTROL_PRESSURE    = 120*barsa; % Pa
globalVars.DEFAULT_WELLS_INJ_TEMPERATURE         = 293.15; % K
globalVars.DEFAULT_WELLS_INJ_BOTTOM_POINT        = [2 2 10];

globalVars.DEFAULT_WELLS_PROD_NAME               = 'Prod';
globalVars.DEFAULT_WELLS_PROD_RADIUS             = 70*milli*meter; % m
globalVars.DEFAULT_WELLS_PROD_CONTROL_TYPE       = 'bhp'; % Options: 'bhp', 'rate'
globalVars.DEFAULT_WELLS_PROD_CONTROL_RATE       = .1; % m³/s
globalVars.DEFAULT_WELLS_PROD_CONTROL_PRESSURE   = 70*barsa; % Pa
globalVars.DEFAULT_WELLS_PROD_BOTTOM_POINT       = [19 19 10];

% Simulation
globalVars.DEFAULT_SIMULATION_END_TIME                      = 10*day; % seconds
globalVars.DEFAULT_SIMULATION_TIMESTEP                      = 5*hour; % seconds
globalVars.DEFAULT_SIMULATION_TIMESTEP_TYPE                 = 'fixed'; % Options: 'fixed', 'geometric_rampup'
globalVars.DEFAULT_SIMULATION_TIME_RAMPUP_STEPS             = 8;
globalVars.DEFAULT_SIMULATION_INITIALIZE_WITH_EQUILIBRIUM   = true;
globalVars.DEFAULT_SIMULATION_EQUILIBRIUM_TIME              = 100*year; % seconds
globalVars.DEFAULT_SIMULATION_PRESSURE_LIMITS               = [0, 1e6*barsa]; % Pa
globalVars.DEFAULT_SIMULATION_TEMPERATURE_LIMITS            = [1, 1e6]; % K

end

