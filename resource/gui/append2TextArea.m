function append2TextArea(textArea, text)
%APPEND2TEXTAREA Summary of this function goes here
%   Detailed explanation goes here
arguments
    textArea matlab.ui.control.TextArea
    text
end
    if textArea.Value == ""
        textArea.Value = text;
        return
    end
    oldText = textArea.Value;
    newText = [oldText(:); {text}];
    textArea.Value = newText;
end

