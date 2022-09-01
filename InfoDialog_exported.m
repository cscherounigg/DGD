classdef InfoDialog_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        DeepGeoDoubletUIFigure  matlab.ui.Figure
        MATLABrc19842022TheMathWorksIncLabel  matlab.ui.control.Label
        CopyrightC2022ChristophScherouniggLabel  matlab.ui.control.Label
        Version100Label         matlab.ui.control.Label
        CloseButton             matlab.ui.control.Button
        TextArea                matlab.ui.control.TextArea
        DeepGeoDoubletLabel     matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, text)
            app.TextArea.Value = text;
        end

        % Button pushed function: CloseButton
        function CloseButtonPushed(app, event)
            delete(app)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create DeepGeoDoubletUIFigure and hide until all components are created
            app.DeepGeoDoubletUIFigure = uifigure('Visible', 'off');
            app.DeepGeoDoubletUIFigure.Position = [100 100 574 620];
            app.DeepGeoDoubletUIFigure.Name = 'DeepGeoDoublet';

            % Create DeepGeoDoubletLabel
            app.DeepGeoDoubletLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.DeepGeoDoubletLabel.HorizontalAlignment = 'center';
            app.DeepGeoDoubletLabel.FontSize = 22;
            app.DeepGeoDoubletLabel.FontWeight = 'bold';
            app.DeepGeoDoubletLabel.Position = [196 573 184 29];
            app.DeepGeoDoubletLabel.Text = 'DeepGeoDoublet';

            % Create TextArea
            app.TextArea = uitextarea(app.DeepGeoDoubletUIFigure);
            app.TextArea.Editable = 'off';
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.Position = [36 68 503 432];

            % Create CloseButton
            app.CloseButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.CloseButton.ButtonPushedFcn = createCallbackFcn(app, @CloseButtonPushed, true);
            app.CloseButton.Position = [439 28 100 22];
            app.CloseButton.Text = 'Close';

            % Create Version100Label
            app.Version100Label = uilabel(app.DeepGeoDoubletUIFigure);
            app.Version100Label.HorizontalAlignment = 'center';
            app.Version100Label.Position = [250 542 76 22];
            app.Version100Label.Text = 'Version 1.0.0';

            % Create CopyrightC2022ChristophScherouniggLabel
            app.CopyrightC2022ChristophScherouniggLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.CopyrightC2022ChristophScherouniggLabel.HorizontalAlignment = 'center';
            app.CopyrightC2022ChristophScherouniggLabel.Position = [169 521 238 22];
            app.CopyrightC2022ChristophScherouniggLabel.Text = 'Copyright (C) 2022  Christoph Scherounigg';

            % Create MATLABrc19842022TheMathWorksIncLabel
            app.MATLABrc19842022TheMathWorksIncLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.MATLABrc19842022TheMathWorksIncLabel.HorizontalAlignment = 'center';
            app.MATLABrc19842022TheMathWorksIncLabel.Position = [37 28 269 22];
            app.MATLABrc19842022TheMathWorksIncLabel.Text = 'MATLAB(r). (c) 1984 - 2022 The MathWorks, Inc.';

            % Show the figure after all components are created
            app.DeepGeoDoubletUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = InfoDialog_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.DeepGeoDoubletUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
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