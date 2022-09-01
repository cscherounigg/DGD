classdef DialogType
    %DIALOGTYPE Summary of this class goes here
    %   Detailed explanation goes here
    properties
        icon
    end
    methods
        function type = DialogType(icon)
            type.icon = icon;
        end
    end
    enumeration
        INFO("help")
        WARNING("warn")
        ERROR("error")
    end
end

