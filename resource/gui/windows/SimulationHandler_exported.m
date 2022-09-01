classdef SimulationHandler_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SimulationHandlerUIFigure     matlab.ui.Figure
        ClearResultsButton            matlab.ui.control.Button
        ResultsPanel                  matlab.ui.container.Panel
        TimestepsTableButton          matlab.ui.control.Button
        ReservoirProfileViewerButton  matlab.ui.control.Button
        MRSTWellDataPlotButton        matlab.ui.control.Button
        MRSTReservoirAnalyzerButton   matlab.ui.control.Button
        InfoLabel                     matlab.ui.control.Label
        RunButton                     matlab.ui.control.Button
        QuitButton                    matlab.ui.control.Button
        TaskMetadataPanel             matlab.ui.container.Panel
        TaskNotesTextArea             matlab.ui.control.TextArea
        NotesTextAreaLabel            matlab.ui.control.Label
        TaskCreatedEditField          matlab.ui.control.EditField
        CreatedEditFieldLabel         matlab.ui.control.Label
        TaskNameEditField             matlab.ui.control.EditField
        CurrentNameLabel              matlab.ui.control.Label
        SimulationLogPanel            matlab.ui.container.Panel
        StoreResultsOnDiskCheckBox    matlab.ui.control.CheckBox
        ResultsAvailableOnDiskLamp    matlab.ui.control.Lamp
        GridsizewarningLabel          matlab.ui.control.Label
        StatusEditField               matlab.ui.control.EditField
        StatusEditFieldLabel          matlab.ui.control.Label
        LoggingUITable                matlab.ui.control.Table
    end

    
    properties (Access = private)
        callingApp % Description
        globalVars
        globalConsts
        task Task
        resultHandler ResultHandler
        state ProcessorState
        reservoirAnalyzerFigure
        wellDataPlotFigure
        timestepsTableFigure
    end
    
    methods (Access = private)

        function closeApp(app)
            switch app.state
                case {ProcessorState.RUNNING, ProcessorState.PREPROCESSING, ProcessorState.POSTPROCESSING}
                    messageDialog(app.SimulationHandlerUIFigure, "Simulation is currently running. Execution can only be aborted via MRST Simulation Panel.", "Simulation Running", DialogType.ERROR)
                    return;
            end
            app.closeSubfigures();
            app.callingApp.showApp();
            app.delete();       
        end
        
        function loadTaskParams(app)
            app.TaskNameEditField.Value = app.task.generic.name;
            app.TaskNotesTextArea.Value = str2cells(app.task.generic.notes);
            app.TaskCreatedEditField.Value = datestr(app.task.generic.created, app.globalVars.DISPLAY_DATETIME_FORMAT);
        end
        
        function executeTask(app)

            if app.task.storedDataAvailable()   
                if overwriteExistingResultsDialog(app.SimulationHandlerUIFigure) == "No"
                    return;
                end
            end

            app.closeSubfigures();

            app.state = ProcessorState.PREPROCESSING;
            app.updateComponentStates();
            
            app.appendLogMessage('STARTING SIMULATION PROCESS');
            app.appendLogMessage('This may take a while. Brew yourself some coffee.');

            % PREPROCESSING
            
            app.appendLogMessage('PREPROCESSING.');
            app.appendLogMessage('Removing old data.');
            app.task.clearData();
            app.task = app.task.buildModel(@app.appendLogMessage);
            app.appendLogMessage('PREPROCESSING DONE.');

            % RUNNING
            app.state = ProcessorState.RUNNING;
            app.updateComponentStates();
            app.appendLogMessage('MRST SIMULATION.');
            try
                app.resultHandler = processTask(app.task, @app.appendLogMessage, app.StoreResultsOnDiskCheckBox.Value);
            catch e
                beep on; beep; % Play alert sound
                app.state = ProcessorState.ERROR;
                app.updateComponentStates();
                switch e.identifier
                    case 'TaskProcessor:NoSolution'
                        app.appendLogMessage("Error: No solution found after timestep reduction. Check input and thresholds.");
                    case 'TaskProcessor:NoInitialEquilibriumSolution'
                        app.appendLogMessage("Error: No solution found after timestep reduction. Check input and thresholds.");
                    case 'TaskProcessor:InvalidPoreVolume'
                        app.appendLogMessage("Error: Pore volume zero or negative. Calculations with zero pore volume are currently not supported.");
                    otherwise
                        app.appendLogMessage("Error: Unknown error. See global runtime log and report issue.");
                        beep off;
                        rethrow(e);
                end
                return
            end
            app.appendLogMessage('MRST SIMULATION DONE.');

            % DONE
            app.state = ProcessorState.DONE;
            app.updateComponentStates();
            app.appendLogMessage('TASK COMPLETED.');
            
        end

        function updateComponentStates(app)
            app.StatusEditField.Value = app.state.label;
            app.StatusEditField.BackgroundColor = app.state.color;
            switch app.state
                case ProcessorState.READY
                    app.RunButton.Enable = "on";
                    app.QuitButton.Enable = "on";
                    app.StoreResultsOnDiskCheckBox.Enable = "on";
                    app.updateResultComponents();
                case {ProcessorState.PREPROCESSING, ProcessorState.POSTPROCESSING}
                    app.RunButton.Enable = "off";
                    app.QuitButton.Enable = "off";
                    app.turnLampOff(app.ResultsAvailableOnDiskLamp);
                    app.StoreResultsOnDiskCheckBox.Enable = "off";
                    app.disableResultComponents();
                case ProcessorState.RUNNING
                    app.RunButton.Enable = "off";
                    app.QuitButton.Enable = "off";
                    app.StoreResultsOnDiskCheckBox.Enable = "off";
                    app.turnLampOff(app.ResultsAvailableOnDiskLamp);
                    app.disableResultComponents();
                case ProcessorState.ERROR
                    app.RunButton.Enable = "on";
                    app.QuitButton.Enable = "on";
                    app.StoreResultsOnDiskCheckBox.Enable = "on";
                    app.updateResultComponents();
                case ProcessorState.DONE
                    app.RunButton.Enable = "on";
                    app.QuitButton.Enable = "on";
                    app.StoreResultsOnDiskCheckBox.Enable = "on";
                    app.updateResultComponents();
            end
        end

        function updateResultComponents(app)
            if app.task.storedDataAvailable() || ~isempty(app.resultHandler.data)
                app.MRSTReservoirAnalyzerButton.Enable = "on";
                app.MRSTWellDataPlotButton.Enable = "on";
                app.TimestepsTableButton.Enable = "on";
                app.turnLampOnOK(app.ResultsAvailableOnDiskLamp);    
                app.ClearResultsButton.Enable = "on";
            else
                app.MRSTReservoirAnalyzerButton.Enable = "off";
                app.MRSTWellDataPlotButton.Enable = "off";
                app.TimestepsTableButton.Enable = "off";
                app.turnLampOff(app.ResultsAvailableOnDiskLamp);
                app.ClearResultsButton.Enable = "off";
            end
        end

        function disableResultComponents(app)
            app.MRSTReservoirAnalyzerButton.Enable = "off";
            app.MRSTWellDataPlotButton.Enable = "off";
            app.TimestepsTableButton.Enable = "off";
        end

        function appendLogMessage(app, message)
            tableData = app.LoggingUITable.Data;
            logDatetime = datestr(datetime, app.globalVars.DEFAULT_LOG_MESSAGE_DATETIME_FORMAT);
            message = convertStringsToChars(message); % Convert to char array if message has string format
            tableData = [tableData; {logDatetime, message}];
            app.LoggingUITable.Data = tableData;
            app.LoggingUITable.scroll("bottom");
            app.updateLogTableStyle();
            %pause(.1);
        end

        function updateLogTableStyle(app)
            tableData = app.LoggingUITable.Data;
            [warningRow, ~] = find(contains(tableData, 'warning', IgnoreCase=true));
            [errorRow, ~] = find(contains(tableData, 'error', IgnoreCase=true));
            warningStyle = uistyle("BackgroundColor", [1 1 0]);
            errorStyle = uistyle("BackgroundColor", [1 0 0]);
            addStyle(app.LoggingUITable, warningStyle, "row", warningRow);
            addStyle(app.LoggingUITable, errorStyle, "row", errorRow);
        end

        % Lamps
        function turnLampOff(app, lamp)
            lamp.Color = app.globalConsts.LAMP_OFF_COLOR;
        end
        function turnLampOnOK(app, lamp)
            lamp.Color = app.globalConsts.LAMP_OK_COLOR;
        end
        function turnLampOnWarning(app, lamp)
            lamp.Color = app.globalConsts.LAMP_WARNING_COLOR;
        end

        function prepareTaskModelForResults(app)
            if ~app.task.modelReady()
                app.state = ProcessorState.POSTPROCESSING;
                app.updateComponentStates();
                app.appendLogMessage("Task model not available. Building...")
                app.task = app.task.buildModel(@app.appendLogMessage);
                app.appendLogMessage("Done.")
                app.state = ProcessorState.DONE;
                app.updateComponentStates();
            end
        end

        function closeSubfigures(app)
            if ishandle(app.reservoirAnalyzerFigure)
                close(app.reservoirAnalyzerFigure);
            end 
            if ishandle(app.wellDataPlotFigure)
                close(app.wellDataPlotFigure);
            end
            if ishandle(app.timestepsTableFigure)
                close(app.timestepsTableFigure);
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, callingApp, task)
            arguments
                app SimulationHandler
                callingApp DeepGeoDoublet
                task Task
            end

            % Calling app 
            app.callingApp = callingApp;
            app.callingApp.hideApp();

            % Load global veriables and constants
            app.globalVars = callingApp.globalVars;
            app.globalConsts = callingApp.globalConsts;

            app.task = task;
            app.resultHandler = task.getResultHandler();

            app.loadTaskParams();

            % Set version and copyright notice
            labelStr = sprintf("Version %s\nCopyright (C) %s %s", ...
                app.globalConsts.VERSION, ...
                app.globalConsts.YEAR, ...
                app.globalConsts.AUTHOR_LASTNAME);
            app.InfoLabel.Text = labelStr;

            app.state = ProcessorState.READY;
            app.updateComponentStates();
            
            if storedDataAvailable(app.resultHandler)
                app.appendLogMessage('Existing simulation result set found on disk.')
            end

            app.appendLogMessage('Ready to run simulation.')
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            app.executeTask();
        end

        % Button pushed function: QuitButton
        function QuitButtonPushed(app, event)
            app.closeApp();
        end

        % Close request function: SimulationHandlerUIFigure
        function SimulationHandlerUIFigureCloseRequest(app, event)
            app.closeApp();
        end

        % Button pushed function: MRSTReservoirAnalyzerButton
        function MRSTReservoirAnalyzerButtonPushed(app, event)
            if ishandle(app.reservoirAnalyzerFigure)
                % Figure already opened
                return;
            end
            app.prepareTaskModelForResults();
            app.reservoirAnalyzerFigure = plotAnimatedReservoir(app.task, app.resultHandler);
        end

        % Button pushed function: MRSTWellDataPlotButton
        function MRSTWellDataPlotButtonPushed(app, event)
            if ishandle(app.wellDataPlotFigure)
                % Figure already opened
                return;
            end
            app.prepareTaskModelForResults();
            if app.task.params.simulation.initializeWithEquilibrium
                offset = app.task.params.simulation.equilibriumTime;
            else
                offset = 0;
            end
            app.wellDataPlotFigure = plotWellSolutionData(app.resultHandler, offset);
        end

        % Button pushed function: TimestepsTableButton
        function TimestepsTableButtonPushed(app, event)
            if ishandle(app.timestepsTableFigure)
                % Figure already opened
                return;
            end
            if app.task.params.simulation.initializeWithEquilibrium
                offset = app.task.params.simulation.equilibriumTime;
            else
                offset = 0;
            end
            app.timestepsTableFigure = getTimestepsTable(app.resultHandler, offset);
        end

        % Button pushed function: ClearResultsButton
        function ClearResultsButtonPushed(app, event)
            if clearResultsDialog(app.SimulationHandlerUIFigure) == "Yes"
                app.task.clearData();
                app.resultHandler = app.task.getResultHandler();
                app.updateResultComponents();
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create SimulationHandlerUIFigure and hide until all components are created
            app.SimulationHandlerUIFigure = uifigure('Visible', 'off');
            app.SimulationHandlerUIFigure.Position = [100 100 948 630];
            app.SimulationHandlerUIFigure.Name = 'Simulation Handler';
            app.SimulationHandlerUIFigure.CloseRequestFcn = createCallbackFcn(app, @SimulationHandlerUIFigureCloseRequest, true);

            % Create SimulationLogPanel
            app.SimulationLogPanel = uipanel(app.SimulationHandlerUIFigure);
            app.SimulationLogPanel.Title = 'Simulation Log';
            app.SimulationLogPanel.Position = [30 72 890 352];

            % Create LoggingUITable
            app.LoggingUITable = uitable(app.SimulationLogPanel);
            app.LoggingUITable.ColumnName = '';
            app.LoggingUITable.ColumnWidth = {150};
            app.LoggingUITable.RowName = {};
            app.LoggingUITable.Position = [21 58 849 257];

            % Create StatusEditFieldLabel
            app.StatusEditFieldLabel = uilabel(app.SimulationLogPanel);
            app.StatusEditFieldLabel.HorizontalAlignment = 'right';
            app.StatusEditFieldLabel.FontWeight = 'bold';
            app.StatusEditFieldLabel.Position = [674 20 42 22];
            app.StatusEditFieldLabel.Text = 'Status';

            % Create StatusEditField
            app.StatusEditField = uieditfield(app.SimulationLogPanel, 'text');
            app.StatusEditField.HorizontalAlignment = 'center';
            app.StatusEditField.FontWeight = 'bold';
            app.StatusEditField.BackgroundColor = [0 1 0];
            app.StatusEditField.Position = [731 20 139 22];
            app.StatusEditField.Value = 'Ready';

            % Create GridsizewarningLabel
            app.GridsizewarningLabel = uilabel(app.SimulationLogPanel);
            app.GridsizewarningLabel.HorizontalAlignment = 'right';
            app.GridsizewarningLabel.FontWeight = 'bold';
            app.GridsizewarningLabel.Position = [531 20 103 22];
            app.GridsizewarningLabel.Text = 'Results available';

            % Create ResultsAvailableOnDiskLamp
            app.ResultsAvailableOnDiskLamp = uilamp(app.SimulationLogPanel);
            app.ResultsAvailableOnDiskLamp.Position = [643 26 12 12];
            app.ResultsAvailableOnDiskLamp.Color = [0.8 0.8 0.8];

            % Create StoreResultsOnDiskCheckBox
            app.StoreResultsOnDiskCheckBox = uicheckbox(app.SimulationLogPanel);
            app.StoreResultsOnDiskCheckBox.Tooltip = {'Stores the result of each timestep on disk. Useful to keep results of extensive simulations even if errors occur or the simulator crashes. When unchecked, existing results are not overwritten.'};
            app.StoreResultsOnDiskCheckBox.Text = 'Store results on disk';
            app.StoreResultsOnDiskCheckBox.Position = [387 20 131 22];
            app.StoreResultsOnDiskCheckBox.Value = true;

            % Create TaskMetadataPanel
            app.TaskMetadataPanel = uipanel(app.SimulationHandlerUIFigure);
            app.TaskMetadataPanel.Title = 'Task Metadata';
            app.TaskMetadataPanel.Position = [30 438 659 177];

            % Create CurrentNameLabel
            app.CurrentNameLabel = uilabel(app.TaskMetadataPanel);
            app.CurrentNameLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.CurrentNameLabel.HorizontalAlignment = 'right';
            app.CurrentNameLabel.FontWeight = 'bold';
            app.CurrentNameLabel.Position = [29 124 79 22];
            app.CurrentNameLabel.Text = 'Current Task';

            % Create TaskNameEditField
            app.TaskNameEditField = uieditfield(app.TaskMetadataPanel, 'text');
            app.TaskNameEditField.Editable = 'off';
            app.TaskNameEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TaskNameEditField.Position = [123 124 257 22];
            app.TaskNameEditField.Value = 'Task';

            % Create CreatedEditFieldLabel
            app.CreatedEditFieldLabel = uilabel(app.TaskMetadataPanel);
            app.CreatedEditFieldLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.CreatedEditFieldLabel.HorizontalAlignment = 'right';
            app.CreatedEditFieldLabel.FontWeight = 'bold';
            app.CreatedEditFieldLabel.Position = [58 15 50 22];
            app.CreatedEditFieldLabel.Text = 'Created';

            % Create TaskCreatedEditField
            app.TaskCreatedEditField = uieditfield(app.TaskMetadataPanel, 'text');
            app.TaskCreatedEditField.Editable = 'off';
            app.TaskCreatedEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TaskCreatedEditField.Position = [123 15 168 22];

            % Create NotesTextAreaLabel
            app.NotesTextAreaLabel = uilabel(app.TaskMetadataPanel);
            app.NotesTextAreaLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.NotesTextAreaLabel.HorizontalAlignment = 'right';
            app.NotesTextAreaLabel.FontWeight = 'bold';
            app.NotesTextAreaLabel.Position = [69 90 39 22];
            app.NotesTextAreaLabel.Text = 'Notes';

            % Create TaskNotesTextArea
            app.TaskNotesTextArea = uitextarea(app.TaskMetadataPanel);
            app.TaskNotesTextArea.Editable = 'off';
            app.TaskNotesTextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TaskNotesTextArea.Position = [123 46 474 68];

            % Create QuitButton
            app.QuitButton = uibutton(app.SimulationHandlerUIFigure, 'push');
            app.QuitButton.ButtonPushedFcn = createCallbackFcn(app, @QuitButtonPushed, true);
            app.QuitButton.Position = [820 25 100 22];
            app.QuitButton.Text = 'Quit';

            % Create RunButton
            app.RunButton = uibutton(app.SimulationHandlerUIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.Position = [603 25 100 22];
            app.RunButton.Text = 'Run';

            % Create InfoLabel
            app.InfoLabel = uilabel(app.SimulationHandlerUIFigure);
            app.InfoLabel.HorizontalAlignment = 'center';
            app.InfoLabel.FontSize = 9;
            app.InfoLabel.Position = [30 25 188 22];
            app.InfoLabel.Text = {'Version X.X'; 'Copyright (C) XXXX Author'};

            % Create ResultsPanel
            app.ResultsPanel = uipanel(app.SimulationHandlerUIFigure);
            app.ResultsPanel.Title = 'Results';
            app.ResultsPanel.Position = [700 438 220 177];

            % Create MRSTReservoirAnalyzerButton
            app.MRSTReservoirAnalyzerButton = uibutton(app.ResultsPanel, 'push');
            app.MRSTReservoirAnalyzerButton.ButtonPushedFcn = createCallbackFcn(app, @MRSTReservoirAnalyzerButtonPushed, true);
            app.MRSTReservoirAnalyzerButton.Position = [33 119 153 22];
            app.MRSTReservoirAnalyzerButton.Text = 'MRST Reservoir Analyzer';

            % Create MRSTWellDataPlotButton
            app.MRSTWellDataPlotButton = uibutton(app.ResultsPanel, 'push');
            app.MRSTWellDataPlotButton.ButtonPushedFcn = createCallbackFcn(app, @MRSTWellDataPlotButtonPushed, true);
            app.MRSTWellDataPlotButton.Position = [33 87 153 22];
            app.MRSTWellDataPlotButton.Text = 'MRST Well Data Plot';

            % Create ReservoirProfileViewerButton
            app.ReservoirProfileViewerButton = uibutton(app.ResultsPanel, 'push');
            app.ReservoirProfileViewerButton.Enable = 'off';
            app.ReservoirProfileViewerButton.Position = [33 25 153 22];
            app.ReservoirProfileViewerButton.Text = 'Reservoir Profile Viewer';

            % Create TimestepsTableButton
            app.TimestepsTableButton = uibutton(app.ResultsPanel, 'push');
            app.TimestepsTableButton.ButtonPushedFcn = createCallbackFcn(app, @TimestepsTableButtonPushed, true);
            app.TimestepsTableButton.Position = [33 56 153 22];
            app.TimestepsTableButton.Text = 'Timesteps Table';

            % Create ClearResultsButton
            app.ClearResultsButton = uibutton(app.SimulationHandlerUIFigure, 'push');
            app.ClearResultsButton.ButtonPushedFcn = createCallbackFcn(app, @ClearResultsButtonPushed, true);
            app.ClearResultsButton.Position = [712 25 100 22];
            app.ClearResultsButton.Text = 'Clear Results';

            % Show the figure after all components are created
            app.SimulationHandlerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SimulationHandler_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.SimulationHandlerUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.SimulationHandlerUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SimulationHandlerUIFigure)
        end
    end
end