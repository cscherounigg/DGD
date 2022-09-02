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

classdef ProgressDialog
    %PROGRESSDIALOG Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        dialog
        steps
        currentStep
    end
    
    methods
        function progressDialog = ProgressDialog(figure, title, steps)
            %PROGRESSDIALOG Construct an instance of this class
            %   Detailed explanation goes here
            arguments
                figure matlab.ui.Figure
                title
                steps
            end
            progressDialog.dialog = uiprogressdlg(figure, 'Title', title);
            progressDialog.steps = steps;
            progressDialog.currentStep = 0;
        end
        
        function nextStep(progressDialog, message)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            arguments
                progressDialog ProgressDialog
                message
            end
            progressDialog.dialog.Message = message;
            progressDialog.dialog.Value = progressDialog.currentStep / progressDialog.steps;
        end

        function closeDialog(progressDialog)
            arguments
                progressDialog ProgressDialog
            end
            close(progressDialog.dialog);
        end
    end
end

