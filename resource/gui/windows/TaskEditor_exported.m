classdef TaskEditor_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        RawTaskEditorUIFigure  matlab.ui.Figure
        TaskGenericsLabel      matlab.ui.control.Label
        TaskParametersLabel    matlab.ui.control.Label
        ParamsTextArea         matlab.ui.control.TextArea
        InfoLabel              matlab.ui.control.Label
        QuitButton             matlab.ui.control.Button
        SaveandExitButton      matlab.ui.control.Button
        GenericTextArea        matlab.ui.control.TextArea
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
    properties (Access = private)
        callingApp DeepGeoDoublet % Description
        task Task % Task object
        globalVars % Description
        globalConsts
    end
    
    methods (Access = private)
        
        function closeAppPrompt(app)
            decision = uiconfirm(app.RawTaskEditorUIFigure, 'Quit without saving?',...
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
            params = jsondecode(cells2str(app.ParamsTextArea.Value, ''));
            app.task.params = transposeVectors(params);
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
            
            experimentalEditorWarning(app.RawTaskEditorUIFigure)
        end

        % Close request function: RawTaskEditorUIFigure
        function RawTaskEditorUIFigureCloseRequest(app, event)
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

            % Create RawTaskEditorUIFigure and hide until all components are created
            app.RawTaskEditorUIFigure = uifigure('Visible', 'off');
            app.RawTaskEditorUIFigure.Position = [100 100 649 684];
            app.RawTaskEditorUIFigure.Name = 'Raw Task Editor';
            app.RawTaskEditorUIFigure.CloseRequestFcn = createCallbackFcn(app, @RawTaskEditorUIFigureCloseRequest, true);

            % Create GenericTextArea
            app.GenericTextArea = uitextarea(app.RawTaskEditorUIFigure);
            app.GenericTextArea.Position = [48 487 558 149];

            % Create SaveandExitButton
            app.SaveandExitButton = uibutton(app.RawTaskEditorUIFigure, 'push');
            app.SaveandExitButton.ButtonPushedFcn = createCallbackFcn(app, @SaveandExitButtonPushed, true);
            app.SaveandExitButton.Position = [395 17 100 22];
            app.SaveandExitButton.Text = 'Save and Exit';

            % Create QuitButton
            app.QuitButton = uibutton(app.RawTaskEditorUIFigure, 'push');
            app.QuitButton.ButtonPushedFcn = createCallbackFcn(app, @QuitButtonPushed, true);
            app.QuitButton.Position = [507 17 100 22];
            app.QuitButton.Text = 'Quit';

            % Create InfoLabel
            app.InfoLabel = uilabel(app.RawTaskEditorUIFigure);
            app.InfoLabel.HorizontalAlignment = 'center';
            app.InfoLabel.FontSize = 9;
            app.InfoLabel.Position = [6 14 188 22];
            app.InfoLabel.Text = {'Version X.X'; 'Copyright (C) XXXX Author'};

            % Create ParamsTextArea
            app.ParamsTextArea = uitextarea(app.RawTaskEditorUIFigure);
            app.ParamsTextArea.Position = [48 62 558 388];

            % Create TaskParametersLabel
            app.TaskParametersLabel = uilabel(app.RawTaskEditorUIFigure);
            app.TaskParametersLabel.Position = [49 449 96 22];
            app.TaskParametersLabel.Text = 'Task Parameters';

            % Create TaskGenericsLabel
            app.TaskGenericsLabel = uilabel(app.RawTaskEditorUIFigure);
            app.TaskGenericsLabel.Position = [50 635 82 22];
            app.TaskGenericsLabel.Text = 'Task Generics';

            % Show the figure after all components are created
            app.RawTaskEditorUIFigure.Visible = 'on';
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
                registerApp(app, app.RawTaskEditorUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.RawTaskEditorUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.RawTaskEditorUIFigure)
        end
    end
end