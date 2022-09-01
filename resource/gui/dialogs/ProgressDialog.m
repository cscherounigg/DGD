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

