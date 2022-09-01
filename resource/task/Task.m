classdef Task
    %TASK A combined structure for model and simulation properties.
    % The Task object holds all properties of a model together with
    % metadata and simulation properties.
    
    properties (Access = public)
        generic struct
        params struct
        model struct
    end
    
    methods (Access = public)
        function task = Task(defaults, name, datetimeCreated)
            %TASK Constructor for Task.
            %
            % ARGUMENTS
            %  defaults         ->  Struct with default parameters for all
            %                       settings. See getGlobalVars() for more
            %                       information.
            % 
            % OPTIONAL ARGUMENTS
            %  name             ->  A name for the given Task. Defaults to
            %                       DEFAULT_TASK_NAME specified in the
            %                       defaults.
            %  datetimeCreated  ->  The datetime when the task was created.
            %                       Used as unique identifier. Defaults to
            %                       the current datetime.
            arguments
                defaults struct
                name  = defaults.DEFAULT_TASK_NAME;
                datetimeCreated datetime = datetime;
            end

            task.generic = struct();
            task.generic.name = name;
            task.generic.created = datetimeCreated;
            task.generic.notes = '';
            task.generic.completed = false;

            task = task.updateParentDirName(defaults.DEFAULT_TASK_STORAGE_DATETIME_FORMAT);
            
            task.model = struct();
            task.model.grid = [];
            task.model.layer = [];
            task.model.rock = [];
            task.model.wells = [];
            task.model.bc = [];
            task.model.fluid = [];
            task.model.reservoir = [];

            % Initialize params struct
            task.params = struct();

            % General
            task.params.general.builderPreview = defaults.DEFAULT_BUILDER_PREVIEW;

            % Grid
            task.params.grid.global.size    = defaults.DEFAULT_GRID_GLOBAL_SIZE;
            task.params.grid.global.depth   = defaults.DEFAULT_GRID_GLOBAL_DEPTH;
            task.params.grid.global.dims    = defaults.DEFAULT_GRID_GLOBAL_DIMS;

            task.params.grid.layer.enable       = defaults.DEFAULT_GRID_LAYER_ENABLE;
            task.params.grid.layer.point        = defaults.DEFAULT_GRID_LAYER_POINT;
            task.params.grid.layer.thickness    = defaults.DEFAULT_GRID_LAYER_THICKNESS;
            task.params.grid.layer.angles       = defaults.DEFAULT_GRID_LAYER_ANGLES;

            % Rock
            task.params.rock.visualization.property     = defaults.DEFAULT_ROCK_VISUALIZATION_PROPERTY;
            task.params.rock.visualization.layerOnly    = defaults.DEFAULT_ROCK_VISUALIZATION_LAYER_ONLY;
            
            task.params.rock.global.porosity.type           = defaults.DEFAULT_ROCK_GLOBAL_POROSITY_TYPE;
            task.params.rock.global.porosity.uniform        = defaults.DEFAULT_ROCK_GLOBAL_POROSITY_UNIFORM;
            task.params.rock.global.porosity.gaussian.min   = defaults.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_MIN;
            task.params.rock.global.porosity.gaussian.max   = defaults.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_MAX;
            task.params.rock.global.porosity.gaussian.std   = defaults.DEFAULT_ROCK_GLOBAL_POROSITY_GAUSSIAN_STD;
            task.params.rock.layer.porosity.type            = defaults.DEFAULT_ROCK_LAYER_POROSITY_TYPE;
            task.params.rock.layer.porosity.uniform         = defaults.DEFAULT_ROCK_LAYER_POROSITY_UNIFORM;
            task.params.rock.layer.porosity.gaussian.min    = defaults.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_MIN;
            task.params.rock.layer.porosity.gaussian.max    = defaults.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_MAX;
            task.params.rock.layer.porosity.gaussian.std    = defaults.DEFAULT_ROCK_LAYER_POROSITY_GAUSSIAN_STD;
            
            task.params.rock.global.perm.type                   = defaults.DEFAULT_ROCK_GLOBAL_PERM_TYPE;
            task.params.rock.global.perm.uniform                = defaults.DEFAULT_ROCK_GLOBAL_PERM_UNIFORM;
            task.params.rock.global.perm.gaussian.min           = defaults.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_MIN;
            task.params.rock.global.perm.gaussian.max           = defaults.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_MAX;
            task.params.rock.global.perm.gaussian.std           = defaults.DEFAULT_ROCK_GLOBAL_PERM_GAUSSIAN_STD;
            task.params.rock.global.perm.directional            = defaults.DEFAULT_ROCK_GLOBAL_PERM_DIRECTIONAL;
            task.params.rock.layer.perm.type                    = defaults.DEFAULT_ROCK_LAYER_PERM_TYPE;
            task.params.rock.layer.perm.uniform                 = defaults.DEFAULT_ROCK_LAYER_PERM_UNIFORM;
            task.params.rock.layer.perm.gaussian.min            = defaults.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_MIN;
            task.params.rock.layer.perm.gaussian.max            = defaults.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_MAX;
            task.params.rock.layer.perm.gaussian.std            = defaults.DEFAULT_ROCK_LAYER_PERM_GAUSSIAN_STD;
            task.params.rock.layer.perm.directional             = defaults.DEFAULT_ROCK_LAYER_PERM_DIRECTIONAL;
            
            task.params.rock.global.density.type            = defaults.DEFAULT_ROCK_GLOBAL_DENSITY_TYPE;
            task.params.rock.global.density.uniform         = defaults.DEFAULT_ROCK_GLOBAL_DENSITY_UNIFORM;        
            task.params.rock.global.density.gaussian.min    = defaults.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_MIN;
            task.params.rock.global.density.gaussian.max    = defaults.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_MAX;
            task.params.rock.global.density.gaussian.std    = defaults.DEFAULT_ROCK_GLOBAL_DENSITY_GAUSSIAN_STD;
            task.params.rock.layer.density.type             = defaults.DEFAULT_ROCK_LAYER_DENSITY_TYPE;
            task.params.rock.layer.density.uniform          = defaults.DEFAULT_ROCK_LAYER_DENSITY_UNIFORM;        
            task.params.rock.layer.density.gaussian.min     = defaults.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_MIN;
            task.params.rock.layer.density.gaussian.max     = defaults.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_MAX;
            task.params.rock.layer.density.gaussian.std     = defaults.DEFAULT_ROCK_LAYER_DENSITY_GAUSSIAN_STD;
            
            task.params.rock.global.thermalCond.type            = defaults.DEFAULT_ROCK_GLOBAL_THERMAL_COND_TYPE;
            task.params.rock.global.thermalCond.uniform         = defaults.DEFAULT_ROCK_GLOBAL_THERMAL_COND_UNIFORM;        
            task.params.rock.global.thermalCond.gaussian.min    = defaults.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_MIN;
            task.params.rock.global.thermalCond.gaussian.max    = defaults.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_MAX;
            task.params.rock.global.thermalCond.gaussian.std    = defaults.DEFAULT_ROCK_GLOBAL_THERMAL_COND_GAUSSIAN_STD;
            task.params.rock.layer.thermalCond.type             = defaults.DEFAULT_ROCK_LAYER_THERMAL_COND_TYPE;
            task.params.rock.layer.thermalCond.uniform          = defaults.DEFAULT_ROCK_LAYER_THERMAL_COND_UNIFORM;        
            task.params.rock.layer.thermalCond.gaussian.min     = defaults.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_MIN;
            task.params.rock.layer.thermalCond.gaussian.max     = defaults.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_MAX;
            task.params.rock.layer.thermalCond.gaussian.std     = defaults.DEFAULT_ROCK_LAYER_THERMAL_COND_GAUSSIAN_STD;
            
            task.params.rock.global.heatCapacity.type           = defaults.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_TYPE;
            task.params.rock.global.heatCapacity.uniform        = defaults.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_UNIFORM;        
            task.params.rock.global.heatCapacity.gaussian.min   = defaults.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_MIN;
            task.params.rock.global.heatCapacity.gaussian.max   = defaults.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_MAX;
            task.params.rock.global.heatCapacity.gaussian.std   = defaults.DEFAULT_ROCK_GLOBAL_HEAT_CAPACITY_GAUSSIAN_STD;
            task.params.rock.layer.heatCapacity.type            = defaults.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_TYPE;
            task.params.rock.layer.heatCapacity.uniform         = defaults.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_UNIFORM; 
            task.params.rock.layer.heatCapacity.gaussian.min    = defaults.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_MIN;
            task.params.rock.layer.heatCapacity.gaussian.max    = defaults.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_MAX;
            task.params.rock.layer.heatCapacity.gaussian.std    = defaults.DEFAULT_ROCK_LAYER_HEAT_CAPACITY_GAUSSIAN_STD;

            % Fluid
            task.params.fluid.useEOS            = defaults.DEFAULT_FLUID_USE_EOS;
            task.params.fluid.density           = defaults.DEFAULT_FLUID_DENSITY;
            task.params.fluid.viscosity         = defaults.DEFAULT_FLUID_VISCOSITY;
            task.params.fluid.gravity.enabled   = defaults.DEFAULT_FLUID_GRAVITY_ENABLE;
            task.params.fluid.gravity.vector    = defaults.DEFAULT_FLUID_GRAVITY_VECTOR;
            task.params.fluid.heatCapacity      = defaults.DEFAULT_FLUID_HEAT_CAPACITY;
            task.params.fluid.thermalCond       = defaults.DEFAULT_FLUID_THERMAL_COND;

            % BC
            task.params.bc.thermalType      = defaults.DEFAULT_BC_THERMAL_TYPE;
            task.params.bc.visualization    = defaults.DEFAULT_BC_VISUALIZATION;
            task.params.bc.enable           = defaults.DEFAULT_BC_ENABLED;
            task.params.bc.type             = defaults.DEFAULT_BC_TYPE;
            task.params.bc.pressure         = defaults.DEFAULT_BC_PRESSURE;
            task.params.bc.flux             = defaults.DEFAULT_BC_FLUX;
            task.params.bc.temperature      = defaults.DEFAULT_BC_TEMPERATURE;
            task.params.bc.heatFlux         = defaults.DEFAULT_BC_HEAT_FLUX;

            % Reservoir
            task.params.reservoir.pressure          = defaults.DEFAULT_RESERVOIR_PRESSURE;
            task.params.reservoir.temperature       = defaults.DEFAULT_RESERVOIR_TEMPERATURE;

            % Wells
            task.params.wells.inj.name                  = defaults.DEFAULT_WELLS_INJ_NAME;
            task.params.wells.inj.radius                = defaults.DEFAULT_WELLS_INJ_RADIUS;
            task.params.wells.inj.control.type          = defaults.DEFAULT_WELLS_INJ_CONTROL_TYPE;
            task.params.wells.inj.control.rate          = defaults.DEFAULT_WELLS_INJ_CONTROL_RATE;
            task.params.wells.inj.control.pressure      = defaults.DEFAULT_WELLS_INJ_CONTROL_PRESSURE;
            task.params.wells.inj.temperature           = defaults.DEFAULT_WELLS_INJ_TEMPERATURE;
            task.params.wells.inj.point                 = defaults.DEFAULT_WELLS_INJ_BOTTOM_POINT;
            
            task.params.wells.prod.name             = defaults.DEFAULT_WELLS_PROD_NAME;
            task.params.wells.prod.radius           = defaults.DEFAULT_WELLS_PROD_RADIUS;
            task.params.wells.prod.control.type     = defaults.DEFAULT_WELLS_PROD_CONTROL_TYPE;
            task.params.wells.prod.control.rate     = defaults.DEFAULT_WELLS_PROD_CONTROL_RATE;
            task.params.wells.prod.control.pressure = defaults.DEFAULT_WELLS_PROD_CONTROL_PRESSURE;
            task.params.wells.prod.point            = defaults.DEFAULT_WELLS_PROD_BOTTOM_POINT;
            
            % Simulation
            task.params.simulation.endTime                   = defaults.DEFAULT_SIMULATION_END_TIME;
            task.params.simulation.timestep                  = defaults.DEFAULT_SIMULATION_TIMESTEP;
            task.params.simulation.timestepType              = defaults.DEFAULT_SIMULATION_TIMESTEP_TYPE;
            task.params.simulation.timeRampupSteps           = defaults.DEFAULT_SIMULATION_TIME_RAMPUP_STEPS;
            task.params.simulation.pressureLimits            = defaults.DEFAULT_SIMULATION_PRESSURE_LIMITS;
            task.params.simulation.temperatureLimits         = defaults.DEFAULT_SIMULATION_TEMPERATURE_LIMITS;
            task.params.simulation.initializeWithEquilibrium = defaults.DEFAULT_SIMULATION_INITIALIZE_WITH_EQUILIBRIUM;
            task.params.simulation.equilibriumTime           = defaults.DEFAULT_SIMULATION_EQUILIBRIUM_TIME;
        end
        
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                   Property Build Methods                    %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function task = buildGrid(task)
            %BUILDGRID Build the internal grid model.
            %   The GridWrapper object is derived from grid parameters,
            %   MRST grid building is done and the resulting grid model is
            %   added to the internal model struct.
            arguments
                task Task
            end

            task.model.grid = GridWrapper(dims=task.params.grid.global.dims, ...
                                          size=task.params.grid.global.size, ...
                                          depth=task.params.grid.global.depth);
            task.model.grid = task.model.grid.computeGeometry();
        end

        function task = buildLayer(task)
            %BUILDLAYER Build the internal layer model.
            %   The Layer object is derived from layer parameters and added
            %   to the internal model struct. Requires the grid model to be
            %   present.
            arguments
                task Task
            end
            if ~task.params.grid.layer.enable
                task.model.layer = nan;
                return;
            end
            task.validateGridModel();
            task.model.layer = Layer(task.params.grid.layer.point, ...
                                     task.model.grid, ...
                                     task.params.grid.layer.thickness, ...
                                     deg2rad(task.params.grid.layer.angles));
        end

        function task = buildRock(task)
            %BUILDROCK Build the internal rock model.
            %   The rock object is derived from rock parameters and added
            %   to the internal model struct. Requires both the grid and 
            %   (if applicable) the layer model to be present.

            task.validateGridModel();

            task.model.rock = RockWrapper(task.model.grid);

            % Porosity
            switch task.params.rock.global.porosity.type
                case 'uniform'
                    value = task.params.rock.global.porosity.uniform;
                    task.model.rock = task.model.rock.setProperty('porosity', value);
                case 'gaussian'
                    min = task.params.rock.global.porosity.gaussian.min;
                    max = task.params.rock.global.porosity.gaussian.max;
                    std = task.params.rock.global.porosity.gaussian.std;
                    task.model.rock = task.model.rock.setPropertyGaussian('porosity', min, max, std);
            end

            % Permeability
            switch task.params.rock.global.perm.type
                case 'uniform'
                    value = task.params.rock.global.perm.uniform;
                    task.model.rock = task.model.rock.setProperty('permeability', value);
                case 'gaussian'
                    min = task.params.rock.global.perm.gaussian.min;
                    max = task.params.rock.global.perm.gaussian.max;
                    std = task.params.rock.global.perm.gaussian.std;
                    task.model.rock = task.model.rock.setPropertyGaussian('permeability', min, max, std);
                case 'directional'
                    values = task.params.rock.global.perm.directional;
                    task.model.rock = task.model.rock.setPropertyDirectional('permeability', values);
            end

            % Density
            switch task.params.rock.global.density.type
                case 'uniform'
                    value = task.params.rock.global.density.uniform;
                    task.model.rock = task.model.rock.setProperty('density', value);
                case 'gaussian'
                    min = task.params.rock.global.density.gaussian.min;
                    max = task.params.rock.global.density.gaussian.max;
                    std = task.params.rock.global.density.gaussian.std;
                    task.model.rock = task.model.rock.setPropertyGaussian('density', min, max, std);
            end

            % Thermal conductivity
            switch task.params.rock.global.thermalCond.type
                case 'uniform'
                    value = task.params.rock.global.thermalCond.uniform;
                    task.model.rock = task.model.rock.setProperty('thermalCond', value);
                case 'gaussian'
                    min = task.params.rock.global.thermalCond.gaussian.min;
                    max = task.params.rock.global.thermalCond.gaussian.max;
                    std = task.params.rock.global.thermalCond.gaussian.std;
                    task.model.rock = task.model.rock.setPropertyGaussian('thermalCond', min, max, std);
            end

            % Specific heat capacity
            switch task.params.rock.global.heatCapacity.type
                case 'uniform'
                    value = task.params.rock.global.heatCapacity.uniform;
                    task.model.rock = task.model.rock.setProperty('heatCapacity', value);
                case 'gaussian'
                    min = task.params.rock.global.heatCapacity.gaussian.min;
                    max = task.params.rock.global.heatCapacity.gaussian.max;
                    std = task.params.rock.global.heatCapacity.gaussian.std;
                    task.model.rock = task.model.rock.setPropertyGaussian('heatCapacity', min, max, std);
            end

            if ~task.params.grid.layer.enable
                % Layer not enabled
                return
            end
            task.validateLayerModel();
            
            % Layer porosity
            switch task.params.rock.layer.porosity.type
                case 'uniform'
                    value = task.params.rock.layer.porosity.uniform;
                    task.model.rock = task.model.rock.setLayerProperty(task.model.layer, 'porosity', value);
                case 'gaussian'
                    min = task.params.rock.layer.porosity.gaussian.min;
                    max = task.params.rock.layer.porosity.gaussian.max;
                    std = task.params.rock.layer.porosity.gaussian.std;
                    task.model.rock = task.model.rock.setLayerPropertyGaussian(task.model.layer, 'porosity', min, max, std);
            end

            % Layer permeability
            switch task.params.rock.layer.perm.type
                case 'uniform'
                    value = task.params.rock.layer.perm.uniform;
                    task.model.rock = task.model.rock.setLayerProperty(task.model.layer, 'permeability', value);
                case 'gaussian'
                    min = task.params.rock.layer.perm.gaussian.min;
                    max = task.params.rock.layer.perm.gaussian.max;
                    std = task.params.rock.layer.perm.gaussian.std;
                    task.model.rock = task.model.rock.setLayerPropertyGaussian(task.model.layer, 'permeability', min, max, std);
                case 'directional'

            end

            % Layer density
            switch task.params.rock.layer.density.type
                case 'uniform'
                    value = task.params.rock.layer.density.uniform;
                    task.model.rock = task.model.rock.setLayerProperty(task.model.layer, 'density', value);
                case 'gaussian'
                    min = task.params.rock.layer.density.gaussian.min;
                    max = task.params.rock.layer.density.gaussian.max;
                    std = task.params.rock.layer.density.gaussian.std;
                    task.model.rock = task.model.rock.setLayerPropertyGaussian(task.model.layer, 'density', min, max, std);
            end

            % Layer thermal conductivity
            switch task.params.rock.layer.thermalCond.type
                case 'uniform'
                    value = task.params.rock.layer.thermalCond.uniform;
                    task.model.rock = task.model.rock.setLayerProperty(task.model.layer, 'thermalCond', value);
                case 'gaussian'
                    min = task.params.rock.layer.thermalCond.gaussian.min;
                    max = task.params.rock.layer.thermalCond.gaussian.max;
                    std = task.params.rock.layer.thermalCond.gaussian.std;
                    task.model.rock = task.model.rock.setLayerPropertyGaussian(task.model.layer, 'thermalCond', min, max, std);
            end

            % Layer specific heat capacity
            switch task.params.rock.layer.heatCapacity.type
                case 'uniform'
                    value = task.params.rock.layer.heatCapacity.uniform;
                    task.model.rock = task.model.rock.setLayerProperty(task.model.layer, 'heatCapacity', value);
                case 'gaussian'
                    min = task.params.rock.layer.heatCapacity.gaussian.min;
                    max = task.params.rock.layer.heatCapacity.gaussian.max;
                    std = task.params.rock.layer.heatCapacity.gaussian.std;
                    task.model.rock = task.model.rock.setLayerPropertyGaussian(task.model.layer, 'heatCapacity', min, max, std);
            end
        end

        function task = buildWells(task)
            %BUILDWELLS Build the internal wells model.
            %   The wells object is derived from well parameters and added
            %   to the internal model struct. Requires both the grid and 
            %   rock model to be present.
            arguments
                task Task
            end
            
            task.validateGridModel();
            task.validateRockModel();
            
            task.model.wells = WellsWrapper(task.model.grid, task.model.rock);

            % Injector
            switch task.params.wells.inj.control.type
                case 'rate'
                    operatingValue = task.params.wells.inj.control.rate;
                case 'bhp'
                    operatingValue = task.params.wells.inj.control.pressure;
            end
            task.model.wells = task.model.wells.addVerticalWell( ...
                task.params.wells.inj.point, task.params.wells.inj.radius, ...
                task.params.wells.inj.name, type='inj', ...
                operatingCondition=task.params.wells.inj.control.type, ...
                operatingValue=operatingValue, ...
                temperature=task.params.wells.inj.temperature, color='b');
            
            % Producer
            switch task.params.wells.prod.control.type
                case 'rate'
                    operatingValue = task.params.wells.prod.control.rate;
                case 'bhp'
                    operatingValue = task.params.wells.prod.control.pressure;
            end
            task.model.wells = task.model.wells.addVerticalWell( ...
                task.params.wells.prod.point, ...
                task.params.wells.prod.radius, task.params.wells.prod.name, ...
                type='prod', ...
                operatingCondition=task.params.wells.prod.control.type, ...
                operatingValue=operatingValue, color='r');

            task.model.wells = task.model.wells.updateThermalProperties();
        end

        function task = buildBCs(task)
            %BUILDBCS Build the internal BC model.
            %   The BC object is derived from BC parameters and added to
            %   the internal model struct. Requires the grid model to be 
            %   present.
            arguments
                task Task
            end

            task.validateGridModel();

            task.model.bc = BCWrapper(task.model.grid);

            sides = ["xMin", "xMax", "yMin", "yMax", "zMin", "zMax"];

            for i = 1:size(sides, 2)
                if ~task.params.bc.enable(i)
                    continue
                end
                
                pressure = task.params.bc.pressure(i);
                flux = task.params.bc.flux(i);
                temperature = task.params.bc.temperature(i);
                heatFlux = task.params.bc.heatFlux(i);
                
                switch task.params.bc.type{i}

                    case 'pressure'
                        switch task.params.bc.thermalType
                            case 'temperature'
                                % Pressure and temperature given
                                task.model.bc = task.model.bc.addSide(sides(i), ...
                                    pressure=pressure, temperature=temperature);
                            case 'heat_flux'
                                % Pressure and heat flux given
                                task.model.bc = task.model.bc.addSide(sides(i), ...
                                    pressure=pressure, heatFlux=heatFlux);
                        end

                    case 'flux'

                        switch task.params.bc.thermalType
                            case 'temperature'
                                % Flux and temperature given
                                task.model.bc = task.model.bc.addSide(sides(i), flux=flux, temperature=temperature);
                            case 'heat_flux'
                                % Flux and heat flux given
                                task.model.bc = task.model.bc.addSide(sides(i), flux=flux, heatFlux=heatFlux);
                        end

                end          
            end
        end

        function task = buildFluid(task)
            %BUILDWELLS Build the internal fluid model.
            %   The fluid object is derived from fluid parameters and added
            %   to the internal model struct.
            arguments
                task Task
            end

            task.model.fluid = FluidWrapper(task.params.fluid.heatCapacity, ...
                                     task.params.fluid.thermalCond, ...
                                     task.params.fluid.density, ...
                                     task.params.fluid.viscosity, ...
                                     task.params.fluid.useEOS);
        end

        function task = buildReservoir(task)
            %BUILDRESERVOIR Initializes the internal reservoir state model.
            %   The reservoir state object is derived from reservoir
            %   parameters and added to the internal model struct. Requires
            %   the grid model to be present.
            arguments
                task Task
            end

            task.validateGridModel();

            task.model.reservoir = ReservoirWrapper(task.model.grid, task.params.reservoir.pressure, task.params.reservoir.temperature);
        end
        
        function task = buildModel(task, statusMessageFcn)
            %BUILDMODEL Build the complete task model.
            %   The complete task model is built from internal parameters.
            %   
            %   OPTIONAL ARGUMENTS
            %    statusMessageFcn   ->  Handle to a function which accepts
            %                           string messages. This function is
            %                           called whenever a step of the model
            %                           building process is completed.
            arguments
                task Task
                statusMessageFcn = @null;
            end

            statusMessageFcn("Building grid.")
            pause(.5)
            task = task.buildGrid();

            statusMessageFcn("Building layer.")
            pause(.5)
            task = task.buildLayer();
            
            statusMessageFcn("Building rock.")
            pause(.5)
            task = task.buildRock();
            
            statusMessageFcn("Building fluid.")
            pause(.5)
            task = task.buildFluid();
            
            statusMessageFcn("Building BCs.")
            pause(.5)
            task = task.buildBCs();
            
            statusMessageFcn("Initializing reservoir.")
            pause(.5)
            task = task.buildReservoir();
            
            statusMessageFcn("Adding wells.")
            pause(.5)
            task = task.buildWells();         
      
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                    Visualization Methods                    %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function visualizeGrid(task, ax)
            %VISUALIZEGRID Shows a plot of the internal grid.
            %   Create a plot visualizing the grid structure. Requires the
            %   internal grid and (if applicable) layer model to be
            %   present.
            %   
            %   ARGUMENTS
            %    ax   ->  Target axes for grid plot.
            arguments
                task Task
                ax matlab.ui.control.UIAxes
            end
            
            task.validateGridModel();

            task.model.grid.plot(ax);
            if task.params.grid.layer.enable
                task.validateLayerModel();
                task.model.grid.plotWithHighlightedCells(task.model.layer.cells, ax, plotGrid=false);
            end
        end

        function visualizeRock(task, ax)
            %VISUALIZEROCK Shows a plot of rock properties.
            %   Create a plot visualizing the rock properties. Requires the
            %   internal grid and (if applicable) layer model to be
            %   present.
            %   
            %   ARGUMENTS
            %    ax   ->  Target axes for grid plot.
            arguments
                task Task
                ax matlab.ui.control.UIAxes
            end

            task.validateGridModel();
            task.validateRockModel();

            task.model.grid.plot(ax);
            if task.params.rock.visualization.layerOnly && task.params.grid.layer.enable
                % Layer only
                task.validateLayerModel();
                switch task.params.rock.visualization.property
                    case 'porosity'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'porosity', 'highlightedCells', task.model.layer.getCellsOfLayer());
                    case 'permeability'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'permeability', 'highlightedCells', task.model.layer.getCellsOfLayer());
                    case 'density'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'density', 'highlightedCells', task.model.layer.getCellsOfLayer());
                    case 'thermal_cond'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'thermConductivity', 'highlightedCells', task.model.layer.getCellsOfLayer());
                    case 'heat_capacity'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'heatCapacity', 'highlightedCells', task.model.layer.getCellsOfLayer());
                end
            else
                % Global grid
                switch task.params.rock.visualization.property
                    case 'porosity'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'porosity');
                    case 'permeability'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'permeability');
                    case 'density'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'density');
                    case 'thermal_cond'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'thermConductivity');
                    case 'heat_capacity'
                        task.model.grid.plotRockData(task.model.rock, ax, 'variable', 'heatCapacity');
                end
            end
        end

        function visualizeWells(task, ax, wellLabelHeight)
            %VISUALIZEWELLS Shows a plot of the wells on the grid.
            %   Create a plot visualizing the rock properties. Requires the
            %   internal grid and wells model to be present.
            %   
            %   ARGUMENTS
            %    ax                 ->  Target axes for grid plot.
            %
            %   OPTIONAL ARGUMENTS
            %    wellLabelHeight    ->  Height of well label above top of
            %                           grid in absolute length units.
            arguments
                task Task
                ax matlab.ui.control.UIAxes
                wellLabelHeight = 0.4 * task.params.grid.global.size(3);
            end

            task.validateGridModel();
            task.validateWellsModel();

            task.model.grid.plot(ax);
            task.model.grid.plotWells(task.model.wells, ax, labelHeight=wellLabelHeight);
        end

        function visualizeBCs(task, ax)
            %VISUALIZEBCS Shows a plot of boundary conditions on the grid.
            %   Create a plot visualizing the boundary condition. Requires
            %   the internal grid and BC model to be present.
            %   
            %   ARGUMENTS
            %    ax                 ->  Target axes for grid plot.
            arguments
                task Task
                ax matlab.ui.control.UIAxes
            end
            
            task.validateGridModel();
            task.validateBCsModel();

            task.model.grid.plot(ax);
            if any(task.params.bc.enable)
                % At leat one BC is enabled
                switch task.params.bc.visualization
                    case 'hydraulic'
                        task.model.grid.plotBCs(ax, task.model.bc, plotGrid=false);
                    case 'thermal'
                        task.model.grid.plotThermalBCs(ax, task.model.bc, plotGrid=false);
                end
            end
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                  Rapid Calculation Methods                  %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function number = getNumberOfCells(task)
            %GETNUMBEROFCELLS Returns the number of cells of the grid model.
            arguments
                task Task
            end
            number = prod(task.params.grid.global.dims);
        end

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                     Auxiliary Functions                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function task = clearModel(task)
            %CLEARMODEL Delete all models of the Task.
            arguments
                task Task
            end
            task.model.grid = [];
            task.model.layer = [];
            task.model.rock = [];
            task.model.wells = [];
            task.model.bc = [];
            task.model.fluid = [];
            task.model.reservoir = [];
        end

        function result = modelReady(task)
            %MODELREADY Check if all models are built.
            %   
            %   RETURNS
            %    result ->  True if all models are built, false otherwise.
            arguments
                task Task
            end
             result = ~anyFieldEmpty(task.model);
        end

        function task = updateParentDirName(task, datetimeFormat)
            %UPDATEPARENTDIRNAME Update the parent directory name.
            %   
            %   ARGUMENTS
            %    datetimeFormat ->  Format of datetime used for task
            %                       directory naming.
            arguments
                task Task
                datetimeFormat
            end

            storageDatetimeStr = datestr(task.generic.created, datetimeFormat);
            task.generic.parentDirName = ['Task_' storageDatetimeStr];
        end    

        function resultHandler = getResultHandler(task)
            %GETRESULTHANDLER Get the MRST ResultHandler for this Task.
            %   Creates the ResultHandler based on files in the Task
            %   results folder.
            %   
            %   RETURNS
            %    resultHandler  ->  MRST ResultHandler for given Task.
            arguments
                task Task
            end

            resultsDir = fullfile(getenv('APPDATA'), 'DeepGeoDoublet', 'tasks', task.generic.parentDirName);
            resultHandler = ResultHandler('dataDirectory', resultsDir, 'dataFolder', 'results');
        end

        function dataAvailable = storedDataAvailable(task)
            %STOREDDATAAVAILABLE Check if results are stored for this Task.
            %   
            %   RETURNS
            %    dataAvailable  ->  True if results are stored on disk.
            resultHandler = task.getResultHandler();
            dataAvailable = size(resultHandler.getValidIds, 2) > 0;
        end

        function clearData(task)
            resultHandler = task.getResultHandler();
            resultHandler.resetData();
        end
    end

    methods (Access = private)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                      Private Functions                      %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function validateGridModel(task)
            if isempty(task.model.grid)
                error('Grid model of task missing. Call buildGrid() first.');
            end
        end
        function validateLayerModel(task)
            if isempty(task.model.grid)
                error('Layer model of task missing. Call buildLayer() first.');
            end
        end
        function validateRockModel(task)
            if isempty(task.model.rock)
                error('Rock model of task missing. Call buildRock() first.');
            end
        end
        function validateWellsModel(task)
            if isempty(task.model.wells)
                error('Wells model of task missing. Call buildWells() first.');
            end
        end
        function validateBCsModel(task)
            if isempty(task.model.bc)
                error('BC model of task missing. Call buildBCs() first.');
            end
        end
    end
end
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
