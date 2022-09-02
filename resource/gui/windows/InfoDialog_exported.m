classdef InfoDialog_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        DeepGeoDoubletUIFigure  matlab.ui.Figure
        HomepageLabel           matlab.ui.control.Label
        MATLABrc19842022TheMathWorksIncLabel  matlab.ui.control.Label
        CopyrightLabel          matlab.ui.control.Label
        VersionLabel            matlab.ui.control.Label
        CloseButton             matlab.ui.control.Button
        TextArea                matlab.ui.control.TextArea
        DeepGeoDoubletLabel     matlab.ui.control.Label
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
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, text)
            % Version and copyright notice
            globalConsts = getGlobalConsts();
            app.VersionLabel.Text = sprintf("Version %s", globalConsts.VERSION);
            app.CopyrightLabel.Text = sprintf("Copyright (C) %s %s %s", ...
                globalConsts.YEAR, ...
                globalConsts.AUTHOR_FIRSTNAME, ...
                upper(globalConsts.AUTHOR_LASTNAME));

            % License area
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
            app.DeepGeoDoubletLabel.Position = [36 573 503 29];
            app.DeepGeoDoubletLabel.Text = 'DeepGeoDoublet';

            % Create TextArea
            app.TextArea = uitextarea(app.DeepGeoDoubletUIFigure);
            app.TextArea.Editable = 'off';
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TextArea.Position = [36 68 503 421];

            % Create CloseButton
            app.CloseButton = uibutton(app.DeepGeoDoubletUIFigure, 'push');
            app.CloseButton.ButtonPushedFcn = createCallbackFcn(app, @CloseButtonPushed, true);
            app.CloseButton.Position = [439 28 100 22];
            app.CloseButton.Text = 'Close';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.VersionLabel.HorizontalAlignment = 'center';
            app.VersionLabel.Position = [37 542 502 22];
            app.VersionLabel.Text = 'Version X.X.X';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.CopyrightLabel.HorizontalAlignment = 'center';
            app.CopyrightLabel.Position = [36 521 503 22];
            app.CopyrightLabel.Text = 'Copyright (C) XXXX Author';

            % Create MATLABrc19842022TheMathWorksIncLabel
            app.MATLABrc19842022TheMathWorksIncLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.MATLABrc19842022TheMathWorksIncLabel.HorizontalAlignment = 'center';
            app.MATLABrc19842022TheMathWorksIncLabel.Position = [37 28 269 22];
            app.MATLABrc19842022TheMathWorksIncLabel.Text = 'MATLAB(r). (c) 1984 - 2022 The MathWorks, Inc.';

            % Create HomepageLabel
            app.HomepageLabel = uilabel(app.DeepGeoDoubletUIFigure);
            app.HomepageLabel.Interpreter = 'html';
            app.HomepageLabel.HorizontalAlignment = 'center';
            app.HomepageLabel.Position = [36 500 503 22];
            app.HomepageLabel.Text = '<a href="https://github.com/cscherounigg/DGD/">Homepage (GitHub)</a>';

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