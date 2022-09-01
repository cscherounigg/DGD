classdef DeepGeoDoublet_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        DeepGeoDoubletUIFigure   matlab.ui.Figure
        FileMenu                 matlab.ui.container.Menu
        TaskMenu                 matlab.ui.container.Menu
        ImportMenu               matlab.ui.container.Menu
        ExportMenu               matlab.ui.container.Menu
        ImportResultsMenu        matlab.ui.container.Menu
        ExportResultsMenu        matlab.ui.container.Menu
        ShowLogfilesMenu         matlab.ui.container.Menu
        EditMenu                 matlab.ui.container.Menu
        GlobalConfigurationMenu  matlab.ui.container.Menu
        InfoLabel                matlab.ui.control.Label
        InfoButton               matlab.ui.control.Button
        ExecuteAnalyzeButton     matlab.ui.control.Button
        TaskEditButton           matlab.ui.control.Button
        TaskNewButton            matlab.ui.control.Button
        TaskDeleteButton         matlab.ui.control.Button
        TasksUITable             matlab.ui.control.Table
        ExitButton               matlab.ui.control.Button
    end

    
    properties (Access = private)
        infoApp InfoDialog % Description
        taskBuilderApp TaskBuilder
        taskEditorApp TaskEditor
        simulationHandlerApp SimulationHandler
        tasksList % Description
        logFilesFolder string % Description
    end
    
    properties (Access = public)
        globalVars % Global variables
        globalConsts % Global constants      
    end
    
    methods (Access = private)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                     General App Methods                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods needed for global app control

        function closeApp(app)
            decision = uiconfirm(app.DeepGeoDoubletUIFigure, 'Exit DeepGeoDoublet?',...
                'Exiting', 'Icon', 'question', 'Options', {'Continue', 'Cancel'});
            switch decision
                case 'Continue'
                    if ~isempty(app.taskBuilderApp)
                        app.taskBuilderApp.delete();
                    end
                    if ~isempty(app.infoApp)
                        app.infoApp.delete();
                    end
                    if ~isempty(app.taskEditorApp)
                        app.taskEditorApp.delete()
                    end
                    app.delete();
            end
        end


        function switchToEditTaskApp(app)
            selectedTasks = app.getSelectedTasks();
            switch editorSelectionDialog(app.DeepGeoDoubletUIFigure)
                case 'Graphical'
                    app.taskBuilderApp = TaskBuilder(app, selectedTasks(1));
                case 'Raw'
                    app.taskEditorApp = TaskEditor(app, selectedTasks(1));
            end
        end

        function switchToNewTaskApp(app)
            switch editorSelectionDialog(app.DeepGeoDoubletUIFigure)
                case 'Graphical'
                    app.taskBuilderApp = TaskBuilder(app);
                case 'Raw'
                    app.taskEditorApp = TaskEditor(app);
            end
        end

        function switchToTaskExecutionApp(app)
            selectedTasks = app.getSelectedTasks();
            app.simulationHandlerApp = SimulationHandler(app, selectedTasks(1));
        end

        function removeTasks(app)
            decision = deleteTasksDialog(app.DeepGeoDoubletUIFigure);
            switch decision
                case 'Continue'
                    deleteTasks(app.getSelectedTasks());
                    app.updateTasksTable();
            end
        end

        function tasks = getSelectedTasks(app)
            selectedRows = app.TasksUITable.Selection;
            selectedTaskCells = app.TasksUITable.Data(selectedRows,:);
            createdDatetimes = datetime(selectedTaskCells(:,2), InputFormat='yyyy-MM-dd HH:mm:ss');          
            tasks = loadTasks(createdDatetimes=createdDatetimes);     
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                     GUI Control Methods                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        function updateTasksTable(app)
            app.tasksList = loadTasks();
            app.TasksUITable.Data = getGenericsAsCellArray(app.tasksList);
        end

        function updateTaskOptions(app)
            selectedTasks = app.getSelectedTasks();
            if size(selectedTasks, 1) > 1
                % Multiple Tasks selected
                app.TaskEditButton.Enable = false;
                app.TaskDeleteButton.Enable = true;
                app.ExecuteAnalyzeButton.Enable = false;
                app.ExportMenu.Enable = false;
                app.ExportResultsMenu.Enable = false;
            elseif size(selectedTasks, 1) > 0
                % Single Task selected
                app.TaskEditButton.Enable = true;
                app.TaskDeleteButton.Enable = true;
                app.ExecuteAnalyzeButton.Enable = true;
                app.ExportMenu.Enable = true;
                if selectedTasks(1).storedDataAvailable()
                    app.ExportResultsMenu.Enable = true;
                else
                    app.ExportResultsMenu.Enable = false;
                end
            else
                app.TaskEditButton.Enable = false;
                app.TaskDeleteButton.Enable = false;
                app.ExecuteAnalyzeButton.Enable = false;
                app.ExportMenu.Enable = false;
                app.ExportResultsMenu.Enable = false;
            end
        end
    end

   
    methods (Access = public)

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                       Public Methods                        %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        function hideApp(app)
            app.DeepGeoDoubletUIFigure.Visible = "off";
        end

        function showApp(app)
            app.DeepGeoDoubletUIFigure.Visible = "on";
            app.updateTasksTable();
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.globalVars = getGlobalVars();
            app.globalConsts = getGlobalConsts();
            
            % Create log file
            [app.logFilesFolder, ] = createLog(datestr(datetime, getGlobalVars().DEFAULT_LOG_STORAGE_DATETIME_FORMAT));

            % Set version and copyright notice
            labelStr = sprintf("Version %s\nCopyright (C) %s %s", ...
                app.globalConsts.VERSION, ...
                app.globalConsts.YEAR, ...
                app.globalConsts.AUTHOR_LASTNAME);
            app.InfoLabel.Text = labelStr;

            % Update Tasks Table
            app.updateTasksTable();
        end

        % Close request function: DeepGeoDoubletUIFigure
        function DeepGeoDoubletUIFigureCloseRequest(app, event)
            app.closeApp();
        end

        % Button pushed function: ExitButton
        function ExitButtonPushed(app, event)
            app.closeApp();
        end

        % Button pushed function: InfoButton
        function InfoButtonPushed(app, event)
            license = fileread('LICENSE');
            app.infoApp = InfoDialog(license);
        end

        % Button pushed function: TaskNewButton
        function TaskNewButtonPushed(app, event)
            app.switchToNewTaskApp();
        end

        % Button pushed function: TaskEditButton
        function TaskEditButtonPushed(app, event)
            app.switchToEditTaskApp();
        end

        % Selection changed function: TasksUITable
        function TasksUITableSelectionChanged(app, event)
            app.updateTaskOptions();
        end

        % Button pushed function: TaskDeleteButton
        function TaskDeleteButtonPushed(app, event)
            app.removeTasks();
            app.updateTasksTable();
        end

        % Button pushed function: ExecuteAnalyzeButton
        function ExecuteAnalyzeButtonPushed(app, event)
            app.switchToTaskExecutionApp();
        end

        % Menu selected function: ShowLogfilesMenu
        function ShowLogfilesMenuSelected(app, event)
            winopen(app.logFilesFolder)
        end

        % Menu selected function: ExportMenu
        function ExportMenuSelected(app, event)
            selectedTasks = app.getSelectedTasks();
            exportTask(selectedTasks(1));
        end

        % Menu selected function: ImportMenu
        function ImportMenuSelected(app, event)
            try
                importTask();
            catch e
                switch e.identifier
                    case 'TaskImport:GenericFileMissing'
                        messageDialog(app.DeepGeoDoubletUIFigure, 'File for generic Task data ("generic.json") missing in archive.', 'File missing', 'ERROR');
                    case 'TaskImport:ParamsFileMissing'
                        messageDialog(app.DeepGeoDoubletUIFigure, 'File for Task parameters ("params.json") missing in archive.', 'File missing', 'ERROR');
                    case 'TaskImport:GenericFileSyntaxError'
                        messageDialog(app.DeepGeoDoubletUIFigure, 'Syntax error in generic Task data file ("generic.json").', 'Syntax error', 'ERROR');
                    case 'TaskImport:ParamsFileSyntaxError'
                        messageDialog(app.DeepGeoDoubletUIFigure, 'Syntax error in Task parameters file ("params.json").', 'Syntax error', 'ERROR');
                    otherwise
                        messageDialog(app.DeepGeoDoubletUIFigure, 'Unknown error occured. Consult global runtime log and report this issue.', 'Unknown error', 'ERROR');                        
                end
            end
            app.updateTasksTable();
        end

        % Menu selected function: ExportResultsMenu
        function ExportResultsMenuSelected(app, event)
            selectedTasks = app.getSelectedTasks;
            exportTaskResults(selectedTasks(1));
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create DeepGeoDoubletUIFigure and hide until all components are created
            app.DeepGeoDoubletUIFigure = uifigure('Visible', 'off');
            app.DeepGeoDoubletUIFigure.Position = [100 100 909 419];
            app.DeepGeoDoubletUIFigure.Name = 'DeepGeoDoublet';
            app.DeepGeoDoubletUIFigure.CloseRequestFcn = createCallbackFcn(app, @DeepGeoDoubletUIFigureCloseRequest, true);

            % Create FileMenu
            app.FileMenu = uimenu(app.DeepGeoDoubletUIFigure);
            app.FileMenu.Text = 'File';

            % Create TaskMenu
            app.TaskMenu = uimenu(app.FileMenu);
            app.TaskMenu.Text = 'Task';

            % Create ImportMenu
            app.ImportMenu = uimenu(app.TaskMenu);
            app.ImportMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportMenuSelected, true);
            app.ImportMenu.Text = 'Import...';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.TaskMenu);
            app.ExportMenu.MenuSelectedFcn = createCallbackFcn(app, @ExportMenuSelected, true);
            app.ExportMenu.Enable = 'off';
            app.ExportMenu.Text = 'Export...';

            % Create ImportResultsMenu
            app.ImportResultsMenu = uimenu(app.TaskMenu);
            app.ImportResultsMenu.Enable = 'off';
            app.ImportResultsMenu.Text = 'Import Results...';

            % Create ExportResultsMenu
            app.ExportResultsMenu = uimenu(app.TaskMenu);
            app.ExportResultsMenu.MenuSelectedFcn = createCallbackFcn(app, @ExportResultsMenuSelected, true);
            app.ExportResultsMenu.Enable = 'off';
            app.ExportResultsMenu.Text = 'Export Results...';

            % Create ShowLogfilesMenu
            app.ShowLogfilesMenu = uimenu(app.FileMenu);
            app.ShowLogfilesMenu.MenuSelectedFcn = createCallbackFcn(app, @ShowLogfilesMenuSelected, true);
            app.ShowLogfilesMenu.Text = 'Show Logfiles...';

            % Create EditMenu
            app.EditMenu = uimenu(app.DeepGeoDoubletUIFigure);
            app.EditMenu.Text = 'Edit';

            % Create GlobalConfigurationMenu
            app.GlobalConfigurationMenu = uimenu(app.EditMenu);
            app.GlobalConfigurationMenu.Enable = 'off';
            app.GlobalConfigurationMenu.Text = 'Global Configuration...';

            % Create ExitButton
            app.ExitButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.ExitButton.ButtonPushedFcn = createCallbackFcn(app, @ExitButtonPushed, true);
            app.ExitButton.Position = [785 17 100 22];
            app.ExitButton.Text = 'Exit';

            % Create TasksUITable
            app.TasksUITable = uitable(app.DeepGeoDoubletUIFigure);
            app.TasksUITable.ColumnName = {'Task Name'; 'Created'; 'Results available'; 'Notes'};
            app.TasksUITable.RowName = {};
            app.TasksUITable.ColumnSortable = true;
            app.TasksUITable.SelectionType = 'row';
            app.TasksUITable.SelectionChangedFcn = createCallbackFcn(app, @TasksUITableSelectionChanged, true);
            app.TasksUITable.Position = [45 132 785 246];

            % Create TaskDeleteButton
            app.TaskDeleteButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.TaskDeleteButton.ButtonPushedFcn = createCallbackFcn(app, @TaskDeleteButtonPushed, true);
            app.TaskDeleteButton.Enable = 'off';
            app.TaskDeleteButton.Position = [716 95 115 22];
            app.TaskDeleteButton.Text = 'Delete';

            % Create TaskNewButton
            app.TaskNewButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.TaskNewButton.ButtonPushedFcn = createCallbackFcn(app, @TaskNewButtonPushed, true);
            app.TaskNewButton.BusyAction = 'cancel';
            app.TaskNewButton.Interruptible = 'off';
            app.TaskNewButton.Position = [336 95 115 22];
            app.TaskNewButton.Text = 'New...';

            % Create TaskEditButton
            app.TaskEditButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.TaskEditButton.ButtonPushedFcn = createCallbackFcn(app, @TaskEditButtonPushed, true);
            app.TaskEditButton.Enable = 'off';
            app.TaskEditButton.Position = [463 95 115 22];
            app.TaskEditButton.Text = 'Edit...';

            % Create ExecuteAnalyzeButton
            app.ExecuteAnalyzeButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.ExecuteAnalyzeButton.ButtonPushedFcn = createCallbackFcn(app, @ExecuteAnalyzeButtonPushed, true);
            app.ExecuteAnalyzeButton.Enable = 'off';
            app.ExecuteAnalyzeButton.Position = [590 95 115 22];
            app.ExecuteAnalyzeButton.Text = 'Execute/Analyze...';

            % Create InfoButton
            app.InfoButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.InfoButton.ButtonPushedFcn = createCallbackFcn(app, @InfoButtonPushed, true);
            app.InfoButton.Position = [30 14 100 22];
            app.InfoButton.Text = 'Info...';

            % Create InfoLabel
            app.InfoLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.InfoLabel.HorizontalAlignment = 'center';
            app.InfoLabel.FontSize = 9;
            app.InfoLabel.Position = [141 14 170 22];
            app.InfoLabel.Text = {'Version X.X'; 'Copyright (C) XXXX Author'};

            % Show the figure after all components are created
            app.DeepGeoDoubletUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = DeepGeoDoublet_exported

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.DeepGeoDoubletUIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.DeepGeoDoubletUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.DeepGeoDoubletUIFigure)
        end
    end
end