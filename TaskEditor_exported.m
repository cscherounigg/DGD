classdef TaskEditor_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        TaskEditorUIFigure   matlab.ui.Figure
        TaskGenericsLabel    matlab.ui.control.Label
        TaskParametersLabel  matlab.ui.control.Label
        ParamsTextArea       matlab.ui.control.TextArea
        InfoLabel            matlab.ui.control.Label
        QuitButton           matlab.ui.control.Button
        SaveandExitButton    matlab.ui.control.Button
        GenericTextArea      matlab.ui.control.TextArea
    end

    
    properties (Access = private)
        callingApp DeepGeoDoublet % Description
        task Task % Task object
        globalVars % Description
        globalConsts
    end
    
    methods (Access = private)
        
        function closeAppPrompt(app)
            decision = uiconfirm(app.TaskEditorUIFigure, 'Quit without saving?',...
                'Exiting', 'Icon', 'warning', 'Options', {'Continue', 'Save', 'Cancel'});
            switch decision
                case 'Save'
                    app.saveTask();
                    app.closeApp();
                case 'Continue'
                    app.closeApp();
            end
        end

        function closeApp(app)
            app.callingApp.showApp()
            app.delete()
        end

        function loadTaskParams(app)
            app.GenericTextArea.Value = jsonencode(app.task.generic, PrettyPrint=true);
            app.ParamsTextArea.Value = jsonencode(app.task.params, PrettyPrint=true);
        end

        function saveTask(app)
            app.task.generic = jsondecode(cells2str(app.GenericTextArea.Value, ''));
            app.task.params = jsondecode(cells2str(app.ParamsTextArea.Value, ''));
            storeTask(app.task);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, callingApp, task)
            arguments
                app TaskEditor
                callingApp DeepGeoDoublet
                task = []
            end

            % Calling app 
            app.callingApp = callingApp;
            app.callingApp.hideApp();

            % Load global veriables and constants
            app.globalVars = callingApp.globalVars;
            app.globalConsts = callingApp.globalConsts;

            if isempty(task)
                app.task = Task(app.globalVars);
            else
                app.task = task;
            end
            app.loadTaskParams();

            % Set version and copyright notice
            labelStr = sprintf("Version %s\nCopyright (C) %s %s", ...
                app.globalConsts.VERSION, ...
                app.globalConsts.YEAR, ...
                app.globalConsts.AUTHOR_LASTNAME);
            app.InfoLabel.Text = labelStr;
            
            experimentalEditorWarning(app.TaskEditorUIFigure)
        end

        % Close request function: TaskEditorUIFigure
        function TaskEditorUIFigureCloseRequest(app, event)
            app.closeAppPrompt()
        end

        % Button pushed function: SaveandExitButton
        function SaveandExitButtonPushed(app, event)
            app.saveTask()
            app.closeApp()
        end

        % Button pushed function: QuitButton
        function QuitButtonPushed(app, event)
            app.closeAppPrompt()
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create TaskEditorUIFigure and hide until all components are created
            app.TaskEditorUIFigure = uifigure('Visible', 'off');
            app.TaskEditorUIFigure.Position = [100 100 649 684];
            app.TaskEditorUIFigure.Name = 'Task Editor';
            app.TaskEditorUIFigure.CloseRequestFcn = createCallbackFcn(app, @TaskEditorUIFigureCloseRequest, true);

            % Create GenericTextArea
            app.GenericTextArea = uitextarea(app.TaskEditorUIFigure);
            app.GenericTextArea.Position = [48 487 558 149];

            % Create SaveandExitButton
            app.SaveandExitButton = uibutton(app.TaskEditorUIFigure, 'push');
            app.SaveandExitButton.ButtonPushedFcn = createCallbackFcn(app, @SaveandExitButtonPushed, true);
            app.SaveandExitButton.Position = [395 17 100 22];
            app.SaveandExitButton.Text = 'Save and Exit';

            % Create QuitButton
            app.QuitButton = uibutton(app.TaskEditorUIFigure, 'push');
            app.QuitButton.ButtonPushedFcn = createCallbackFcn(app, @QuitButtonPushed, true);
            app.QuitButton.Position = [507 17 100 22];
            app.QuitButton.Text = 'Quit';

            % Create InfoLabel
            app.InfoLabel = uilabel(app.TaskEditorUIFigure);
            app.InfoLabel.HorizontalAlignment = 'center';
            app.InfoLabel.FontSize = 9;
            app.InfoLabel.Position = [6 14 188 22];
            app.InfoLabel.Text = {'Version X.X'; 'Copyright (C) XXXX Author'};

            % Create ParamsTextArea
            app.ParamsTextArea = uitextarea(app.TaskEditorUIFigure);
            app.ParamsTextArea.Position = [48 62 558 388];

            % Create TaskParametersLabel
            app.TaskParametersLabel = uilabel(app.TaskEditorUIFigure);
            app.TaskParametersLabel.Position = [49 449 96 22];
            app.TaskParametersLabel.Text = 'Task Parameters';

            % Create TaskGenericsLabel
            app.TaskGenericsLabel = uilabel(app.TaskEditorUIFigure);
            app.TaskGenericsLabel.Position = [50 635 82 22];
            app.TaskGenericsLabel.Text = 'Task Generics';

            % Show the figure after all components are created
            app.TaskEditorUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TaskEditor_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.TaskEditorUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.TaskEditorUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.TaskEditorUIFigure)
        end
    end
end