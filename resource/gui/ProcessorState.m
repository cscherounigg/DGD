classdef ProcessorState
    %PROCESSORSTATE Summary of this class goes here
    %   Detailed explanation goes here
    properties
        color
        label
    end
    methods
        function state = ProcessorState(color, label)
            state.color = color;
            state.label = label;
        end
    end
    enumeration
        READY([0 1 0], "Ready")
        PREPROCESSING([1 1 0], "Preprocessing")
        RUNNING([1 1 0], "Running")
        POSTPROCESSING([1 1 0], "Postprocessing")
        ERROR([1 0 0], "Error")
        DONE([0 1 0], "Done")
    end
end

