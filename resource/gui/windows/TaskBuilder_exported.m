classdef TaskBuilder_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GraphicalTaskBuilderUIFigure    matlab.ui.Figure
        Panel_2                         matlab.ui.container.Panel
        WarningsPanel                   matlab.ui.container.Panel
        RemovingResultsWarningLamp      matlab.ui.control.Lamp
        GridsizewarningLabel_9          matlab.ui.control.Label
        OverwritingTaskWarningLamp      matlab.ui.control.Lamp
        GridsizewarningLabel_2          matlab.ui.control.Label
        GridSizeWarningLamp             matlab.ui.control.Lamp
        GridsizewarningLabel            matlab.ui.control.Label
        ModelPanel                      matlab.ui.container.Panel
        InitialEquilibriumEnabledLamp   matlab.ui.control.Lamp
        GridsizewarningLabel_8          matlab.ui.control.Label
        EOSEnabledLamp                  matlab.ui.control.Lamp
        GridsizewarningLabel_7          matlab.ui.control.Label
        GravityEnabledLamp              matlab.ui.control.Lamp
        GridsizewarningLabel_6          matlab.ui.control.Label
        BCsEnabledLamp                  matlab.ui.control.Lamp
        GridsizewarningLabel_5          matlab.ui.control.Label
        LayerEnabledLamp                matlab.ui.control.Lamp
        GridsizewarningLabel_4          matlab.ui.control.Label
        TotelCellsEditField             matlab.ui.control.NumericEditField
        TotalcellsLabel                 matlab.ui.control.Label
        PreviewCheckBox                 matlab.ui.control.CheckBox
        ModelPreviewAxes                matlab.ui.control.UIAxes
        Panel                           matlab.ui.container.Panel
        ResetButton                     matlab.ui.control.Button
        InfoLabel                       matlab.ui.control.Label
        QuitButton                      matlab.ui.control.Button
        SaveandExitButton               matlab.ui.control.Button
        GlobalTabGroup                  matlab.ui.container.TabGroup
        GenericTab                      matlab.ui.container.Tab
        TaskKeepExistingCheckBox        matlab.ui.control.CheckBox
        TaskNotesTextArea               matlab.ui.control.TextArea
        NotesTextAreaLabel              matlab.ui.control.Label
        TaskCreatedEditField            matlab.ui.control.EditField
        CreatedEditFieldLabel           matlab.ui.control.Label
        TaskNameEditField               matlab.ui.control.EditField
        NameEditFieldLabel              matlab.ui.control.Label
        DomainTab                       matlab.ui.container.Tab
        GlobalCellsPanel                matlab.ui.container.Panel
        xLabel_3                        matlab.ui.control.Label
        GridNzEditField                 matlab.ui.control.NumericEditField
        xLabel_2                        matlab.ui.control.Label
        GridNyEditField                 matlab.ui.control.NumericEditField
        xLabel                          matlab.ui.control.Label
        GridNxEditField                 matlab.ui.control.NumericEditField
        GridLayerPanel                  matlab.ui.container.Panel
        GridLayerPropertiesPanel        matlab.ui.container.Panel
        xLabel_17                       matlab.ui.control.Label
        xLabel_16                       matlab.ui.control.Label
        GridLayerThicknessEditField     matlab.ui.control.NumericEditField
        GridLayerPlanePointxEditField   matlab.ui.control.NumericEditField
        GridLayerPlanePointyEditField   matlab.ui.control.NumericEditField
        GridLayerPlanePointzEditField   matlab.ui.control.NumericEditField
        xLabel_15                       matlab.ui.control.Label
        xLabel_14                       matlab.ui.control.Label
        GridLayerRollEditField          matlab.ui.control.NumericEditField
        GridLayerPitchEditField         matlab.ui.control.NumericEditField
        GridLayerYawEditField           matlab.ui.control.NumericEditField
        PlanePointLabel                 matlab.ui.control.Label
        xLabel_13                       matlab.ui.control.Label
        xLabel_11                       matlab.ui.control.Label
        xLabel_12                       matlab.ui.control.Label
        xLabel_10                       matlab.ui.control.Label
        xLabel_9                        matlab.ui.control.Label
        xLabel_8                        matlab.ui.control.Label
        GridLayerActiveCheckBox         matlab.ui.control.CheckBox
        GlobalGridSizePanel             matlab.ui.container.Panel
        GridDepthEditField              matlab.ui.control.NumericEditField
        xLabel_7                        matlab.ui.control.Label
        GridSizezEditField              matlab.ui.control.NumericEditField
        xLabel_6                        matlab.ui.control.Label
        GridSizeyEditField              matlab.ui.control.NumericEditField
        xLabel_5                        matlab.ui.control.Label
        GridSizexEditField              matlab.ui.control.NumericEditField
        xLabel_4                        matlab.ui.control.Label
        GridDepthUnitDropDown           matlab.ui.control.DropDown
        GridSizeyUnitDropDown           matlab.ui.control.DropDown
        GridSizexUnitDropDown           matlab.ui.control.DropDown
        GridSizezUnitDropDown           matlab.ui.control.DropDown
        RockTab                         matlab.ui.container.Tab
        TotalPVEditField                matlab.ui.control.EditField
        PoreVolumeEditFieldLabel        matlab.ui.control.Label
        TotalPVUnitLabel                matlab.ui.control.Label
        TabGroup4                       matlab.ui.container.TabGroup
        PorosityTab                     matlab.ui.container.Tab
        GlobalPorosityTabGroup          matlab.ui.container.TabGroup
        GlobalPorosityTab               matlab.ui.container.Tab
        SingleCalculationCheckBox       matlab.ui.control.CheckBox
        GlobalPorosityGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel  matlab.ui.control.Label
        GlobalPorosityGaussianMinEditField  matlab.ui.control.NumericEditField
        PorosityminLabel                matlab.ui.control.Label
        GlobalPorosityGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel_2              matlab.ui.control.Label
        GlobalPorosityEditField         matlab.ui.control.NumericEditField
        PorosityLabel                   matlab.ui.control.Label
        GlobalPorosityButtonGroup       matlab.ui.container.ButtonGroup
        GlobalPorosityGaussianButton    matlab.ui.control.RadioButton
        GlobalPorosityUniformButton     matlab.ui.control.RadioButton
        LayerPorosityTab                matlab.ui.container.Tab
        SingleCalculationCheckBox_6     matlab.ui.control.CheckBox
        LayerPorosityGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_2  matlab.ui.control.Label
        LayerPorosityGaussianMinEditField  matlab.ui.control.NumericEditField
        PorsityminLabel                 matlab.ui.control.Label
        LayerPorosityGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel                matlab.ui.control.Label
        LayerPorosityEditField          matlab.ui.control.NumericEditField
        phiEditField_2Label_2           matlab.ui.control.Label
        LayerPorosityButtonGroup        matlab.ui.container.ButtonGroup
        LayerPorosityGaussianButton     matlab.ui.control.RadioButton
        LayerPorosityUniformButton      matlab.ui.control.RadioButton
        PermeabilityTab                 matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        GlobalPermeabilityTab           matlab.ui.container.Tab
        GlobalPermDiryEditField         matlab.ui.control.NumericEditField
        phiEditField_2Label_42          matlab.ui.control.Label
        GlobalPermDiryUnitDropDown      matlab.ui.control.DropDown
        GlobalPermGaussianSingleCalculationCheckBox  matlab.ui.control.CheckBox
        GlobalPermDirzUnitDropDown      matlab.ui.control.DropDown
        GlobalPermDirxUnitDropDown      matlab.ui.control.DropDown
        GlobalPermGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        GlobalPermGaussianMinUnitDropDown  matlab.ui.control.DropDown
        GlobalPermUnitDropDown          matlab.ui.control.DropDown
        GlobalPermDirzEditField         matlab.ui.control.NumericEditField
        phiEditField_2Label_8           matlab.ui.control.Label
        GlobalPermDirxEditField         matlab.ui.control.NumericEditField
        phiEditField_2Label_7           matlab.ui.control.Label
        GlobalPermGaussianStdEditField  matlab.ui.control.NumericEditField
        phiEditField_2Label_6           matlab.ui.control.Label
        GlobalPermGaussianMaxEditField  matlab.ui.control.NumericEditField
        phiEditField_2Label_5           matlab.ui.control.Label
        GlobalPermGaussianMinEditField  matlab.ui.control.NumericEditField
        phiEditField_2Label_4           matlab.ui.control.Label
        GlobalPermEditField             matlab.ui.control.NumericEditField
        phiEditField_2Label_3           matlab.ui.control.Label
        GlobalPermButtonGroup           matlab.ui.container.ButtonGroup
        GlobalPermDirectionalButton     matlab.ui.control.RadioButton
        GlobalPermGaussianButton        matlab.ui.control.RadioButton
        GlobalPermUniformButton         matlab.ui.control.RadioButton
        LayerPermeabilityTab            matlab.ui.container.Tab
        LayerPermDiryEditField          matlab.ui.control.NumericEditField
        phiEditField_2Label_43          matlab.ui.control.Label
        LayerPermDiryUnitDropDown       matlab.ui.control.DropDown
        LayerPermGaussianSingleCalculationCheckBox  matlab.ui.control.CheckBox
        LayerPermDirzUnitDropDown       matlab.ui.control.DropDown
        LayerPermDirxUnitDropDown       matlab.ui.control.DropDown
        LayerPermGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        LayerPermGaussianMinUnitDropDown  matlab.ui.control.DropDown
        LayerPermUnitDropDown           matlab.ui.control.DropDown
        LayerPermDirzEditField          matlab.ui.control.NumericEditField
        phiEditField_2Label_36          matlab.ui.control.Label
        LayerPermDirxEditField          matlab.ui.control.NumericEditField
        phiEditField_2Label_35          matlab.ui.control.Label
        LayerPermGaussianStdEditField   matlab.ui.control.NumericEditField
        phiEditField_2Label_34          matlab.ui.control.Label
        LayerPermGaussianMaxEditField   matlab.ui.control.NumericEditField
        phiEditField_2Label_33          matlab.ui.control.Label
        LayerPermGaussianMinEditField   matlab.ui.control.NumericEditField
        phiEditField_2Label_32          matlab.ui.control.Label
        LayerPermEditField              matlab.ui.control.NumericEditField
        phiEditField_2Label_31          matlab.ui.control.Label
        LayerPermButtonGroup            matlab.ui.container.ButtonGroup
        LayerPermDirectionalButton      matlab.ui.control.RadioButton
        LayerPermGaussianButton         matlab.ui.control.RadioButton
        LayerPermUniformButton          matlab.ui.control.RadioButton
        DensityTab                      matlab.ui.container.Tab
        RockDensityTabGroup             matlab.ui.container.TabGroup
        GlobalDensityTab                matlab.ui.container.Tab
        SingleCalculationCheckBox_2     matlab.ui.control.CheckBox
        GlobalDensityGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        GlobalDensityGaussianMinUnitDropDown  matlab.ui.control.DropDown
        GlobalDensityUnitDropDown       matlab.ui.control.DropDown
        GlobalDensityGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_3  matlab.ui.control.Label
        GlobalDensityGaussianMinEditField  matlab.ui.control.NumericEditField
        PorosityminLabel_2              matlab.ui.control.Label
        GlobalDensityGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel_3              matlab.ui.control.Label
        GlobalDensityEditField          matlab.ui.control.NumericEditField
        PorosityLabel_2                 matlab.ui.control.Label
        GlobalDensityButtonGroup        matlab.ui.container.ButtonGroup
        GlobalDensityGaussianButton     matlab.ui.control.RadioButton
        GlobalDensityUniformButton      matlab.ui.control.RadioButton
        LayerDensityTab                 matlab.ui.container.Tab
        SingleCalculationCheckBox_10    matlab.ui.control.CheckBox
        LayerDensityGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        LayerDensityGaussianMinUnitDropDown  matlab.ui.control.DropDown
        LayerDensityUnitDropDown        matlab.ui.control.DropDown
        LayerDensityGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_4  matlab.ui.control.Label
        LayerDensityGaussianMinEditField  matlab.ui.control.NumericEditField
        PorsityminLabel_2               matlab.ui.control.Label
        LayerDensityGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel_4              matlab.ui.control.Label
        LayerDensityEditField           matlab.ui.control.NumericEditField
        phiEditField_2Label_39          matlab.ui.control.Label
        LayerDensityButtonGroup         matlab.ui.container.ButtonGroup
        LayerDensityGaussianButton      matlab.ui.control.RadioButton
        LayerDensityUniformButton       matlab.ui.control.RadioButton
        ThermalConductivityTab          matlab.ui.container.Tab
        RockCondTabGroup                matlab.ui.container.TabGroup
        GlobalCondTab                   matlab.ui.container.Tab
        SingleCalculationCheckBox_3     matlab.ui.control.CheckBox
        GlobalCondGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        GlobalCondGaussianMinUnitDropDown  matlab.ui.control.DropDown
        GlobalCondUnitDropDown          matlab.ui.control.DropDown
        GlobalCondGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_5  matlab.ui.control.Label
        GlobalCondGaussianMinEditField  matlab.ui.control.NumericEditField
        PorosityminLabel_3              matlab.ui.control.Label
        GlobalCondGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel_5              matlab.ui.control.Label
        GlobalCondEditField             matlab.ui.control.NumericEditField
        PorosityLabel_3                 matlab.ui.control.Label
        GlobalCondButtonGroup           matlab.ui.container.ButtonGroup
        GlobalCondGaussianButton        matlab.ui.control.RadioButton
        GlobalCondUniformButton         matlab.ui.control.RadioButton
        LayerCondTab                    matlab.ui.container.Tab
        SingleCalculationCheckBox_9     matlab.ui.control.CheckBox
        LayerCondGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        LayerCondGaussianMinUnitDropDown  matlab.ui.control.DropDown
        LayerCondUnitDropDown           matlab.ui.control.DropDown
        LayerCondGaussianStdEditField   matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_6  matlab.ui.control.Label
        LayerCondGaussianMinEditField   matlab.ui.control.NumericEditField
        PorsityminLabel_3               matlab.ui.control.Label
        LayerCondGaussianMaxEditField   matlab.ui.control.NumericEditField
        PorositymaxLabel_6              matlab.ui.control.Label
        LayerCondEditField              matlab.ui.control.NumericEditField
        phiEditField_2Label_40          matlab.ui.control.Label
        LayerCondButtonGroup            matlab.ui.container.ButtonGroup
        LayerCondGaussianButton         matlab.ui.control.RadioButton
        LayerCondUniformButton          matlab.ui.control.RadioButton
        SpecificHeatCapacityTab         matlab.ui.container.Tab
        RockHeatTabGroup                matlab.ui.container.TabGroup
        GlobalHeatTab                   matlab.ui.container.Tab
        SingleCalculationCheckBox_4     matlab.ui.control.CheckBox
        GlobalHeatGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        GlobalHeatGaussianMinUnitDropDown  matlab.ui.control.DropDown
        GlobalHeatUnitDropDown          matlab.ui.control.DropDown
        GlobalHeatGaussianStdEditField  matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_7  matlab.ui.control.Label
        GlobalHeatGaussianMinEditField  matlab.ui.control.NumericEditField
        PorosityminLabel_4              matlab.ui.control.Label
        GlobalHeatGaussianMaxEditField  matlab.ui.control.NumericEditField
        PorositymaxLabel_7              matlab.ui.control.Label
        GlobalHeatEditField             matlab.ui.control.NumericEditField
        PorosityLabel_4                 matlab.ui.control.Label
        GlobalHeatButtonGroup           matlab.ui.container.ButtonGroup
        GlobalHeatGaussianButton        matlab.ui.control.RadioButton
        GlobalHeatUniformButton         matlab.ui.control.RadioButton
        LayerHeatTab                    matlab.ui.container.Tab
        SingleCalculationCheckBox_8     matlab.ui.control.CheckBox
        LayerHeatGaussianMaxUnitDropDown  matlab.ui.control.DropDown
        LayerHeatGaussianMinUnitDropDown  matlab.ui.control.DropDown
        LayerHeatUnitDropDown           matlab.ui.control.DropDown
        LayerHeatGaussianStdEditField   matlab.ui.control.NumericEditField
        StandardDeviationEditFieldLabel_8  matlab.ui.control.Label
        LayerHeatGaussianMinEditField   matlab.ui.control.NumericEditField
        PorsityminLabel_4               matlab.ui.control.Label
        LayerHeatGaussianMaxEditField   matlab.ui.control.NumericEditField
        PorositymaxLabel_8              matlab.ui.control.Label
        LayerHeatEditField              matlab.ui.control.NumericEditField
        phiEditField_2Label_41          matlab.ui.control.Label
        LayerHeatButtonGroup            matlab.ui.container.ButtonGroup
        LayerHeatGaussianButton         matlab.ui.control.RadioButton
        LayerHeatUniformButton          matlab.ui.control.RadioButton
        VisualizationPanel              matlab.ui.container.Panel
        VisualizeLayerOnlyCheckBox      matlab.ui.control.CheckBox
        RockVisualizationButtonGroup    matlab.ui.container.ButtonGroup
        RockVisualizationHeatButton     matlab.ui.control.RadioButton
        RockVisualizationCondButton     matlab.ui.control.RadioButton
        RockVisualizationDensityButton  matlab.ui.control.RadioButton
        RockVisualizationPermButton     matlab.ui.control.RadioButton
        RockVisualizationPorosityButton  matlab.ui.control.RadioButton
        FluidTab                        matlab.ui.container.Tab
        GeneralPropertiesPanel          matlab.ui.container.Panel
        FluidEOSCheckBox                matlab.ui.control.CheckBox
        FluidViscosityEditField         matlab.ui.control.NumericEditField
        ViscosityEditFieldLabel         matlab.ui.control.Label
        FluidDensityEditField           matlab.ui.control.NumericEditField
        DensityEditFieldLabel           matlab.ui.control.Label
        FluidViscosityUnitDropDown      matlab.ui.control.DropDown
        FluidDensityUnitDropDown        matlab.ui.control.DropDown
        ThermalPropertiesPanel          matlab.ui.container.Panel
        FluidCondEditField              matlab.ui.control.NumericEditField
        ThermalconductivityEditFieldLabel  matlab.ui.control.Label
        FluidHeatEditField              matlab.ui.control.NumericEditField
        HeatcapacityEditFieldLabel      matlab.ui.control.Label
        FluidCondUnitDropDown           matlab.ui.control.DropDown
        FluidHeatUnitDropDown           matlab.ui.control.DropDown
        TypePanel                       matlab.ui.container.Panel
        FluidTypeButtonGroup            matlab.ui.container.ButtonGroup
        FluidTypeCO2Button              matlab.ui.control.RadioButton
        FluidTypeBrineButton            matlab.ui.control.RadioButton
        FluidTypeWaterButton            matlab.ui.control.RadioButton
        GravityPanel                    matlab.ui.container.Panel
        FluidGravityzUnitDropDown       matlab.ui.control.DropDown
        FluidGravityyUnitDropDown       matlab.ui.control.DropDown
        FluidGravityxUnitDropDown       matlab.ui.control.DropDown
        FluidGravityCheckBox            matlab.ui.control.CheckBox
        xLabel_26                       matlab.ui.control.Label
        FluidGravityzEditField          matlab.ui.control.NumericEditField
        xLabel_25                       matlab.ui.control.Label
        FluidGravityyEditField          matlab.ui.control.NumericEditField
        xLabel_24                       matlab.ui.control.Label
        FluidGravityxEditField          matlab.ui.control.NumericEditField
        BCsTab                          matlab.ui.container.Tab
        BCThermalBCPanel                matlab.ui.container.Panel
        BCThermalButtonGroup            matlab.ui.container.ButtonGroup
        BCThermalHeatFluxButton         matlab.ui.control.RadioButton
        BCThermalTempButton             matlab.ui.control.RadioButton
        BCzMaxHeatFluxLabel             matlab.ui.control.Label
        BCzMaxTempLabel                 matlab.ui.control.Label
        BCzMinHeatFluxLabel             matlab.ui.control.Label
        BCzMinTempLabel                 matlab.ui.control.Label
        BCyMaxHeatFluxLabel             matlab.ui.control.Label
        BCyMaxTempLabel                 matlab.ui.control.Label
        BCyMinHeatFluxLabel             matlab.ui.control.Label
        BCyMinTempLabel                 matlab.ui.control.Label
        BCxMaxHeatFluxLabel             matlab.ui.control.Label
        BCxMaxTempLabel                 matlab.ui.control.Label
        BCxMinHeatFluxLabel             matlab.ui.control.Label
        BCxMinTempLabel                 matlab.ui.control.Label
        BCVisualizationPanel            matlab.ui.container.Panel
        BCVisualizationButtonGroup      matlab.ui.container.ButtonGroup
        BCVisualizationThermButton      matlab.ui.control.RadioButton
        BCVisualizationHydraulicButton  matlab.ui.control.RadioButton
        BCxMinHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCxMinHeatFluxEditField         matlab.ui.control.NumericEditField
        BCxMinTempUnitDropDown          matlab.ui.control.DropDown
        BCxMinTempEditField             matlab.ui.control.NumericEditField
        BCxMaxHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCxMaxHeatFluxEditField         matlab.ui.control.NumericEditField
        BCxMaxTempUnitDropDown          matlab.ui.control.DropDown
        BCxMaxTempEditField             matlab.ui.control.NumericEditField
        BCyMinHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCyMinHeatFluxEditField         matlab.ui.control.NumericEditField
        BCyMinTempUnitDropDown          matlab.ui.control.DropDown
        BCyMinTempEditField             matlab.ui.control.NumericEditField
        BCyMaxTempUnitDropDown          matlab.ui.control.DropDown
        BCyMaxTempEditField             matlab.ui.control.NumericEditField
        BCyMaxHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCyMaxHeatFluxEditField         matlab.ui.control.NumericEditField
        BCzMinHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCzMinHeatFluxEditField         matlab.ui.control.NumericEditField
        BCzMinTempUnitDropDown          matlab.ui.control.DropDown
        BCzMinTempEditField             matlab.ui.control.NumericEditField
        BCzMaxTempUnitDropDown          matlab.ui.control.DropDown
        BCzMaxTempEditField             matlab.ui.control.NumericEditField
        BCzMaxHeatFluxUnitDropDown      matlab.ui.control.DropDown
        BCzMaxHeatFluxEditField         matlab.ui.control.NumericEditField
        BCxMinFluxUnitDropDown          matlab.ui.control.DropDown
        BCxMinFluxEditField             matlab.ui.control.NumericEditField
        BCxMinPressureUnitDropDown      matlab.ui.control.DropDown
        BCxMinPressureEditField         matlab.ui.control.NumericEditField
        BCxMaxFluxUnitDropDown          matlab.ui.control.DropDown
        BCxMaxFluxEditField             matlab.ui.control.NumericEditField
        BCxMaxPressureUnitDropDown      matlab.ui.control.DropDown
        BCxMaxPressureEditField         matlab.ui.control.NumericEditField
        BCyMinFluxUnitDropDown          matlab.ui.control.DropDown
        BCyMinFluxEditField             matlab.ui.control.NumericEditField
        BCyMinPressureUnitDropDown      matlab.ui.control.DropDown
        BCyMinPressureEditField         matlab.ui.control.NumericEditField
        BCyMaxPressureUnitDropDown      matlab.ui.control.DropDown
        BCyMaxPressureEditField         matlab.ui.control.NumericEditField
        BCyMaxFluxUnitDropDown          matlab.ui.control.DropDown
        BCyMaxFluxEditField             matlab.ui.control.NumericEditField
        BCzMinFluxUnitDropDown          matlab.ui.control.DropDown
        BCzMinFluxEditField             matlab.ui.control.NumericEditField
        BCzMinPressureUnitDropDown      matlab.ui.control.DropDown
        BCzMinPressureEditField         matlab.ui.control.NumericEditField
        BCxMinCheckBox                  matlab.ui.control.CheckBox
        BCxMaxCheckBox                  matlab.ui.control.CheckBox
        BCyMaxCheckBox                  matlab.ui.control.CheckBox
        BCyMinCheckBox                  matlab.ui.control.CheckBox
        BCzMinCheckBox                  matlab.ui.control.CheckBox
        BCzMaxCheckBox                  matlab.ui.control.CheckBox
        BCzMaxPressureUnitDropDown      matlab.ui.control.DropDown
        BCzMaxPressureEditField         matlab.ui.control.NumericEditField
        BCzMaxFluxUnitDropDown          matlab.ui.control.DropDown
        BCzMaxFluxEditField             matlab.ui.control.NumericEditField
        BCzMaxButtonGroup               matlab.ui.container.ButtonGroup
        BCzMaxFluxButton                matlab.ui.control.RadioButton
        BCzMaxPressureButton            matlab.ui.control.RadioButton
        BCzMinButtonGroup               matlab.ui.container.ButtonGroup
        BCzMinFluxButton                matlab.ui.control.RadioButton
        BCzMinPressureButton            matlab.ui.control.RadioButton
        BCyMaxButtonGroup               matlab.ui.container.ButtonGroup
        BCyMaxFluxButton                matlab.ui.control.RadioButton
        BCyMaxPressureButton            matlab.ui.control.RadioButton
        BCyMinButtonGroup               matlab.ui.container.ButtonGroup
        BCyMinFluxButton                matlab.ui.control.RadioButton
        BCyMinPressureButton            matlab.ui.control.RadioButton
        BCxMaxButtonGroup               matlab.ui.container.ButtonGroup
        BCxMaxPressureButton            matlab.ui.control.RadioButton
        BCxMaxFluxButton                matlab.ui.control.RadioButton
        BCxMinButtonGroup               matlab.ui.container.ButtonGroup
        BCxMinFluxButton                matlab.ui.control.RadioButton
        BCxMinPressureButton            matlab.ui.control.RadioButton
        ReservoirTab                    matlab.ui.container.Tab
        InitialConditionsPanel          matlab.ui.container.Panel
        EqualizationTimeUnitDropDown    matlab.ui.control.DropDown
        EqualizationTimeEditField       matlab.ui.control.NumericEditField
        EqualizationtimeLabel           matlab.ui.control.Label
        InitializeWithEquilibriumCheckBox  matlab.ui.control.CheckBox
        ReservoirInitTempEditField      matlab.ui.control.NumericEditField
        ReservoirTemperatureEditFieldLabel  matlab.ui.control.Label
        ReservoirInitPressureEditField  matlab.ui.control.NumericEditField
        ReservoirPressureEditFieldLabel  matlab.ui.control.Label
        ReservoirInitTempUnitDropDown   matlab.ui.control.DropDown
        ReservoirInitPressureUnitDropDown  matlab.ui.control.DropDown
        WellsTab                        matlab.ui.container.Tab
        WellsProducerPanel              matlab.ui.container.Panel
        ProdWellTopOfPerforationEditField  matlab.ui.control.NumericEditField
        FluidTemperatureLabel_3         matlab.ui.control.Label
        ControlTypeLabel_2              matlab.ui.control.Label
        ProdWellPointyEditField         matlab.ui.control.NumericEditField
        xLabel_23                       matlab.ui.control.Label
        ProdWellPointzEditField         matlab.ui.control.NumericEditField
        xLabel_22                       matlab.ui.control.Label
        ProdWellPointxEditField         matlab.ui.control.NumericEditField
        xLabel_21                       matlab.ui.control.Label
        up                              matlab.ui.control.Label
        ProdWellBHPEditField            matlab.ui.control.NumericEditField
        ProdWellRateEditField           matlab.ui.control.NumericEditField
        ProdWellRadiusEditField         matlab.ui.control.NumericEditField
        RadiusEditField_2Label          matlab.ui.control.Label
        ProdWellNameEditField           matlab.ui.control.EditField
        WellNameEditField_2Label        matlab.ui.control.Label
        ProdWellBHPUnitDropDown         matlab.ui.control.DropDown
        ProdWellRateUnitDropDown        matlab.ui.control.DropDown
        ProdWellControlButtonGroup      matlab.ui.container.ButtonGroup
        ProdWellConstantBHPButton       matlab.ui.control.RadioButton
        ProdWellConstantRateButton      matlab.ui.control.RadioButton
        ProdWellRadiusUnitDropDown      matlab.ui.control.DropDown
        WellsInjectorPanel              matlab.ui.container.Panel
        InjWellTopOfPerforationEditField  matlab.ui.control.NumericEditField
        FluidTemperatureLabel_2         matlab.ui.control.Label
        ControlTypeLabel                matlab.ui.control.Label
        InjWellTempEditField            matlab.ui.control.NumericEditField
        FluidTemperatureLabel           matlab.ui.control.Label
        InjWellTempUnitDropDown         matlab.ui.control.DropDown
        InjWellPointyEditField          matlab.ui.control.NumericEditField
        xLabel_20                       matlab.ui.control.Label
        InjWellPointzEditField          matlab.ui.control.NumericEditField
        xLabel_19                       matlab.ui.control.Label
        InjWellPointxEditField          matlab.ui.control.NumericEditField
        xLabel_18                       matlab.ui.control.Label
        BottomHolePointLabel            matlab.ui.control.Label
        InjWellBHPUnitDropDown          matlab.ui.control.DropDown
        InjWellRateUnitDropDown         matlab.ui.control.DropDown
        InjWellBHPEditField             matlab.ui.control.NumericEditField
        InjWellRateEditField            matlab.ui.control.NumericEditField
        InjWellControlButtonGroup       matlab.ui.container.ButtonGroup
        InjWellConstantBHPButton        matlab.ui.control.RadioButton
        InjWellConstantRateButton       matlab.ui.control.RadioButton
        InjWellRadiusUnitDropDown       matlab.ui.control.DropDown
        InjWellRadiusEditField          matlab.ui.control.NumericEditField
        RadiusEditFieldLabel            matlab.ui.control.Label
        InjWellNameEditField            matlab.ui.control.EditField
        WellNameEditFieldLabel          matlab.ui.control.Label
        SimulationTab                   matlab.ui.container.Tab
        RampupStepsEditField            matlab.ui.control.NumericEditField
        RampupStepsLabel                matlab.ui.control.Label
        TimestepsPanel                  matlab.ui.container.Panel
        TimestepUnitDropDown            matlab.ui.control.DropDown
        EndTimeUnitDropDown             matlab.ui.control.DropDown
        TimestepEditField               matlab.ui.control.NumericEditField
        RampupStepsLabel_3              matlab.ui.control.Label
        EndTimeEditField                matlab.ui.control.NumericEditField
        RampupStepsLabel_2              matlab.ui.control.Label
        TimestepTypeButtonGroup         matlab.ui.container.ButtonGroup
        GeometricRampupButton           matlab.ui.control.RadioButton
        FixedTimestepsButton            matlab.ui.control.RadioButton
        PlausibilityLimitsPanel         matlab.ui.container.Panel
        MaxReservoirTempEditField       matlab.ui.control.NumericEditField
        MaxReservoirTemperatureEditFieldLabel  matlab.ui.control.Label
        MaxReservoirTempUnitDropDown    matlab.ui.control.DropDown
        MaxReservoirPressureEditField   matlab.ui.control.NumericEditField
        MaxReservoirPressureEditField_2Label  matlab.ui.control.Label
        MaxReservoirPressureUnitDropDown  matlab.ui.control.DropDown
        MinReservoirTempEditField       matlab.ui.control.NumericEditField
        MinReservoirTemperatureEditFieldLabel  matlab.ui.control.Label
        MinReservoirPressureEditField   matlab.ui.control.NumericEditField
        MinReservoirPressureEditFieldLabel  matlab.ui.control.Label
        MinReservoirTempUnitDropDown    matlab.ui.control.DropDown
        MinReservoirPressureUnitDropDown  matlab.ui.control.DropDown
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
        task Task % Task object
        callingApp % Description
        globalVars % Description
        globalConsts
        oldTaskName
    end

    methods (Access = private)
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                     General App Methods                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods needed for app control.       

        function closeAppPrompt(app)
            decision = quitWithoutSavingDialog(app.GraphicalTaskBuilderUIFigure);
            switch decision
                case 'Save'
                    app.saveTask();
                    app.closeApp();
                case 'Continue'
                    app.closeApp();
            end
        end

        function closeApp(app)
            app.callingApp.showApp();
            app.delete();
        end
        
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                    Task Control Methods                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        function updateTaskParams(app)
            % Task meta 
            app.task.generic.name = app.TaskNameEditField.Value;
            app.task.generic.notes = cells2str(app.TaskNotesTextArea.Value);

            if app.TaskKeepExistingCheckBox.Value
                app.task.generic.created = datetime;
                app.task = app.task.updateParentDirName(app.globalVars.DEFAULT_TASK_STORAGE_DATETIME_FORMAT);
            end

            % General
            params.general.builderPreview = app.PreviewCheckBox.Value;

            % Grid
            params.grid.global.size = app.getGridSizeVector();
            params.grid.global.depth = app.GridDepthEditField.Value * mapUnitToMRST(app.GridDepthUnitDropDown.Value);
            params.grid.global.dims = app.getGridDimsVector();

            params.grid.layer.enable = app.GridLayerActiveCheckBox.Value;
            params.grid.layer.point = app.getLayerPoint();
            params.grid.layer.thickness = app.GridLayerThicknessEditField.Value;
            params.grid.layer.angles = app.getLayerAngles();

            % Rock
            params.rock.visualization.property = app.getRockVisualizationButtonConfig();
            params.rock.visualization.layerOnly = app.VisualizeLayerOnlyCheckBox.Value;
            
            params.rock.global.porosity.type = app.getGlobalPorosityButtonConfig();
            params.rock.global.porosity.uniform = app.GlobalPorosityEditField.Value;
            params.rock.global.porosity.gaussian.min = app.GlobalPorosityGaussianMinEditField.Value;
            params.rock.global.porosity.gaussian.max = app.GlobalPorosityGaussianMaxEditField.Value;
            params.rock.global.porosity.gaussian.std = app.GlobalPorosityGaussianStdEditField.Value;
            params.rock.layer.porosity.type = app.getLayerPorosityButtonConfig();
            params.rock.layer.porosity.uniform = app.LayerPorosityEditField.Value;
            params.rock.layer.porosity.gaussian.min = app.LayerPorosityGaussianMinEditField.Value;
            params.rock.layer.porosity.gaussian.max = app.LayerPorosityGaussianMaxEditField.Value;
            params.rock.layer.porosity.gaussian.std = app.LayerPorosityGaussianStdEditField.Value;
            
            params.rock.global.perm.type = app.getGlobalPermButtonConfig();
            params.rock.global.perm.uniform = app.GlobalPermEditField.Value * mapUnitToMRST(app.GlobalPermUnitDropDown.Value);
            params.rock.global.perm.gaussian.min = app.GlobalPermGaussianMinEditField.Value * mapUnitToMRST(app.GlobalPermUnitDropDown.Value);
            params.rock.global.perm.gaussian.max = app.GlobalPermGaussianMaxEditField.Value * mapUnitToMRST(app.GlobalPermUnitDropDown.Value);
            params.rock.global.perm.gaussian.std = app.GlobalPermGaussianStdEditField.Value;
            params.rock.global.perm.directional = app.getGlobalDirPerm();
            params.rock.layer.perm.type = app.getLayerPermButtonConfig();
            params.rock.layer.perm.uniform = app.LayerPermEditField.Value * mapUnitToMRST(app.LayerPermUnitDropDown.Value);
            params.rock.layer.perm.gaussian.min = app.LayerPermGaussianMinEditField.Value * mapUnitToMRST(app.LayerPermUnitDropDown.Value);
            params.rock.layer.perm.gaussian.max = app.LayerPermGaussianMaxEditField.Value * mapUnitToMRST(app.LayerPermUnitDropDown.Value);
            params.rock.layer.perm.gaussian.std = app.LayerPermGaussianStdEditField.Value;
            params.rock.layer.perm.directional = app.getLayerDirPerm();
            
            params.rock.global.density.type = app.getGlobalDensityButtonConfig();
            params.rock.global.density.uniform = app.GlobalDensityEditField.Value * mapUnitToMRST(app.GlobalDensityUnitDropDown.Value);        
            params.rock.global.density.gaussian.min = app.GlobalDensityGaussianMinEditField.Value * mapUnitToMRST(app.GlobalDensityGaussianMinUnitDropDown.Value);
            params.rock.global.density.gaussian.max = app.GlobalDensityGaussianMaxEditField.Value * mapUnitToMRST(app.GlobalDensityGaussianMaxUnitDropDown.Value);
            params.rock.global.density.gaussian.std = app.GlobalDensityGaussianStdEditField.Value;
            params.rock.layer.density.type = app.getLayerDensityButtonConfig();
            params.rock.layer.density.uniform = app.LayerDensityEditField.Value * mapUnitToMRST(app.LayerDensityUnitDropDown.Value); 
            params.rock.layer.density.gaussian.min = app.LayerDensityGaussianMinEditField.Value * mapUnitToMRST(app.LayerDensityGaussianMinUnitDropDown.Value);
            params.rock.layer.density.gaussian.max = app.LayerDensityGaussianMaxEditField.Value * mapUnitToMRST(app.LayerDensityGaussianMaxUnitDropDown.Value);
            params.rock.layer.density.gaussian.std = app.LayerDensityGaussianStdEditField.Value;
            
            params.rock.global.thermalCond.type = app.getGlobalCondButtonConfig();
            params.rock.global.thermalCond.uniform = app.GlobalCondEditField.Value * mapUnitToMRST(app.GlobalCondUnitDropDown.Value);        
            params.rock.global.thermalCond.gaussian.min = app.GlobalCondGaussianMinEditField.Value * mapUnitToMRST(app.GlobalCondGaussianMinUnitDropDown.Value);
            params.rock.global.thermalCond.gaussian.max = app.GlobalCondGaussianMaxEditField.Value * mapUnitToMRST(app.GlobalCondGaussianMaxUnitDropDown.Value);
            params.rock.global.thermalCond.gaussian.std = app.GlobalCondGaussianStdEditField.Value;
            params.rock.layer.thermalCond.type = app.getLayerCondButtonConfig();
            params.rock.layer.thermalCond.uniform = app.LayerCondEditField.Value * mapUnitToMRST(app.LayerCondUnitDropDown.Value); 
            params.rock.layer.thermalCond.gaussian.min = app.LayerCondGaussianMinEditField.Value * mapUnitToMRST(app.LayerCondGaussianMinUnitDropDown.Value);
            params.rock.layer.thermalCond.gaussian.max = app.LayerCondGaussianMaxEditField.Value * mapUnitToMRST(app.LayerCondGaussianMaxUnitDropDown.Value);
            params.rock.layer.thermalCond.gaussian.std = app.LayerCondGaussianStdEditField.Value;
            
            params.rock.global.heatCapacity.type = app.getGlobalHeatButtonConfig();
            params.rock.global.heatCapacity.uniform = app.GlobalHeatEditField.Value * mapUnitToMRST(app.GlobalHeatUnitDropDown.Value);        
            params.rock.global.heatCapacity.gaussian.min = app.GlobalHeatGaussianMinEditField.Value * mapUnitToMRST(app.GlobalHeatGaussianMinUnitDropDown.Value);
            params.rock.global.heatCapacity.gaussian.max = app.GlobalHeatGaussianMaxEditField.Value * mapUnitToMRST(app.GlobalHeatGaussianMaxUnitDropDown.Value);
            params.rock.global.heatCapacity.gaussian.std = app.GlobalHeatGaussianStdEditField.Value;
            params.rock.layer.heatCapacity.type = app.getLayerHeatButtonConfig();
            params.rock.layer.heatCapacity.uniform = app.LayerHeatEditField.Value * mapUnitToMRST(app.LayerHeatUnitDropDown.Value); 
            params.rock.layer.heatCapacity.gaussian.min = app.LayerHeatGaussianMinEditField.Value * mapUnitToMRST(app.LayerHeatGaussianMinUnitDropDown.Value);
            params.rock.layer.heatCapacity.gaussian.max = app.LayerHeatGaussianMaxEditField.Value * mapUnitToMRST(app.LayerHeatGaussianMaxUnitDropDown.Value);
            params.rock.layer.heatCapacity.gaussian.std = app.LayerHeatGaussianStdEditField.Value;

            % Fluid
            params.fluid.useEOS = app.FluidEOSCheckBox.Value;
            params.fluid.density = app.FluidDensityEditField.Value * mapUnitToMRST(app.FluidDensityUnitDropDown.Value);
            params.fluid.viscosity = app.FluidViscosityEditField.Value * mapUnitToMRST(app.FluidViscosityUnitDropDown.Value);
            params.fluid.gravity.enabled = app.FluidGravityCheckBox.Value;
            params.fluid.gravity.vector = app.getGravityVector();
            params.fluid.heatCapacity = app.FluidHeatEditField.Value * mapUnitToMRST(app.FluidHeatUnitDropDown.Value);
            params.fluid.thermalCond = app.FluidCondEditField.Value * mapUnitToMRST(app.FluidCondUnitDropDown.Value);

            % BC
            params.bc.thermalType = app.getBCThermalButtonConfig();
            params.bc.visualization = app.getBCVisualizationButtonConfig();
            params.bc.enable = app.getActiveBCs();
            params.bc.type = app.getBCTypeButtonConfig();
            params.bc.pressure = app.getBCsPressure();
            params.bc.flux = app.getBCsFlux();
            params.bc.temperature = app.getBCsTemperature();
            params.bc.heatFlux = app.getBCsHeatFlux();

            % Reservoir
            params.reservoir.pressure = app.ReservoirInitPressureEditField.Value * mapUnitToMRST(app.ReservoirInitPressureUnitDropDown.Value);
            params.reservoir.temperature = temperature2kelvin(app.ReservoirInitTempEditField.Value, app.ReservoirInitTempUnitDropDown.Value);

            % Wells
            params.wells.inj.name = app.InjWellNameEditField.Value;
            params.wells.inj.radius = app.InjWellRadiusEditField.Value * mapUnitToMRST(app.InjWellRadiusUnitDropDown.Value);
            params.wells.inj.control.type = app.getInjWellOperatingCondButtonConfig();
            params.wells.inj.control.rate = app.InjWellRateEditField.Value * mapUnitToMRST(app.InjWellRateUnitDropDown.Value);
            params.wells.inj.control.pressure = app.InjWellBHPEditField.Value * mapUnitToMRST(app.InjWellBHPUnitDropDown.Value);
            params.wells.inj.temperature = temperature2kelvin(app.InjWellTempEditField.Value, app.InjWellTempUnitDropDown.Value);
            params.wells.inj.point = app.getInjWellBottomPoint();
            params.wells.inj.topOfPerf = app.InjWellTopOfPerforationEditField.Value;
            
            params.wells.prod.name = app.ProdWellNameEditField.Value;
            params.wells.prod.radius = app.ProdWellRadiusEditField.Value * mapUnitToMRST(app.ProdWellRadiusUnitDropDown.Value);
            params.wells.prod.control.type = app.getProdWellOperatingCondButtonConfig();
            params.wells.prod.control.rate = app.ProdWellRateEditField.Value * mapUnitToMRST(app.ProdWellRateUnitDropDown.Value);
            params.wells.prod.control.pressure = app.ProdWellBHPEditField.Value * mapUnitToMRST(app.ProdWellBHPUnitDropDown.Value);
            params.wells.prod.point = app.getProdWellBottomPoint();
            params.wells.prod.topOfPerf = app.ProdWellTopOfPerforationEditField.Value;

            % Simulation
            params.simulation.endTime = app.EndTimeEditField.Value * mapUnitToMRST(app.EndTimeUnitDropDown.Value);
            params.simulation.timestep = app.TimestepEditField.Value * mapUnitToMRST(app.TimestepUnitDropDown.Value);
            params.simulation.timestepType = app.getTimestepTypeConfig();
            params.simulation.timeRampupSteps = app.RampupStepsEditField.Value;
            params.simulation.pressureLimits = app.getPressureLimitsConfig();
            params.simulation.temperatureLimits = app.getTempLimitsConfig();
            params.simulation.initializeWithEquilibrium = app.InitializeWithEquilibriumCheckBox.Value;
            params.simulation.equilibriumTime = app.EqualizationTimeEditField.Value * mapUnitToMRST(app.EqualizationTimeUnitDropDown.Value);
            
            app.task.params = params;
        end

        function loadTaskParams(app)
            
            % Task meta 
            app.TaskNameEditField.Value = app.task.generic.name;
            app.TaskNotesTextArea.Value = str2cells(app.task.generic.notes);
            app.TaskCreatedEditField.Value = datestr(app.task.generic.created, app.globalVars.DISPLAY_DATETIME_FORMAT);

            params = app.task.params;
            
            % General
            app.PreviewCheckBox.Value = params.general.builderPreview;

            % Grid
            app.setGridSizeVector(params.grid.global.size);
            app.GridDepthEditField.Value = params.grid.global.depth;
            app.setGridDimsVector(params.grid.global.dims);

            app.GridLayerActiveCheckBox.Value = params.grid.layer.enable;
            app.setLayerPoint(params.grid.layer.point);
            app.GridLayerThicknessEditField.Value = params.grid.layer.thickness;
            app.setLayerAngles(params.grid.layer.angles);

            % Rock
            app.setRockVisualizationButtonConfig(params.rock.visualization.property);
            app.VisualizeLayerOnlyCheckBox.Value = params.rock.visualization.layerOnly;
            
            app.setGlobalPorosityButtonConfig(params.rock.global.porosity.type);
            app.GlobalPorosityEditField.Value = params.rock.global.porosity.uniform;
            app.GlobalPorosityGaussianMinEditField.Value = params.rock.global.porosity.gaussian.min;
            app.GlobalPorosityGaussianMaxEditField.Value = params.rock.global.porosity.gaussian.max;
            app.GlobalPorosityGaussianStdEditField.Value = params.rock.global.porosity.gaussian.std;
            app.setLayerPorosityButtonConfig(params.rock.layer.porosity.type);
            app.LayerPorosityEditField.Value = params.rock.layer.porosity.uniform;
            app.LayerPorosityGaussianMinEditField.Value = params.rock.layer.porosity.gaussian.min;
            app.LayerPorosityGaussianMaxEditField.Value = params.rock.layer.porosity.gaussian.max;
            app.LayerPorosityGaussianStdEditField.Value = params.rock.layer.porosity.gaussian.std;
            
            app.setGlobalPermButtonConfig(params.rock.global.perm.type);
            app.GlobalPermEditField.Value = params.rock.global.perm.uniform * mapUnitToMRSTReverse(app.GlobalPermUnitDropDown.Value);
            app.GlobalPermGaussianMinEditField.Value = params.rock.global.perm.gaussian.min * mapUnitToMRSTReverse(app.GlobalPermGaussianMinUnitDropDown.Value);
            app.GlobalPermGaussianMaxEditField.Value = params.rock.global.perm.gaussian.max * mapUnitToMRSTReverse(app.GlobalPermGaussianMaxUnitDropDown.Value);
            app.GlobalPermGaussianStdEditField.Value = params.rock.global.perm.gaussian.std;
            app.setGlobalDirPerm(params.rock.global.perm.directional);
            app.setLayerPermButtonConfig(params.rock.layer.perm.type);
            app.LayerPermEditField.Value = params.rock.layer.perm.uniform * mapUnitToMRSTReverse(app.LayerPermUnitDropDown.Value);
            app.LayerPermGaussianMinEditField.Value = params.rock.layer.perm.gaussian.min * mapUnitToMRSTReverse(app.LayerPermGaussianMinUnitDropDown.Value);
            app.LayerPermGaussianMaxEditField.Value = params.rock.layer.perm.gaussian.max * mapUnitToMRSTReverse(app.LayerPermGaussianMaxUnitDropDown.Value);
            app.LayerPermGaussianStdEditField.Value = params.rock.layer.perm.gaussian.std;
            app.setLayerDirPerm(params.rock.layer.perm.directional);
            
            app.setGlobalDensityButtonConfig(params.rock.global.density.type);
            app.GlobalDensityEditField.Value = params.rock.global.density.uniform * mapUnitToMRSTReverse(app.GlobalDensityUnitDropDown.Value);        
            app.GlobalDensityGaussianMinEditField.Value = params.rock.global.density.gaussian.min * mapUnitToMRSTReverse(app.GlobalDensityGaussianMinUnitDropDown.Value);
            app.GlobalDensityGaussianMaxEditField.Value = params.rock.global.density.gaussian.max * mapUnitToMRSTReverse(app.GlobalDensityGaussianMaxUnitDropDown.Value);
            app.GlobalDensityGaussianStdEditField.Value = params.rock.global.density.gaussian.std;
            app.setLayerDensityButtonConfig(params.rock.layer.density.type);
            app.LayerDensityEditField.Value = params.rock.layer.density.uniform * mapUnitToMRSTReverse(app.LayerDensityUnitDropDown.Value); 
            app.LayerDensityGaussianMinEditField.Value = params.rock.layer.density.gaussian.min * mapUnitToMRSTReverse(app.LayerDensityGaussianMinUnitDropDown.Value);
            app.LayerDensityGaussianMaxEditField.Value = params.rock.layer.density.gaussian.max * mapUnitToMRSTReverse(app.LayerDensityGaussianMaxUnitDropDown.Value);
            app.LayerDensityGaussianStdEditField.Value = params.rock.layer.density.gaussian.std;
            
            app.setGlobalCondButtonConfig(params.rock.global.thermalCond.type);
            app.GlobalCondEditField.Value = params.rock.global.thermalCond.uniform * mapUnitToMRSTReverse(app.GlobalCondUnitDropDown.Value);        
            app.GlobalCondGaussianMinEditField.Value = params.rock.global.thermalCond.gaussian.min * mapUnitToMRSTReverse(app.GlobalCondGaussianMinUnitDropDown.Value);
            app.GlobalCondGaussianMaxEditField.Value = params.rock.global.thermalCond.gaussian.max * mapUnitToMRSTReverse(app.GlobalCondGaussianMaxUnitDropDown.Value);
            app.GlobalCondGaussianStdEditField.Value = params.rock.global.thermalCond.gaussian.std;
            app.setLayerCondButtonConfig(params.rock.layer.thermalCond.type);
            app.LayerCondEditField.Value = params.rock.layer.thermalCond.uniform * mapUnitToMRSTReverse(app.LayerCondUnitDropDown.Value); 
            app.LayerCondGaussianMinEditField.Value = params.rock.layer.thermalCond.gaussian.min * mapUnitToMRSTReverse(app.LayerCondGaussianMinUnitDropDown.Value);
            app.LayerCondGaussianMaxEditField.Value = params.rock.layer.thermalCond.gaussian.max * mapUnitToMRSTReverse(app.LayerCondGaussianMaxUnitDropDown.Value);
            app.LayerCondGaussianStdEditField.Value = params.rock.layer.thermalCond.gaussian.std;
            
            app.setGlobalHeatButtonConfig(params.rock.global.heatCapacity.type);
            app.GlobalHeatEditField.Value = params.rock.global.heatCapacity.uniform * mapUnitToMRSTReverse(app.GlobalHeatUnitDropDown.Value);        
            app.GlobalHeatGaussianMinEditField.Value = params.rock.global.heatCapacity.gaussian.min * mapUnitToMRSTReverse(app.GlobalHeatGaussianMinUnitDropDown.Value);
            app.GlobalHeatGaussianMaxEditField.Value = params.rock.global.heatCapacity.gaussian.max * mapUnitToMRSTReverse(app.GlobalHeatGaussianMaxUnitDropDown.Value);
            app.GlobalHeatGaussianStdEditField.Value = params.rock.global.heatCapacity.gaussian.std;
            app.setLayerHeatButtonConfig(params.rock.layer.heatCapacity.type);
            app.LayerHeatEditField.Value = params.rock.layer.heatCapacity.uniform * mapUnitToMRSTReverse(app.LayerHeatUnitDropDown.Value); 
            app.LayerHeatGaussianMinEditField.Value = params.rock.layer.heatCapacity.gaussian.min * mapUnitToMRSTReverse(app.LayerHeatGaussianMinUnitDropDown.Value);
            app.LayerHeatGaussianMaxEditField.Value = params.rock.layer.heatCapacity.gaussian.max * mapUnitToMRSTReverse(app.LayerHeatGaussianMaxUnitDropDown.Value);
            app.LayerHeatGaussianStdEditField.Value = params.rock.layer.heatCapacity.gaussian.std;

            % Fluid
            app.FluidEOSCheckBox.Value = params.fluid.useEOS;
            app.FluidDensityEditField.Value = params.fluid.density * mapUnitToMRSTReverse(app.FluidDensityUnitDropDown.Value);
            app.FluidViscosityEditField.Value = params.fluid.viscosity * mapUnitToMRSTReverse(app.FluidViscosityUnitDropDown.Value);
            app.FluidGravityCheckBox.Value = params.fluid.gravity.enabled;
            app.setGravityVector(params.fluid.gravity.vector);
            app.FluidHeatEditField.Value = params.fluid.heatCapacity * mapUnitToMRSTReverse(app.FluidHeatUnitDropDown.Value);
            app.FluidCondEditField.Value = params.fluid.thermalCond * mapUnitToMRSTReverse(app.FluidCondUnitDropDown.Value);

            % BC
            app.setBCThermalButtonConfig(params.bc.thermalType);
            app.setBCVisualizationButtonConfig(params.bc.visualization);
            app.setActiveBCs(params.bc.enable);
            app.setBCTypeButtonConfig(params.bc.type);
            app.setBCsPressure(params.bc.pressure);
            app.setBCsFlux(params.bc.flux);
            app.setBCsTemperature(params.bc.temperature);
            app.setBCsHeatFlux(params.bc.heatFlux);

            % Reservoir
            app.ReservoirInitPressureEditField.Value = params.reservoir.pressure * mapUnitToMRSTReverse(app.ReservoirInitPressureUnitDropDown.Value);
            app.ReservoirInitTempEditField.Value = kelvin2temperature(params.reservoir.temperature, app.ReservoirInitTempUnitDropDown.Value);

            % Wells
            app.InjWellNameEditField.Value = params.wells.inj.name;
            app.InjWellRadiusEditField.Value = params.wells.inj.radius * mapUnitToMRSTReverse(app.InjWellRadiusUnitDropDown.Value);
            app.setInjWellOperatingCondButtonConfig(params.wells.inj.control.type);
            app.InjWellRateEditField.Value = params.wells.inj.control.rate * mapUnitToMRSTReverse(app.InjWellRateUnitDropDown.Value);
            app.InjWellBHPEditField.Value = params.wells.inj.control.pressure * mapUnitToMRSTReverse(app.InjWellBHPUnitDropDown.Value);
            app.InjWellTempEditField.Value = kelvin2temperature(params.wells.inj.temperature, app.InjWellTempUnitDropDown.Value);
            app.setInjWellBottomPoint(params.wells.inj.point);
            if isfield(params.wells.inj, 'topOfPerf') % TODO for future versions: Remove compatibility statement
                app.InjWellTopOfPerforationEditField.Value = params.wells.inj.topOfPerf;
            else
                app.InjWellTopOfPerforationEditField.Value = app.globalVars.DEFAULT_WELLS_INJ_TOP_OF_PERF;
            end

            app.ProdWellNameEditField.Value = params.wells.prod.name;
            app.ProdWellRadiusEditField.Value = params.wells.prod.radius * mapUnitToMRSTReverse(app.ProdWellRadiusUnitDropDown.Value);
            app.setProdWellOperatingCondButtonConfig(params.wells.prod.control.type);
            app.ProdWellRateEditField.Value = params.wells.prod.control.rate * mapUnitToMRSTReverse(app.ProdWellRateUnitDropDown.Value);
            app.ProdWellBHPEditField.Value = params.wells.prod.control.pressure * mapUnitToMRSTReverse(app.ProdWellBHPUnitDropDown.Value);
            app.setProdWellBottomPoint(params.wells.prod.point);
            if isfield(params.wells.prod, 'topOfPerf') % TODO for future versions: Remove compatibility statement
                app.ProdWellTopOfPerforationEditField.Value = params.wells.prod.topOfPerf;
            else
                app.ProdWellTopOfPerforationEditField.Value = app.globalVars.DEFAULT_WELLS_PROD_TOP_OF_PERF;
            end

            % Simulation
            app.EndTimeEditField.Value = params.simulation.endTime * mapUnitToMRSTReverse(app.EndTimeUnitDropDown.Value);
            app.TimestepEditField.Value = params.simulation.timestep * mapUnitToMRSTReverse(app.TimestepUnitDropDown.Value);
            app.setTimestepTypeConfig(params.simulation.timestepType);
            app.RampupStepsEditField.Value = params.simulation.timeRampupSteps;
            app.setPressureLimitsConfig(params.simulation.pressureLimits);
            app.setTempLimitsConfig(params.simulation.temperatureLimits);
            app.InitializeWithEquilibriumCheckBox.Value = params.simulation.initializeWithEquilibrium;
            app.EqualizationTimeEditField.Value = params.simulation.equilibriumTime * mapUnitToMRSTReverse(app.EqualizationTimeUnitDropDown.Value);
        end

        function saveTask(app)            
            app.updateTaskParams();
            storeTask(app.task);
            app.task.clearData();
        end

        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%               GUI Visibility Control Methods                %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods for disabling/enabling GUI features, showing warnings,...
        
        function updateGUIVisibility(app)
            app.updateTaskTabVisibility();
            app.updateDomainTabVisibility();
            app.updateRockTabVisibility();
            app.updateFluidTabVisibility();
            app.updateBCsTabVisibility();
            app.updateReservoirTabVisibility();
            app.updateWellsTabVisibility();
            app.updateSimulationTabVisibility();
        end

        % Task Tab
        function updateTaskTabVisibility(app)
            if isempty(app.oldTaskName) % Task is new
                app.TaskKeepExistingCheckBox.Enable = "off";
            else
                app.TaskKeepExistingCheckBox.Enable = "on";
            end
        end

        % Domain Tab
        function updateDomainTabVisibility(app)
            if app.GridLayerActiveCheckBox.Value
                app.GridLayerPropertiesPanel.Enable = "on";
            else
                app.GridLayerPropertiesPanel.Enable = "off";
            end
        end

        % Rock Tab
        function updateRockTabVisibility(app)

            % Update based on selection buttons
            app.updateRockPorosityGlobalVisibility();
            app.updateRockPermGlobalVisibility();
            app.updateRockDensityGlobalVisibility();
            app.updateRockCondGlobalVisibility();
            app.updateRockHeatGlobalVisibility();
            

            % Update based on layer
            if app.GridLayerActiveCheckBox.Value
                app.VisualizeLayerOnlyCheckBox.Enable = "on";
                app.enableRockPorosityLayerInputs();
                app.enableRockPermLayerInputs();
                app.enableRockDensityLayerInputs();
                app.enableRockCondLayerInputs();
                app.enableRockHeatLayerInputs();
                app.updateRockPorosityLayerVisibility();
                app.updateRockPermLayerVisibility();
                app.updateRockDensityLayerVisibility();
                app.updateRockCondLayerVisibility();
                app.updateRockHeatLayerVisibility();
            else
                app.VisualizeLayerOnlyCheckBox.Enable = "off";
                app.disableRockPorosityLayerInputs();
                app.disableRockPermLayerInputs();
                app.disableRockDensityLayerInputs();
                app.disableRockCondLayerInputs();
                app.disableRockHeatLayerInputs();
            end
        end

        % Fluid Tab
        function updateFluidTabVisibility(app)
            if app.FluidGravityCheckBox.Value
                app.enableGravityInputs();
            else
                app.disableGravityInputs();
            end
            if app.FluidEOSCheckBox.Value
                app.FluidDensityEditField.Enable = "off";
                app.FluidDensityUnitDropDown.Enable = "off";
                app.FluidViscosityEditField.Enable = "off";
                app.FluidViscosityUnitDropDown.Enable = "off";
            else
                app.FluidDensityEditField.Enable = "on";
                app.FluidDensityUnitDropDown.Enable = "on";
                app.FluidViscosityEditField.Enable = "on";
                app.FluidViscosityUnitDropDown.Enable = "on";
            end
        end

        % BCs Tab
        function updateBCsTabVisibility(app)
            if app.BCxMinCheckBox.Value
                app.enablexMinBCInputs();
            else
                app.disablexMinBCInputs();
            end
            if app.BCxMaxCheckBox.Value
                app.enablexMaxBCInputs();
            else
                app.disablexMaxBCInputs();
            end
            if app.BCyMinCheckBox.Value
                app.enableyMinBCInputs();
            else
                app.disableyMinBCInputs();
            end
            if app.BCyMaxCheckBox.Value
                app.enableyMaxBCInputs();
            else
                app.disableyMaxBCInputs();
            end
            if app.BCzMinCheckBox.Value
                app.enablezMinBCInputs();
            else
                app.disablezMinBCInputs();
            end
            if app.BCzMaxCheckBox.Value
                app.enablezMaxBCInputs();
            else
                app.disablezMaxBCInputs();
            end   
        end

        function enableBCsTemp(app)
            app.BCxMinTempEditField.Enable = "on";
            app.BCxMinTempUnitDropDown.Enable = "on";
            app.BCxMaxTempEditField.Enable = "on";
            app.BCxMaxTempUnitDropDown.Enable = "on";
            app.BCyMinTempEditField.Enable = "on";
            app.BCyMinTempUnitDropDown.Enable = "on";
            app.BCyMaxTempEditField.Enable = "on";
            app.BCyMaxTempUnitDropDown.Enable = "on";
            app.BCzMinTempEditField.Enable = "on";
            app.BCzMinTempUnitDropDown.Enable = "on";
            app.BCzMaxTempEditField.Enable = "on";
            app.BCzMaxTempUnitDropDown.Enable = "on";
        end
        function disableBCsTemp(app)
            app.BCxMinTempEditField.Enable = "off";
            app.BCxMinTempUnitDropDown.Enable = "off";
            app.BCxMaxTempEditField.Enable = "off";
            app.BCxMaxTempUnitDropDown.Enable = "off";
            app.BCyMinTempEditField.Enable = "off";
            app.BCyMinTempUnitDropDown.Enable = "off";
            app.BCyMaxTempEditField.Enable = "off";
            app.BCyMaxTempUnitDropDown.Enable = "off";
            app.BCzMinTempEditField.Enable = "off";
            app.BCzMinTempUnitDropDown.Enable = "off";
            app.BCzMaxTempEditField.Enable = "off";
            app.BCzMaxTempUnitDropDown.Enable = "off";
        end
        function enableBCsHeatFlux(app)
            app.BCxMinHeatFluxEditField.Enable = "on";
            app.BCxMinHeatFluxUnitDropDown.Enable = "on";
            app.BCxMaxHeatFluxEditField.Enable = "on";
            app.BCxMaxHeatFluxUnitDropDown.Enable = "on";
            app.BCyMinHeatFluxEditField.Enable = "on";
            app.BCyMinHeatFluxUnitDropDown.Enable = "on";
            app.BCyMaxHeatFluxEditField.Enable = "on";
            app.BCyMaxHeatFluxUnitDropDown.Enable = "on";
            app.BCzMinHeatFluxEditField.Enable = "on";
            app.BCzMinHeatFluxUnitDropDown.Enable = "on";
            app.BCzMaxHeatFluxEditField.Enable = "on";
            app.BCzMaxHeatFluxUnitDropDown.Enable = "on";
        end
        function disableBCsHeatFlux(app)
            app.BCxMinHeatFluxEditField.Enable = "off";
            app.BCxMinHeatFluxUnitDropDown.Enable = "off";
            app.BCxMaxHeatFluxEditField.Enable = "off";
            app.BCxMaxHeatFluxUnitDropDown.Enable = "off";
            app.BCyMinHeatFluxEditField.Enable = "off";
            app.BCyMinHeatFluxUnitDropDown.Enable = "off";
            app.BCyMaxHeatFluxEditField.Enable = "off";
            app.BCyMaxHeatFluxUnitDropDown.Enable = "off";
            app.BCzMinHeatFluxEditField.Enable = "off";
            app.BCzMinHeatFluxUnitDropDown.Enable = "off";
            app.BCzMaxHeatFluxEditField.Enable = "off";
            app.BCzMaxHeatFluxUnitDropDown.Enable = "off";
        end

        function updateBCsHydraulicVisibility(app)
            switch app.BCxMinButtonGroup.SelectedObject
                case app.BCxMinPressureButton
                    app.BCxMinPressureEditField.Enable = "on";
                    app.BCxMinPressureUnitDropDown.Enable = "on";
                    app.BCxMinFluxEditField.Enable = "off";
                    app.BCxMinFluxUnitDropDown.Enable = "off";
                case app.BCxMinFluxButton
                    app.BCxMinPressureEditField.Enable = "off";
                    app.BCxMinPressureUnitDropDown.Enable = "off";
                    app.BCxMinFluxEditField.Enable = "on";
                    app.BCxMinFluxUnitDropDown.Enable = "on";
            end
            switch app.BCxMaxButtonGroup.SelectedObject
                case app.BCxMaxPressureButton
                    app.BCxMaxPressureEditField.Enable = "on";
                    app.BCxMaxPressureUnitDropDown.Enable = "on";
                    app.BCxMaxFluxEditField.Enable = "off";
                    app.BCxMaxFluxUnitDropDown.Enable = "off";
                case app.BCxMaxFluxButton
                    app.BCxMaxPressureEditField.Enable = "off";
                    app.BCxMaxPressureUnitDropDown.Enable = "off";
                    app.BCxMaxFluxEditField.Enable = "on";
                    app.BCxMaxFluxUnitDropDown.Enable = "on";
            end
            switch app.BCyMinButtonGroup.SelectedObject
                case app.BCyMinPressureButton
                    app.BCyMinPressureEditField.Enable = "on";
                    app.BCyMinPressureUnitDropDown.Enable = "on";
                    app.BCyMinFluxEditField.Enable = "off";
                    app.BCyMinFluxUnitDropDown.Enable = "off";
                case app.BCyMinFluxButton
                    app.BCyMinPressureEditField.Enable = "off";
                    app.BCyMinPressureUnitDropDown.Enable = "off";
                    app.BCyMinFluxEditField.Enable = "on";
                    app.BCyMinFluxUnitDropDown.Enable = "on";
            end
            switch app.BCyMaxButtonGroup.SelectedObject
                case app.BCyMaxPressureButton
                    app.BCyMaxPressureEditField.Enable = "on";
                    app.BCyMaxPressureUnitDropDown.Enable = "on";
                    app.BCyMaxFluxEditField.Enable = "off";
                    app.BCyMaxFluxUnitDropDown.Enable = "off";
                case app.BCyMaxFluxButton
                    app.BCyMaxPressureEditField.Enable = "off";
                    app.BCyMaxPressureUnitDropDown.Enable = "off";
                    app.BCyMaxFluxEditField.Enable = "on";
                    app.BCyMaxFluxUnitDropDown.Enable = "on";
            end
            switch app.BCzMinButtonGroup.SelectedObject
                case app.BCzMinPressureButton
                    app.BCzMinPressureEditField.Enable = "on";
                    app.BCzMinPressureUnitDropDown.Enable = "on";
                    app.BCzMinFluxEditField.Enable = "off";
                    app.BCzMinFluxUnitDropDown.Enable = "off";
                case app.BCzMinFluxButton
                    app.BCzMinPressureEditField.Enable = "off";
                    app.BCzMinPressureUnitDropDown.Enable = "off";
                    app.BCzMinFluxEditField.Enable = "on";
                    app.BCzMinFluxUnitDropDown.Enable = "on";
            end
            switch app.BCzMaxButtonGroup.SelectedObject
                case app.BCzMaxPressureButton
                    app.BCzMaxPressureEditField.Enable = "on";
                    app.BCzMaxPressureUnitDropDown.Enable = "on";
                    app.BCzMaxFluxEditField.Enable = "off";
                    app.BCzMaxFluxUnitDropDown.Enable = "off";
                case app.BCzMaxFluxButton
                    app.BCzMaxPressureEditField.Enable = "off";
                    app.BCzMaxPressureUnitDropDown.Enable = "off";
                    app.BCzMaxFluxEditField.Enable = "on";
                    app.BCzMaxFluxUnitDropDown.Enable = "on";
            end
        end
        
        % Reservoir Tab
        function updateReservoirTabVisibility(app)
            if app.InitializeWithEquilibriumCheckBox.Value
                app.EqualizationTimeEditField.Enable = "on";
                app.EqualizationTimeUnitDropDown.Enable = "on";            
            else
                app.EqualizationTimeEditField.Enable = "off";
                app.EqualizationTimeUnitDropDown.Enable = "off";     
            end
        end

        % Wells Tab
        function updateWellsTabVisibility(app)
            switch app.InjWellControlButtonGroup.SelectedObject
                case app.InjWellConstantRateButton
                    app.enableInjWellRateInputs();
                    app.disableInjWellBHPInputs();
                case app.InjWellConstantBHPButton
                    app.disableInjWellRateInputs();
                    app.enableInjWellBHPInputs();
            end
            switch app.ProdWellControlButtonGroup.SelectedObject
                case app.ProdWellConstantRateButton
                    app.enableProdWellRateInputs();
                    app.disableProdWellBHPInputs();
                case app.ProdWellConstantBHPButton
                    app.disableProdWellRateInputs();
                    app.enableProdWellBHPInputs();
            end
        end

        % Simulation Tab
        function updateSimulationTabVisibility(app)
            switch app.TimestepTypeButtonGroup.SelectedObject
                case app.FixedTimestepsButton
                    app.RampupStepsEditField.Enable = "off";
                case app.GeometricRampupButton
                    app.RampupStepsEditField.Enable = "on";
            end
        end
        
        % Rock Layer properties
        function enableRockPorosityLayerInputs(app)
            app.LayerPorosityUniformButton.Enable = "on";
            app.LayerPorosityGaussianButton.Enable = "on";
            app.LayerPorosityEditField.Enable = "on";
            app.LayerPorosityGaussianMinEditField.Enable = "on";
            app.LayerPorosityGaussianMaxEditField.Enable = "on";
            app.LayerPorosityGaussianStdEditField.Enable = "on";
        end
        function disableRockPorosityLayerInputs(app)
            app.LayerPorosityUniformButton.Enable = "off";
            app.LayerPorosityGaussianButton.Enable = "off";
            app.LayerPorosityEditField.Enable = "off";
            app.LayerPorosityGaussianMinEditField.Enable = "off";
            app.LayerPorosityGaussianMaxEditField.Enable = "off";
            app.LayerPorosityGaussianStdEditField.Enable = "off";
        end
        function enableRockPermLayerInputs(app)
            app.LayerPermUniformButton.Enable = "on";
            app.LayerPermGaussianButton.Enable = "on";
            app.LayerPermDirectionalButton.Enable = "on";
            app.LayerPermEditField.Enable = "on";
            app.LayerPermUnitDropDown.Enable = "on";
            app.LayerPermGaussianMinEditField.Enable = "on";
            app.LayerPermGaussianMinUnitDropDown.Enable = "on";
            app.LayerPermGaussianMaxEditField.Enable = "on";
            app.LayerPermGaussianMaxUnitDropDown.Enable = "on";
            app.LayerPermGaussianStdEditField.Enable = "on";
            app.LayerPermDirxEditField.Enable = "on";
            app.LayerPermDirxUnitDropDown.Enable = "on";
            app.LayerPermDiryEditField.Enable = "on";
            app.LayerPermDiryUnitDropDown.Enable = "on";
            app.LayerPermDirzEditField.Enable = "on";
            app.LayerPermDirzUnitDropDown.Enable = "on";
        end
        function disableRockPermLayerInputs(app)
            app.LayerPermUniformButton.Enable = "off";
            app.LayerPermGaussianButton.Enable = "off";
            app.LayerPermDirectionalButton.Enable = "off";
            app.LayerPermEditField.Enable = "off";
            app.LayerPermUnitDropDown.Enable = "off";
            app.LayerPermGaussianMinEditField.Enable = "off";
            app.LayerPermGaussianMinUnitDropDown.Enable = "off";
            app.LayerPermGaussianMaxEditField.Enable = "off";
            app.LayerPermGaussianMaxUnitDropDown.Enable = "off";
            app.LayerPermGaussianStdEditField.Enable = "off";
            app.LayerPermDirxEditField.Enable = "off";
            app.LayerPermDirxUnitDropDown.Enable = "off";
            app.LayerPermDiryEditField.Enable = "off";
            app.LayerPermDiryUnitDropDown.Enable = "off";
            app.LayerPermDirzEditField.Enable = "off";
            app.LayerPermDirzUnitDropDown.Enable = "off";
        end
        function enableRockDensityLayerInputs(app)
            app.LayerDensityUniformButton.Enable = "on";
            app.LayerDensityGaussianButton.Enable = "on";
            app.LayerDensityEditField.Enable = "on";
            app.LayerDensityUnitDropDown.Enable = "on";
            app.LayerDensityGaussianMinEditField.Enable = "on";
            app.LayerDensityGaussianMinUnitDropDown.Enable = "on";
            app.LayerDensityGaussianMaxEditField.Enable = "on";
            app.LayerDensityGaussianMaxUnitDropDown.Enable = "on";
            app.LayerDensityGaussianStdEditField.Enable = "on";
        end
        function disableRockDensityLayerInputs(app)
            app.LayerDensityUniformButton.Enable = "off";
            app.LayerDensityGaussianButton.Enable = "off";
            app.LayerDensityEditField.Enable = "off";
            app.LayerDensityUnitDropDown.Enable = "off";
            app.LayerDensityGaussianMinEditField.Enable = "off";
            app.LayerDensityGaussianMinUnitDropDown.Enable = "off";
            app.LayerDensityGaussianMaxEditField.Enable = "off";
            app.LayerDensityGaussianMaxUnitDropDown.Enable = "off";
            app.LayerDensityGaussianStdEditField.Enable = "off";
        end
        function enableRockCondLayerInputs(app)
            app.LayerCondUniformButton.Enable = "on";
            app.LayerCondGaussianButton.Enable = "on";
            app.LayerCondEditField.Enable = "on";
            app.LayerCondUnitDropDown.Enable = "on";
            app.LayerCondGaussianMinEditField.Enable = "on";
            app.LayerCondGaussianMinUnitDropDown.Enable = "on";
            app.LayerCondGaussianMaxEditField.Enable = "on";
            app.LayerCondGaussianMaxUnitDropDown.Enable = "on";
            app.LayerCondGaussianStdEditField.Enable = "on";
        end
        function disableRockCondLayerInputs(app)
            app.LayerCondUniformButton.Enable = "off";
            app.LayerCondGaussianButton.Enable = "off";
            app.LayerCondEditField.Enable = "off";
            app.LayerCondUnitDropDown.Enable = "off";
            app.LayerCondGaussianMinEditField.Enable = "off";
            app.LayerCondGaussianMinUnitDropDown.Enable = "off";
            app.LayerCondGaussianMaxEditField.Enable = "off";
            app.LayerCondGaussianMaxUnitDropDown.Enable = "off";
            app.LayerCondGaussianStdEditField.Enable = "off";
        end
        function enableRockHeatLayerInputs(app)
            app.LayerHeatUniformButton.Enable = "on";
            app.LayerHeatGaussianButton.Enable = "on";
            app.LayerHeatEditField.Enable = "on";
            app.LayerHeatUnitDropDown.Enable = "on";
            app.LayerHeatGaussianMinEditField.Enable = "on";
            app.LayerHeatGaussianMinUnitDropDown.Enable = "on";
            app.LayerHeatGaussianMaxEditField.Enable = "on";
            app.LayerHeatGaussianMaxUnitDropDown.Enable = "on";
            app.LayerHeatGaussianStdEditField.Enable = "on";
        end
        function disableRockHeatLayerInputs(app)
            app.LayerHeatUniformButton.Enable = "off";
            app.LayerHeatGaussianButton.Enable = "off";
            app.LayerHeatEditField.Enable = "off";
            app.LayerHeatUnitDropDown.Enable = "off";
            app.LayerHeatGaussianMinEditField.Enable = "off";
            app.LayerHeatGaussianMinUnitDropDown.Enable = "off";
            app.LayerHeatGaussianMaxEditField.Enable = "off";
            app.LayerHeatGaussianMaxUnitDropDown.Enable = "off";
            app.LayerHeatGaussianStdEditField.Enable = "off";
        end
        function updateRockPorosityGlobalVisibility(app)
            switch app.GlobalPorosityButtonGroup.SelectedObject
                case app.GlobalPorosityUniformButton
                    app.GlobalPorosityEditField.Enable = "on";
                    app.GlobalPorosityGaussianStdEditField.Enable = "off";
                    app.GlobalPorosityGaussianMinEditField.Enable = "off";
                    app.GlobalPorosityGaussianMaxEditField.Enable = "off";
                case app.GlobalPorosityGaussianButton
                    app.GlobalPorosityEditField.Enable = "off";
                    app.GlobalPorosityGaussianStdEditField.Enable = "on";
                    app.GlobalPorosityGaussianMinEditField.Enable = "on";
                    app.GlobalPorosityGaussianMaxEditField.Enable = "on";
            end
        end
        function updateRockPorosityLayerVisibility(app)
            switch app.LayerPorosityButtonGroup.SelectedObject
                case app.LayerPorosityUniformButton
                    app.LayerPorosityEditField.Enable = "on";
                    app.LayerPorosityGaussianStdEditField.Enable = "off";
                    app.LayerPorosityGaussianMinEditField.Enable = "off";
                    app.LayerPorosityGaussianMaxEditField.Enable = "off";
                case app.LayerPorosityGaussianButton
                    app.LayerPorosityEditField.Enable = "off";
                    app.LayerPorosityGaussianStdEditField.Enable = "on";
                    app.LayerPorosityGaussianMinEditField.Enable = "on";
                    app.LayerPorosityGaussianMaxEditField.Enable = "on";
            end
        end
        function updateRockPermGlobalVisibility(app)
            switch app.GlobalPermButtonGroup.SelectedObject
                case app.GlobalPermUniformButton
                    app.GlobalPermEditField.Enable = "on";
                    app.GlobalPermUnitDropDown.Enable = "on";
                    app.GlobalPermGaussianStdEditField.Enable = "off";
                    app.GlobalPermGaussianMinEditField.Enable = "off";
                    app.GlobalPermGaussianMaxEditField.Enable = "off";
                    app.GlobalPermGaussianMinUnitDropDown.Enable = "off";
                    app.GlobalPermGaussianMaxUnitDropDown.Enable = "off";
                    app.GlobalPermDirxEditField.Enable = "off";
                    app.GlobalPermDiryEditField.Enable = "off";
                    app.GlobalPermDirzEditField.Enable = "off";
                    app.GlobalPermDirxUnitDropDown.Enable = "off";
                    app.GlobalPermDiryUnitDropDown.Enable = "off";
                    app.GlobalPermDirzUnitDropDown.Enable = "off";
                case app.GlobalPermGaussianButton
                    app.GlobalPermEditField.Enable = "off";
                    app.GlobalPermUnitDropDown.Enable = "off";
                    app.GlobalPermGaussianStdEditField.Enable = "on";
                    app.GlobalPermGaussianMinEditField.Enable = "on";
                    app.GlobalPermGaussianMaxEditField.Enable = "on";
                    app.GlobalPermGaussianMinUnitDropDown.Enable = "on";
                    app.GlobalPermGaussianMaxUnitDropDown.Enable = "on";
                    app.GlobalPermDirxEditField.Enable = "off";
                    app.GlobalPermDiryEditField.Enable = "off";
                    app.GlobalPermDirzEditField.Enable = "off";
                    app.GlobalPermDirxUnitDropDown.Enable = "off";
                    app.GlobalPermDiryUnitDropDown.Enable = "off";
                    app.GlobalPermDirzUnitDropDown.Enable = "off";
                case app.GlobalPermDirectionalButton
                    app.GlobalPermEditField.Enable = "off";
                    app.GlobalPermUnitDropDown.Enable = "off";
                    app.GlobalPermGaussianStdEditField.Enable = "off";
                    app.GlobalPermGaussianMinEditField.Enable = "off";
                    app.GlobalPermGaussianMaxEditField.Enable = "off";
                    app.GlobalPermGaussianMinUnitDropDown.Enable = "off";
                    app.GlobalPermGaussianMaxUnitDropDown.Enable = "off";
                    app.GlobalPermDirxEditField.Enable = "on";
                    app.GlobalPermDiryEditField.Enable = "on";
                    app.GlobalPermDirzEditField.Enable = "on";
                    app.GlobalPermDirxUnitDropDown.Enable = "on";
                    app.GlobalPermDiryUnitDropDown.Enable = "on";
                    app.GlobalPermDirzUnitDropDown.Enable = "on";
            end
        end
        function updateRockPermLayerVisibility(app)
            switch app.LayerPermButtonGroup.SelectedObject
                case app.LayerPermUniformButton
                    app.LayerPermEditField.Enable = "on";
                    app.LayerPermUnitDropDown.Enable = "on";
                    app.LayerPermGaussianStdEditField.Enable = "off";
                    app.LayerPermGaussianMinEditField.Enable = "off";
                    app.LayerPermGaussianMaxEditField.Enable = "off";
                    app.LayerPermGaussianMinUnitDropDown.Enable = "off";
                    app.LayerPermGaussianMaxUnitDropDown.Enable = "off";
                    app.LayerPermDirxEditField.Enable = "off";
                    app.LayerPermDiryEditField.Enable = "off";
                    app.LayerPermDirzEditField.Enable = "off";
                    app.LayerPermDirxUnitDropDown.Enable = "off";
                    app.LayerPermDiryUnitDropDown.Enable = "off";
                    app.LayerPermDirzUnitDropDown.Enable = "off";
                case app.LayerPermGaussianButton
                    app.LayerPermEditField.Enable = "off";
                    app.LayerPermUnitDropDown.Enable = "off";
                    app.LayerPermGaussianStdEditField.Enable = "on";
                    app.LayerPermGaussianMinEditField.Enable = "on";
                    app.LayerPermGaussianMaxEditField.Enable = "on";
                    app.LayerPermGaussianMinUnitDropDown.Enable = "on";
                    app.LayerPermGaussianMaxUnitDropDown.Enable = "on";
                    app.LayerPermDirxEditField.Enable = "off";
                    app.LayerPermDiryEditField.Enable = "off";
                    app.LayerPermDirzEditField.Enable = "off";
                    app.LayerPermDirxUnitDropDown.Enable = "off";
                    app.LayerPermDiryUnitDropDown.Enable = "off";
                    app.LayerPermDirzUnitDropDown.Enable = "off";
                case app.LayerPermDirectionalButton
                    app.LayerPermEditField.Enable = "off";
                    app.LayerPermUnitDropDown.Enable = "off";
                    app.LayerPermGaussianStdEditField.Enable = "off";
                    app.LayerPermGaussianMinEditField.Enable = "off";
                    app.LayerPermGaussianMaxEditField.Enable = "off";
                    app.LayerPermGaussianMinUnitDropDown.Enable = "off";
                    app.LayerPermGaussianMaxUnitDropDown.Enable = "off";
                    app.LayerPermDirxEditField.Enable = "on";
                    app.LayerPermDiryEditField.Enable = "on";
                    app.LayerPermDirzEditField.Enable = "on";
                    app.LayerPermDirxUnitDropDown.Enable = "on";
                    app.LayerPermDiryUnitDropDown.Enable = "on";
                    app.LayerPermDirzUnitDropDown.Enable = "on";
            end
        end
        function updateRockDensityGlobalVisibility(app)
            switch app.GlobalDensityButtonGroup.SelectedObject
                case app.GlobalDensityUniformButton
                    app.GlobalDensityEditField.Enable = "on";
                    app.GlobalDensityUnitDropDown.Enable = "on";
                    app.GlobalDensityGaussianStdEditField.Enable = "off";
                    app.GlobalDensityGaussianMinEditField.Enable = "off";
                    app.GlobalDensityGaussianMaxEditField.Enable = "off";
                    app.GlobalDensityGaussianMinUnitDropDown.Enable = "off";
                    app.GlobalDensityGaussianMaxUnitDropDown.Enable = "off";
                case app.GlobalDensityGaussianButton
                    app.GlobalDensityEditField.Enable = "off";
                    app.GlobalDensityUnitDropDown.Enable = "off";
                    app.GlobalDensityGaussianStdEditField.Enable = "on";
                    app.GlobalDensityGaussianMinEditField.Enable = "on";
                    app.GlobalDensityGaussianMaxEditField.Enable = "on";
                    app.GlobalDensityGaussianMinUnitDropDown.Enable = "on";
                    app.GlobalDensityGaussianMaxUnitDropDown.Enable = "on";
            end
        end
        function updateRockDensityLayerVisibility(app)
            switch app.LayerDensityButtonGroup.SelectedObject
                case app.LayerDensityUniformButton
                    app.LayerDensityEditField.Enable = "on";
                    app.LayerDensityUnitDropDown.Enable = "on";
                    app.LayerDensityGaussianStdEditField.Enable = "off";
                    app.LayerDensityGaussianMinEditField.Enable = "off";
                    app.LayerDensityGaussianMaxEditField.Enable = "off";
                    app.LayerDensityGaussianMinUnitDropDown.Enable = "off";
                    app.LayerDensityGaussianMaxUnitDropDown.Enable = "off";
                case app.LayerDensityGaussianButton
                    app.LayerDensityEditField.Enable = "off";
                    app.LayerDensityUnitDropDown.Enable = "off";
                    app.LayerDensityGaussianStdEditField.Enable = "on";
                    app.LayerDensityGaussianMinEditField.Enable = "on";
                    app.LayerDensityGaussianMaxEditField.Enable = "on";
                    app.LayerDensityGaussianMinUnitDropDown.Enable = "on";
                    app.LayerDensityGaussianMaxUnitDropDown.Enable = "on";
            end
        end
        function updateRockCondGlobalVisibility(app)
            switch app.GlobalCondButtonGroup.SelectedObject
                case app.GlobalCondUniformButton
                    app.GlobalCondEditField.Enable = "on";
                    app.GlobalCondUnitDropDown.Enable = "on";
                    app.GlobalCondGaussianStdEditField.Enable = "off";
                    app.GlobalCondGaussianMinEditField.Enable = "off";
                    app.GlobalCondGaussianMaxEditField.Enable = "off";
                    app.GlobalCondGaussianMinUnitDropDown.Enable = "off";
                    app.GlobalCondGaussianMaxUnitDropDown.Enable = "off";
                case app.GlobalCondGaussianButton
                    app.GlobalCondEditField.Enable = "off";
                    app.GlobalCondUnitDropDown.Enable = "off";
                    app.GlobalCondGaussianStdEditField.Enable = "on";
                    app.GlobalCondGaussianMinEditField.Enable = "on";
                    app.GlobalCondGaussianMaxEditField.Enable = "on";
                    app.GlobalCondGaussianMinUnitDropDown.Enable = "on";
                    app.GlobalCondGaussianMaxUnitDropDown.Enable = "on";
            end
        end
        function updateRockCondLayerVisibility(app)
            switch app.LayerCondButtonGroup.SelectedObject
                case app.LayerCondUniformButton
                    app.LayerCondEditField.Enable = "on";
                    app.LayerCondUnitDropDown.Enable = "on";
                    app.LayerCondGaussianStdEditField.Enable = "off";
                    app.LayerCondGaussianMinEditField.Enable = "off";
                    app.LayerCondGaussianMaxEditField.Enable = "off";
                    app.LayerCondGaussianMinUnitDropDown.Enable = "off";
                    app.LayerCondGaussianMaxUnitDropDown.Enable = "off";
                case app.LayerCondGaussianButton
                    app.LayerCondEditField.Enable = "off";
                    app.LayerCondUnitDropDown.Enable = "off";
                    app.LayerCondGaussianStdEditField.Enable = "on";
                    app.LayerCondGaussianMinEditField.Enable = "on";
                    app.LayerCondGaussianMaxEditField.Enable = "on";
                    app.LayerCondGaussianMinUnitDropDown.Enable = "on";
                    app.LayerCondGaussianMaxUnitDropDown.Enable = "on";
            end
        end
        function updateRockHeatGlobalVisibility(app)
            switch app.GlobalHeatButtonGroup.SelectedObject
                case app.GlobalHeatUniformButton
                    app.GlobalHeatEditField.Enable = "on";
                    app.GlobalHeatUnitDropDown.Enable = "on";
                    app.GlobalHeatGaussianStdEditField.Enable = "off";
                    app.GlobalHeatGaussianMinEditField.Enable = "off";
                    app.GlobalHeatGaussianMaxEditField.Enable = "off";
                    app.GlobalHeatGaussianMinUnitDropDown.Enable = "off";
                    app.GlobalHeatGaussianMaxUnitDropDown.Enable = "off";
                case app.GlobalHeatGaussianButton
                    app.GlobalHeatEditField.Enable = "off";
                    app.GlobalHeatUnitDropDown.Enable = "off";
                    app.GlobalHeatGaussianStdEditField.Enable = "on";
                    app.GlobalHeatGaussianMinEditField.Enable = "on";
                    app.GlobalHeatGaussianMaxEditField.Enable = "on";
                    app.GlobalHeatGaussianMinUnitDropDown.Enable = "on";
                    app.GlobalHeatGaussianMaxUnitDropDown.Enable = "on";
            end
        end
        function updateRockHeatLayerVisibility(app)
            switch app.LayerHeatButtonGroup.SelectedObject
                case app.LayerHeatUniformButton
                    app.LayerHeatEditField.Enable = "on";
                    app.LayerHeatUnitDropDown.Enable = "on";
                    app.LayerHeatGaussianStdEditField.Enable = "off";
                    app.LayerHeatGaussianMinEditField.Enable = "off";
                    app.LayerHeatGaussianMaxEditField.Enable = "off";
                    app.LayerHeatGaussianMinUnitDropDown.Enable = "off";
                    app.LayerHeatGaussianMaxUnitDropDown.Enable = "off";
                case app.LayerHeatGaussianButton
                    app.LayerHeatEditField.Enable = "off";
                    app.LayerHeatUnitDropDown.Enable = "off";
                    app.LayerHeatGaussianStdEditField.Enable = "on";
                    app.LayerHeatGaussianMinEditField.Enable = "on";
                    app.LayerHeatGaussianMaxEditField.Enable = "on";
                    app.LayerHeatGaussianMinUnitDropDown.Enable = "on";
                    app.LayerHeatGaussianMaxUnitDropDown.Enable = "on";
            end
        end

        % Gravity properties
        function enableGravityInputs(app)
            app.FluidGravityxEditField.Enable = "on";
            app.FluidGravityxUnitDropDown.Enable = "on";
            app.FluidGravityyEditField.Enable = "on";
            app.FluidGravityyUnitDropDown.Enable = "on";
            app.FluidGravityzEditField.Enable = "on";
            app.FluidGravityzUnitDropDown.Enable = "on";
        end
        function disableGravityInputs(app)
            app.FluidGravityxEditField.Enable = "off";
            app.FluidGravityxUnitDropDown.Enable = "off";
            app.FluidGravityyEditField.Enable = "off";
            app.FluidGravityyUnitDropDown.Enable = "off";
            app.FluidGravityzEditField.Enable = "off";
            app.FluidGravityzUnitDropDown.Enable = "off";
        end

        % Lamps
        function turnLampOff(app, lamp)
            lamp.Color = app.globalConsts.LAMP_OFF_COLOR;
        end
        function turnLampOnOK(app, lamp)
            lamp.Color = app.globalConsts.LAMP_OK_COLOR;
        end
        function turnLampOnWarning(app, lamp)
            lamp.Color = app.globalConsts.LAMP_WARNING_COLOR;
        end
                
        % Well properties
        function enableInjWellRateInputs(app)
            app.InjWellRateEditField.Enable = true;
            app.InjWellRateUnitDropDown.Enable = true;
        end
        function disableInjWellRateInputs(app)
            app.InjWellRateEditField.Enable = false;
            app.InjWellRateUnitDropDown.Enable = false;
        end
        function enableInjWellBHPInputs(app)
            app.InjWellBHPEditField.Enable = true;
            app.InjWellBHPUnitDropDown.Enable = true;
        end        
        function disableInjWellBHPInputs(app)
            app.InjWellBHPEditField.Enable = false;
            app.InjWellBHPUnitDropDown.Enable = false;
        end
        
        % Production well
        function enableProdWellRateInputs(app)
            app.ProdWellRateEditField.Enable = true;
            app.ProdWellRateUnitDropDown.Enable = true;
        end
        function disableProdWellRateInputs(app)
            app.ProdWellRateEditField.Enable = false;
            app.ProdWellRateUnitDropDown.Enable = false;
        end
        function enableProdWellBHPInputs(app)
            app.ProdWellBHPEditField.Enable = true;
            app.ProdWellBHPUnitDropDown.Enable = true;
        end
        function disableProdWellBHPInputs(app)
            app.ProdWellBHPEditField.Enable = false;
            app.ProdWellBHPUnitDropDown.Enable = false;
        end
        
        % BCs
        function enablexMinBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCxMinTempLabel.Enable = "on";
                    app.BCxMinTempEditField.Enable = "on";
                    app.BCxMinTempUnitDropDown.Enable = "on";
                    app.BCxMinHeatFluxLabel.Enable = "off";
                    app.BCxMinHeatFluxEditField.Enable = "off";
                    app.BCxMinHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCxMinTempLabel.Enable = "off";
                    app.BCxMinTempEditField.Enable = "off";
                    app.BCxMinTempUnitDropDown.Enable = "off";
                    app.BCxMinHeatFluxLabel.Enable = "on";
                    app.BCxMinHeatFluxEditField.Enable = "on";
                    app.BCxMinHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCxMinPressureButton.Enable = "on";
            app.BCxMinFluxButton.Enable = "on";
            switch app.BCxMinButtonGroup.SelectedObject
                case app.BCxMinPressureButton
                    app.BCxMinPressureEditField.Enable = "on";
                    app.BCxMinPressureUnitDropDown.Enable = "on";
                    app.BCxMinFluxEditField.Enable = "off";
                    app.BCxMinFluxUnitDropDown.Enable = "off";
                case app.BCxMinFluxButton
                    app.BCxMinPressureEditField.Enable = "off";
                    app.BCxMinPressureUnitDropDown.Enable = "off";
                    app.BCxMinFluxEditField.Enable = "on";
                    app.BCxMinFluxUnitDropDown.Enable = "on";
            end
        end
        function disablexMinBCInputs(app)
            app.BCxMinPressureButton.Enable = false;
            app.BCxMinPressureEditField.Enable = false;
            app.BCxMinPressureUnitDropDown.Enable = false;
            app.BCxMinFluxButton.Enable = false;
            app.BCxMinFluxEditField.Enable = false;
            app.BCxMinFluxUnitDropDown.Enable = false;
            app.BCxMinTempLabel.Enable = false;
            app.BCxMinTempEditField.Enable = false;
            app.BCxMinTempUnitDropDown.Enable = false;
            app.BCxMinHeatFluxLabel.Enable = false;
            app.BCxMinHeatFluxEditField.Enable = false;
            app.BCxMinHeatFluxUnitDropDown.Enable = false;
        end
        function enablexMaxBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCxMaxTempLabel.Enable = "on";
                    app.BCxMaxTempEditField.Enable = "on";
                    app.BCxMaxTempUnitDropDown.Enable = "on";
                    app.BCxMaxHeatFluxLabel.Enable = "off";
                    app.BCxMaxHeatFluxEditField.Enable = "off";
                    app.BCxMaxHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCxMaxTempLabel.Enable = "off";
                    app.BCxMaxTempEditField.Enable = "off";
                    app.BCxMaxTempUnitDropDown.Enable = "off";
                    app.BCxMaxHeatFluxLabel.Enable = "on";
                    app.BCxMaxHeatFluxEditField.Enable = "on";
                    app.BCxMaxHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCxMaxPressureButton.Enable = "on";
            app.BCxMaxFluxButton.Enable = "on";
            switch app.BCxMaxButtonGroup.SelectedObject
                case app.BCxMaxPressureButton
                    app.BCxMaxPressureEditField.Enable = "on";
                    app.BCxMaxPressureUnitDropDown.Enable = "on";
                    app.BCxMaxFluxEditField.Enable = "off";
                    app.BCxMaxFluxUnitDropDown.Enable = "off";
                case app.BCxMaxFluxButton
                    app.BCxMaxPressureEditField.Enable = "off";
                    app.BCxMaxPressureUnitDropDown.Enable = "off";
                    app.BCxMaxFluxEditField.Enable = "on";
                    app.BCxMaxFluxUnitDropDown.Enable = "on";
            end
        end
        function disablexMaxBCInputs(app)
            app.BCxMaxPressureButton.Enable = false;
            app.BCxMaxPressureEditField.Enable = false;
            app.BCxMaxPressureUnitDropDown.Enable = false;
            app.BCxMaxFluxButton.Enable = false;
            app.BCxMaxFluxEditField.Enable = false;
            app.BCxMaxFluxUnitDropDown.Enable = false;
            app.BCxMaxTempLabel.Enable = false;
            app.BCxMaxTempEditField.Enable = false;
            app.BCxMaxTempUnitDropDown.Enable = false;
            app.BCxMaxHeatFluxLabel.Enable = false;
            app.BCxMaxHeatFluxEditField.Enable = false;
            app.BCxMaxHeatFluxUnitDropDown.Enable = false;
        end
        function enableyMinBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCyMinTempLabel.Enable = "on";
                    app.BCyMinTempEditField.Enable = "on";
                    app.BCyMinTempUnitDropDown.Enable = "on";
                    app.BCyMinHeatFluxLabel.Enable = "off";
                    app.BCyMinHeatFluxEditField.Enable = "off";
                    app.BCyMinHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCyMinTempLabel.Enable = "off";
                    app.BCyMinTempEditField.Enable = "off";
                    app.BCyMinTempUnitDropDown.Enable = "off";
                    app.BCyMinHeatFluxLabel.Enable = "on";
                    app.BCyMinHeatFluxEditField.Enable = "on";
                    app.BCyMinHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCyMinPressureButton.Enable = "on";
            app.BCyMinFluxButton.Enable = "on";
            switch app.BCyMinButtonGroup.SelectedObject
                case app.BCyMinPressureButton
                    app.BCyMinPressureEditField.Enable = "on";
                    app.BCyMinPressureUnitDropDown.Enable = "on";
                    app.BCyMinFluxEditField.Enable = "off";
                    app.BCyMinFluxUnitDropDown.Enable = "off";
                case app.BCyMinFluxButton
                    app.BCyMinPressureEditField.Enable = "off";
                    app.BCyMinPressureUnitDropDown.Enable = "off";
                    app.BCyMinFluxEditField.Enable = "on";
                    app.BCyMinFluxUnitDropDown.Enable = "on";
            end
        end
        function disableyMinBCInputs(app)
            app.BCyMinPressureButton.Enable = false;
            app.BCyMinPressureEditField.Enable = false;
            app.BCyMinPressureUnitDropDown.Enable = false;
            app.BCyMinFluxButton.Enable = false;
            app.BCyMinFluxEditField.Enable = false;
            app.BCyMinFluxUnitDropDown.Enable = false;
            app.BCyMinTempLabel.Enable = false;
            app.BCyMinTempEditField.Enable = false;
            app.BCyMinTempUnitDropDown.Enable = false;
            app.BCyMinHeatFluxLabel.Enable = false;
            app.BCyMinHeatFluxEditField.Enable = false;
            app.BCyMinHeatFluxUnitDropDown.Enable = false;
        end
        function enableyMaxBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCyMaxTempLabel.Enable = "on";
                    app.BCyMaxTempEditField.Enable = "on";
                    app.BCyMaxTempUnitDropDown.Enable = "on";
                    app.BCyMaxHeatFluxLabel.Enable = "off";
                    app.BCyMaxHeatFluxEditField.Enable = "off";
                    app.BCyMaxHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCyMaxTempLabel.Enable = "off";
                    app.BCyMaxTempEditField.Enable = "off";
                    app.BCyMaxTempUnitDropDown.Enable = "off";
                    app.BCyMaxHeatFluxLabel.Enable = "on";
                    app.BCyMaxHeatFluxEditField.Enable = "on";
                    app.BCyMaxHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCyMaxPressureButton.Enable = "on";
            app.BCyMaxFluxButton.Enable = "on";
            switch app.BCyMaxButtonGroup.SelectedObject
                case app.BCyMaxPressureButton
                    app.BCyMaxPressureEditField.Enable = "on";
                    app.BCyMaxPressureUnitDropDown.Enable = "on";
                    app.BCyMaxFluxEditField.Enable = "off";
                    app.BCyMaxFluxUnitDropDown.Enable = "off";
                case app.BCyMaxFluxButton
                    app.BCyMaxPressureEditField.Enable = "off";
                    app.BCyMaxPressureUnitDropDown.Enable = "off";
                    app.BCyMaxFluxEditField.Enable = "on";
                    app.BCyMaxFluxUnitDropDown.Enable = "on";
            end
        end
        function disableyMaxBCInputs(app)
            app.BCyMaxPressureButton.Enable = false;
            app.BCyMaxPressureEditField.Enable = false;
            app.BCyMaxPressureUnitDropDown.Enable = false;
            app.BCyMaxFluxButton.Enable = false;
            app.BCyMaxFluxEditField.Enable = false;
            app.BCyMaxFluxUnitDropDown.Enable = false;
            app.BCyMaxTempLabel.Enable = false;
            app.BCyMaxTempEditField.Enable = false;
            app.BCyMaxTempUnitDropDown.Enable = false;
            app.BCyMaxHeatFluxLabel.Enable = false;
            app.BCyMaxHeatFluxEditField.Enable = false;
            app.BCyMaxHeatFluxUnitDropDown.Enable = false;
        end
        function enablezMinBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCzMinTempLabel.Enable = "on";
                    app.BCzMinTempEditField.Enable = "on";
                    app.BCzMinTempUnitDropDown.Enable = "on";
                    app.BCzMinHeatFluxLabel.Enable = "off";
                    app.BCzMinHeatFluxEditField.Enable = "off";
                    app.BCzMinHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCzMinTempLabel.Enable = "off";
                    app.BCzMinTempEditField.Enable = "off";
                    app.BCzMinTempUnitDropDown.Enable = "off";
                    app.BCzMinHeatFluxLabel.Enable = "on";
                    app.BCzMinHeatFluxEditField.Enable = "on";
                    app.BCzMinHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCzMinPressureButton.Enable = "on";
            app.BCzMinFluxButton.Enable = "on";
            switch app.BCzMinButtonGroup.SelectedObject
                case app.BCzMinPressureButton
                    app.BCzMinPressureEditField.Enable = "on";
                    app.BCzMinPressureUnitDropDown.Enable = "on";
                    app.BCzMinFluxEditField.Enable = "off";
                    app.BCzMinFluxUnitDropDown.Enable = "off";
                case app.BCzMinFluxButton
                    app.BCzMinPressureEditField.Enable = "off";
                    app.BCzMinPressureUnitDropDown.Enable = "off";
                    app.BCzMinFluxEditField.Enable = "on";
                    app.BCzMinFluxUnitDropDown.Enable = "on";
            end
        end
        function disablezMinBCInputs(app)
            app.BCzMinPressureButton.Enable = false;
            app.BCzMinPressureEditField.Enable = false;
            app.BCzMinPressureUnitDropDown.Enable = false;
            app.BCzMinFluxButton.Enable = false;
            app.BCzMinFluxEditField.Enable = false;
            app.BCzMinFluxUnitDropDown.Enable = false;
            app.BCzMinTempLabel.Enable = false;
            app.BCzMinTempEditField.Enable = false;
            app.BCzMinTempUnitDropDown.Enable = false;
            app.BCzMinHeatFluxLabel.Enable = false;
            app.BCzMinHeatFluxEditField.Enable = false;
            app.BCzMinHeatFluxUnitDropDown.Enable = false;
        end
        function enablezMaxBCInputs(app)
            % Thermal
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalTempButton
                    app.BCzMaxTempLabel.Enable = "on";
                    app.BCzMaxTempEditField.Enable = "on";
                    app.BCzMaxTempUnitDropDown.Enable = "on";
                    app.BCzMaxHeatFluxLabel.Enable = "off";
                    app.BCzMaxHeatFluxEditField.Enable = "off";
                    app.BCzMaxHeatFluxUnitDropDown.Enable = "off";
                case app.BCThermalHeatFluxButton
                    app.BCzMaxTempLabel.Enable = "off";
                    app.BCzMaxTempEditField.Enable = "off";
                    app.BCzMaxTempUnitDropDown.Enable = "off";
                    app.BCzMaxHeatFluxLabel.Enable = "on";
                    app.BCzMaxHeatFluxEditField.Enable = "on";
                    app.BCzMaxHeatFluxUnitDropDown.Enable = "on";
            end
            % Hydraulic
            app.BCzMaxPressureButton.Enable = "on";
            app.BCzMaxFluxButton.Enable = "on";
            switch app.BCzMaxButtonGroup.SelectedObject
                case app.BCzMaxPressureButton
                    app.BCzMaxPressureEditField.Enable = "on";
                    app.BCzMaxPressureUnitDropDown.Enable = "on";
                    app.BCzMaxFluxEditField.Enable = "off";
                    app.BCzMaxFluxUnitDropDown.Enable = "off";
                case app.BCzMaxFluxButton
                    app.BCzMaxPressureEditField.Enable = "off";
                    app.BCzMaxPressureUnitDropDown.Enable = "off";
                    app.BCzMaxFluxEditField.Enable = "on";
                    app.BCzMaxFluxUnitDropDown.Enable = "on";
            end
        end
        function disablezMaxBCInputs(app)
            app.BCzMaxPressureButton.Enable = false;
            app.BCzMaxPressureEditField.Enable = false;
            app.BCzMaxPressureUnitDropDown.Enable = false;
            app.BCzMaxFluxButton.Enable = false;
            app.BCzMaxFluxEditField.Enable = false;
            app.BCzMaxFluxUnitDropDown.Enable = false;
            app.BCzMaxTempLabel.Enable = false;
            app.BCzMaxTempEditField.Enable = false;
            app.BCzMaxTempUnitDropDown.Enable = false;
            app.BCzMaxHeatFluxLabel.Enable = false;
            app.BCzMaxHeatFluxEditField.Enable = false;
            app.BCzMaxHeatFluxUnitDropDown.Enable = false;
        end

        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                  GUI Input Control Methods                  %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods controlling the user input limitations (e.g. max/min values).
        
        function updateAllLimits(app)
            % Temperatures
            app.updateTemperatureMinLimit(app.BCxMinTempEditField, app.BCxMinTempUnitDropDown);
            app.updateTemperatureMinLimit(app.BCxMaxTempEditField, app.BCxMaxTempUnitDropDown);
            app.updateTemperatureMinLimit(app.BCyMinTempEditField, app.BCyMinTempUnitDropDown);
            app.updateTemperatureMinLimit(app.BCyMaxTempEditField, app.BCyMaxTempUnitDropDown);
            app.updateTemperatureMinLimit(app.BCzMinTempEditField, app.BCzMinTempUnitDropDown);
            app.updateTemperatureMinLimit(app.BCzMaxTempEditField, app.BCzMaxTempUnitDropDown);

            app.updateTemperatureMinLimit(app.ReservoirInitTempEditField, app.ReservoirInitTempUnitDropDown);

            app.updateTemperatureMinLimit(app.InjWellTempEditField, app.InjWellTempUnitDropDown);

            app.updateTemperatureMinLimit(app.MinReservoirTempEditField, app.MinReservoirTempUnitDropDown);
            app.updateTemperatureMinLimit(app.MaxReservoirTempEditField, app.MaxReservoirTempUnitDropDown);

            % Wells
            app.updateWellsLimits();
            
        end
        
        function updateWellsLimits(app)
            app.updateInjWellPositionLimits();
            app.updateInjWellTopOfPerfLimits();
            app.updateProdWellPositionLimits();
            app.updateProdWellTopOfPerfLimits();
        end

        function updateTemperatureMinLimit(app, tempField, unitField)
            minKelvin = 0; % K
            unit = unitField.Value;
            minInUnit = kelvin2temperature(minKelvin, unit);
            if tempField.Value < minInUnit + 1
                tempField.Value = minInUnit + 1;
            end
            tempField.Limits = [minInUnit tempField.Limits(2)];
        end

        function updateInjWellPositionLimits(app)
            currentPos = app.getInjWellBottomPoint();
            gridDims = app.getGridDimsVector();
            if any(currentPos > gridDims)
                app.setInjWellBottomPoint([1 1 1]);
            end
            app.InjWellPointxEditField.Limits = [1 gridDims(1)];
            app.InjWellPointyEditField.Limits = [1 gridDims(2)];
            app.InjWellPointzEditField.Limits = [1 gridDims(3)];
        end

        function updateProdWellPositionLimits(app)
            currentPos = app.getProdWellBottomPoint();
            gridDims = app.getGridDimsVector();
            if any(currentPos > gridDims)
                app.setProdWellBottomPoint([1 1 1]);
            end
            app.ProdWellPointxEditField.Limits = [1 gridDims(1)];
            app.ProdWellPointyEditField.Limits = [1 gridDims(2)];
            app.ProdWellPointzEditField.Limits = [1 gridDims(3)];
        end

        function updateInjWellTopOfPerfLimits(app)
            % Call updateInjWellPositionLimits first!
            currentPos = app.getInjWellBottomPoint();
            if app.InjWellTopOfPerforationEditField.Value > currentPos(3)
                app.InjWellTopOfPerforationEditField.Value = 1;
            end
            app.InjWellTopOfPerforationEditField.Limits = [1 currentPos(3)];
        end

        function updateProdWellTopOfPerfLimits(app)
            % Call updateProdWellPositionLimits first!
            currentPos = app.getProdWellBottomPoint();
            if app.ProdWellTopOfPerforationEditField.Value > currentPos(3)
                app.ProdWellTopOfPerforationEditField.Value = 1;
            end
            app.ProdWellTopOfPerforationEditField.Limits = [1 currentPos(3)];
        end

        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                     GUI Update Methods                      %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods used to live update GUI components
        
        % Preview
        function updateModelPreviewAxes(app)
            if ~app.PreviewCheckBox.Value
                app.showPreviewDisabledNotice();
                return;
            end
            switch app.GlobalTabGroup.SelectedTab
                case app.DomainTab
                    app.updateGrid();
                case app.RockTab
                    app.updateRock();
                case app.BCsTab
                    app.updateBCs();
                case app.WellsTab
                    app.updateWells();
                otherwise
                    app.clearPreview();
            end
        end

        function clearPreview(app)
            cla(app.ModelPreviewAxes, 'reset');
            text(app.ModelPreviewAxes, .3, .5, 'Preview not available.', 'FontSize', 20);
            axis(app.ModelPreviewAxes, "off");
        end

        function showPreviewDisabledNotice(app)
            cla(app.ModelPreviewAxes, 'reset');
            text(app.ModelPreviewAxes, .3, .5, 'Preview disabled.', 'FontSize', 20);
            axis(app.ModelPreviewAxes, "off");
        end
        
        % Model panel
        function updateModelPanel(app)
            % Number of cells
            app.TotelCellsEditField.Value = app.task.getNumberOfCells();

            % Layer enabled
            if app.task.params.grid.layer.enable
                app.turnLampOnOK(app.LayerEnabledLamp);
            else
                app.turnLampOff(app.LayerEnabledLamp);
            end
            % Gravity
            if app.task.params.fluid.gravity.enabled
                app.turnLampOnOK(app.GravityEnabledLamp);
            else
                app.turnLampOff(app.GravityEnabledLamp);
            end
            % EOS
            if app.task.params.fluid.useEOS
                app.turnLampOnOK(app.EOSEnabledLamp);
            else
                app.turnLampOff(app.EOSEnabledLamp);
            end
            % BCs
            if any(app.task.params.bc.enable)
                app.turnLampOff(app.BCsEnabledLamp);
            else
                app.turnLampOnOK(app.BCsEnabledLamp);
            end
            % Initial equilibrium
            if app.task.params.simulation.initializeWithEquilibrium
                app.turnLampOnOK(app.InitialEquilibriumEnabledLamp);
            else
                app.turnLampOff(app.InitialEquilibriumEnabledLamp);
            end
        end

        % Warnings panel
        function updateWarningsPanel(app)
            if app.task.getNumberOfCells > app.globalVars.GRID_SIZE_WARNING_CELL_NUMBER_THRESHOLD
                app.turnLampOnWarning(app.GridSizeWarningLamp)
            else
                app.turnLampOff(app.GridSizeWarningLamp)
            end
            if ~isempty(app.oldTaskName) && ~app.TaskKeepExistingCheckBox.Value
                app.turnLampOnWarning(app.OverwritingTaskWarningLamp);
                if app.task.storedDataAvailable()
                    app.turnLampOnWarning(app.RemovingResultsWarningLamp);
                end
            else
                app.turnLampOff(app.OverwritingTaskWarningLamp);
                app.turnLampOff(app.RemovingResultsWarningLamp);
            end
        end

        % Total PV
        function updateTotalPVField(app)
            if app.PreviewCheckBox.Value && ~isempty(app.task.model.grid) && ~isempty(app.task.model.rock)
                app.TotalPVEditField.Value = num2str(app.task.model.grid.getTotalPoreVolume(app.task.model.rock), '%.3e');
            else
                app.TotalPVEditField.Value = "NaN";
            end
        end


        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                  GUI Data Exchange Methods                  %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods used to bulk exchange data from GUI elements.

        function size = getGridSizeVector(app)
            x = app.GridSizexEditField.Value * mapUnitToMRST(app.GridSizexUnitDropDown.Value);
            y = app.GridSizeyEditField.Value * mapUnitToMRST(app.GridSizeyUnitDropDown.Value);
            z = app.GridSizezEditField.Value * mapUnitToMRST(app.GridSizezUnitDropDown.Value);
            size = [x y z];
        end

        function setGridSizeVector(app, vector)
            app.GridSizexEditField.Value = vector(1) * mapUnitToMRSTReverse(app.GridSizexUnitDropDown.Value);
            app.GridSizeyEditField.Value = vector(2) * mapUnitToMRSTReverse(app.GridSizeyUnitDropDown.Value);
            app.GridSizezEditField.Value = vector(3) * mapUnitToMRSTReverse(app.GridSizezUnitDropDown.Value);
        end

        function dims = getGridDimsVector(app)
            nx = app.GridNxEditField.Value; 
            ny = app.GridNyEditField.Value; 
            nz = app.GridNzEditField.Value;
            dims = [nx ny nz];
        end

        function setGridDimsVector(app, vector)
            app.GridNxEditField.Value = vector(1); 
            app.GridNyEditField.Value = vector(2); 
            app.GridNzEditField.Value = vector(3);
        end

        function point = getLayerPoint(app)
            x = app.GridLayerPlanePointxEditField.Value;
            y = app.GridLayerPlanePointyEditField.Value;
            z = app.GridLayerPlanePointzEditField.Value;
            point = [x y z];
        end

        function setLayerPoint(app, point)
            app.GridLayerPlanePointxEditField.Value = point(1);
            app.GridLayerPlanePointyEditField.Value = point(2);
            app.GridLayerPlanePointzEditField.Value = point(3);
        end

        function angles = getLayerAngles(app)
            roll = app.GridLayerRollEditField.Value;
            pitch = app.GridLayerPitchEditField.Value;
            yaw = app.GridLayerYawEditField.Value;
            angles = [roll pitch yaw];
        end

        function setLayerAngles(app, angles)
            app.GridLayerRollEditField.Value = angles(1);
            app.GridLayerPitchEditField.Value = angles(2);
            app.GridLayerYawEditField.Value = angles(3);
        end

        function vector = getGravityVector(app)
            gx = app.FluidGravityxEditField.Value * mapUnitToMRST(app.FluidGravityxUnitDropDown.Value);
            gy = app.FluidGravityyEditField.Value * mapUnitToMRST(app.FluidGravityyUnitDropDown.Value);
            gz = app.FluidGravityzEditField.Value * mapUnitToMRST(app.FluidGravityzUnitDropDown.Value);
            vector = [gx gy gz];
        end

        function setGravityVector(app, vector)
            app.FluidGravityxEditField.Value = vector(1) * mapUnitToMRSTReverse(app.FluidGravityxUnitDropDown.Value);
            app.FluidGravityyEditField.Value = vector(2) * mapUnitToMRSTReverse(app.FluidGravityyUnitDropDown.Value);
            app.FluidGravityzEditField.Value = vector(3) * mapUnitToMRSTReverse(app.FluidGravityzUnitDropDown.Value);
        end

        function active = getActiveBCs(app)
            active(1) = app.BCxMinCheckBox.Value;
            active(2) = app.BCxMaxCheckBox.Value;
            active(3) = app.BCyMinCheckBox.Value;
            active(4) = app.BCyMaxCheckBox.Value;
            active(5) = app.BCzMinCheckBox.Value;
            active(6) = app.BCzMaxCheckBox.Value;
        end

        function setActiveBCs(app, active)
            app.BCxMinCheckBox.Value = active(1);
            app.BCxMaxCheckBox.Value = active(2);
            app.BCyMinCheckBox.Value = active(3);
            app.BCyMaxCheckBox.Value = active(4);
            app.BCzMinCheckBox.Value = active(5);
            app.BCzMaxCheckBox.Value = active(6);
        end
        
        function pressure = getBCsPressure(app)
            pressure(1) = app.BCxMinPressureEditField.Value * mapUnitToMRST(app.BCxMinPressureUnitDropDown.Value);
            pressure(2) = app.BCxMaxPressureEditField.Value * mapUnitToMRST(app.BCxMaxPressureUnitDropDown.Value);
            pressure(3) = app.BCyMinPressureEditField.Value * mapUnitToMRST(app.BCyMinPressureUnitDropDown.Value);
            pressure(4) = app.BCyMaxPressureEditField.Value * mapUnitToMRST(app.BCyMaxPressureUnitDropDown.Value);
            pressure(5) = app.BCzMinPressureEditField.Value * mapUnitToMRST(app.BCzMinPressureUnitDropDown.Value);
            pressure(6) = app.BCzMaxPressureEditField.Value * mapUnitToMRST(app.BCzMaxPressureUnitDropDown.Value);
        end

        function setBCsPressure(app, pressure)
            app.BCxMinPressureEditField.Value = pressure(1) * mapUnitToMRSTReverse(app.BCxMinPressureUnitDropDown.Value);
            app.BCxMaxPressureEditField.Value = pressure(2) * mapUnitToMRSTReverse(app.BCxMaxPressureUnitDropDown.Value);
            app.BCyMinPressureEditField.Value = pressure(3) * mapUnitToMRSTReverse(app.BCyMinPressureUnitDropDown.Value);
            app.BCyMaxPressureEditField.Value = pressure(4) * mapUnitToMRSTReverse(app.BCyMaxPressureUnitDropDown.Value);
            app.BCzMinPressureEditField.Value = pressure(5) * mapUnitToMRSTReverse(app.BCzMinPressureUnitDropDown.Value);
            app.BCzMaxPressureEditField.Value = pressure(6) * mapUnitToMRSTReverse(app.BCzMaxPressureUnitDropDown.Value);
        end

        function flux = getBCsFlux(app)
            flux(1) = app.BCxMinFluxEditField.Value * mapUnitToMRST(app.BCxMinFluxUnitDropDown.Value);
            flux(2) = app.BCxMaxFluxEditField.Value * mapUnitToMRST(app.BCxMaxFluxUnitDropDown.Value);
            flux(3) = app.BCyMinFluxEditField.Value * mapUnitToMRST(app.BCyMinFluxUnitDropDown.Value);
            flux(4) = app.BCyMaxFluxEditField.Value * mapUnitToMRST(app.BCyMaxFluxUnitDropDown.Value);
            flux(5) = app.BCzMinFluxEditField.Value * mapUnitToMRST(app.BCzMinFluxUnitDropDown.Value);
            flux(6) = app.BCzMaxFluxEditField.Value * mapUnitToMRST(app.BCzMaxFluxUnitDropDown.Value);
        end

        function setBCsFlux(app, flux)
            app.BCxMinFluxEditField.Value = flux(1) * mapUnitToMRSTReverse(app.BCxMinFluxUnitDropDown.Value);
            app.BCxMaxFluxEditField.Value = flux(2) * mapUnitToMRSTReverse(app.BCxMaxFluxUnitDropDown.Value);
            app.BCyMinFluxEditField.Value = flux(3) * mapUnitToMRSTReverse(app.BCyMinFluxUnitDropDown.Value);
            app.BCyMaxFluxEditField.Value = flux(4) * mapUnitToMRSTReverse(app.BCyMaxFluxUnitDropDown.Value);
            app.BCzMinFluxEditField.Value = flux(5) * mapUnitToMRSTReverse(app.BCzMinFluxUnitDropDown.Value);
            app.BCzMaxFluxEditField.Value = flux(6) * mapUnitToMRSTReverse(app.BCzMaxFluxUnitDropDown.Value);
        end

        function temperature = getBCsTemperature(app)
            temperature(1) = temperature2kelvin(app.BCxMinTempEditField.Value, app.BCxMinTempUnitDropDown.Value);
            temperature(2) = temperature2kelvin(app.BCxMaxTempEditField.Value, app.BCxMaxTempUnitDropDown.Value);
            temperature(3) = temperature2kelvin(app.BCyMinTempEditField.Value, app.BCyMinTempUnitDropDown.Value);
            temperature(4) = temperature2kelvin(app.BCyMaxTempEditField.Value, app.BCyMaxTempUnitDropDown.Value);
            temperature(5) = temperature2kelvin(app.BCzMinTempEditField.Value, app.BCzMinTempUnitDropDown.Value);
            temperature(6) = temperature2kelvin(app.BCzMaxTempEditField.Value, app.BCzMaxTempUnitDropDown.Value);
        end

        function setBCsTemperature(app, temperature)
            app.BCxMinTempEditField.Value = kelvin2temperature(temperature(1), app.BCxMinTempUnitDropDown.Value);
            app.BCxMaxTempEditField.Value = kelvin2temperature(temperature(2), app.BCxMaxTempUnitDropDown.Value);
            app.BCyMinTempEditField.Value = kelvin2temperature(temperature(3), app.BCyMinTempUnitDropDown.Value);
            app.BCyMaxTempEditField.Value = kelvin2temperature(temperature(4), app.BCyMaxTempUnitDropDown.Value);
            app.BCzMinTempEditField.Value = kelvin2temperature(temperature(5), app.BCzMinTempUnitDropDown.Value);
            app.BCzMaxTempEditField.Value = kelvin2temperature(temperature(6), app.BCzMaxTempUnitDropDown.Value);
        end

        function hflux = getBCsHeatFlux(app)
            hflux(1) = app.BCxMinHeatFluxEditField.Value * mapUnitToMRST(app.BCxMinHeatFluxUnitDropDown.Value);
            hflux(2) = app.BCxMaxHeatFluxEditField.Value * mapUnitToMRST(app.BCxMaxHeatFluxUnitDropDown.Value);
            hflux(3) = app.BCyMinHeatFluxEditField.Value * mapUnitToMRST(app.BCyMinHeatFluxUnitDropDown.Value);
            hflux(4) = app.BCyMaxHeatFluxEditField.Value * mapUnitToMRST(app.BCyMaxHeatFluxUnitDropDown.Value);
            hflux(5) = app.BCzMinHeatFluxEditField.Value * mapUnitToMRST(app.BCzMinHeatFluxUnitDropDown.Value);
            hflux(6) = app.BCzMaxHeatFluxEditField.Value * mapUnitToMRST(app.BCzMaxHeatFluxUnitDropDown.Value);
        end

        function setBCsHeatFlux(app, hflux)
            app.BCxMinHeatFluxEditField.Value = hflux(1) * mapUnitToMRSTReverse(app.BCxMinHeatFluxUnitDropDown.Value);
            app.BCxMaxHeatFluxEditField.Value = hflux(2) * mapUnitToMRSTReverse(app.BCxMaxHeatFluxUnitDropDown.Value);
            app.BCyMinHeatFluxEditField.Value = hflux(3) * mapUnitToMRSTReverse(app.BCyMinHeatFluxUnitDropDown.Value);
            app.BCyMaxHeatFluxEditField.Value = hflux(4) * mapUnitToMRSTReverse(app.BCyMaxHeatFluxUnitDropDown.Value);
            app.BCzMinHeatFluxEditField.Value = hflux(5) * mapUnitToMRSTReverse(app.BCzMinHeatFluxUnitDropDown.Value);
            app.BCzMaxHeatFluxEditField.Value = hflux(6) * mapUnitToMRSTReverse(app.BCzMaxHeatFluxUnitDropDown.Value);
        end

        function point = getInjWellBottomPoint(app)
            point(1) = app.InjWellPointxEditField.Value;
            point(2) = app.InjWellPointyEditField.Value;
            point(3) = app.InjWellPointzEditField.Value;
        end

        function setInjWellBottomPoint(app, point)
            app.InjWellPointxEditField.Value = point(1);
            app.InjWellPointyEditField.Value = point(2);
            app.InjWellPointzEditField.Value = point(3);
        end

        function point = getProdWellBottomPoint(app)
            point(1) = app.ProdWellPointxEditField.Value;
            point(2) = app.ProdWellPointyEditField.Value;
            point(3) = app.ProdWellPointzEditField.Value;
        end

        function setProdWellBottomPoint(app, point)
            app.ProdWellPointxEditField.Value = point(1);
            app.ProdWellPointyEditField.Value = point(2);
            app.ProdWellPointzEditField.Value = point(3);
        end

        function config = getGlobalPorosityButtonConfig(app)
            switch(app.GlobalPorosityButtonGroup.SelectedObject)
                case app.GlobalPorosityUniformButton
                    config = 'uniform';
                case app.GlobalPorosityGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setGlobalPorosityButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.GlobalPorosityButtonGroup.SelectedObject = app.GlobalPorosityUniformButton;                    
                case 'gaussian'
                    app.GlobalPorosityButtonGroup.SelectedObject = app.GlobalPorosityGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
       
        function config = getLayerPorosityButtonConfig(app)
            switch(app.LayerPorosityButtonGroup.SelectedObject)
                case app.LayerPorosityUniformButton
                    config = 'uniform';
                case app.LayerPorosityGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setLayerPorosityButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.LayerPorosityButtonGroup.SelectedObject = app.LayerPorosityUniformButton;                    
                case 'gaussian'
                    app.LayerPorosityButtonGroup.SelectedObject = app.LayerPorosityGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
        
        function config = getGlobalPermButtonConfig(app)
            switch(app.GlobalPermButtonGroup.SelectedObject)
                case app.GlobalPermUniformButton
                    config = 'uniform';
                case app.GlobalPermGaussianButton
                    config = 'gaussian';
                case app.GlobalPermDirectionalButton
                    config = 'directional';
                otherwise
                    config = 'error';
            end
        end

        function setGlobalPermButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.GlobalPermButtonGroup.SelectedObject = app.GlobalPermUniformButton;                    
                case 'gaussian'
                    app.GlobalPermButtonGroup.SelectedObject = app.GlobalPermGaussianButton;
                case 'directional'
                    app.GlobalPermButtonGroup.SelectedObject = app.GlobalPermDirectionalButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
       
        function config = getLayerPermButtonConfig(app)
            switch(app.LayerPermButtonGroup.SelectedObject)
                case app.LayerPermUniformButton
                    config = 'uniform';
                case app.LayerPermGaussianButton
                    config = 'gaussian';
                case app.LayerPermDirectionalButton
                    config = 'directional';                  
                otherwise
                    config = 'error';
            end
        end

        function setLayerPermButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.LayerPermButtonGroup.SelectedObject = app.LayerPermUniformButton;                    
                case 'gaussian'
                    app.LayerPermButtonGroup.SelectedObject = app.LayerPermGaussianButton;
                case 'directional'
                    app.LayerPermButtonGroup.SelectedObject = app.LayerPermDirectionalButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
        
        function perm = getGlobalDirPerm(app)
            kx = app.GlobalPermDirxEditField.Value * mapUnitToMRST(app.GlobalPermDirxUnitDropDown.Value);
            ky = app.GlobalPermDiryEditField.Value * mapUnitToMRST(app.GlobalPermDiryUnitDropDown.Value);
            kz = app.GlobalPermDirzEditField.Value * mapUnitToMRST(app.GlobalPermDirzUnitDropDown.Value);
            perm = [kx ky kz];
        end

        function setGlobalDirPerm(app, perm)
            app.GlobalPermDirxEditField.Value = perm(1) * mapUnitToMRSTReverse(app.GlobalPermDirxUnitDropDown.Value);
            app.GlobalPermDiryEditField.Value = perm(2) * mapUnitToMRSTReverse(app.GlobalPermDiryUnitDropDown.Value);
            app.GlobalPermDirzEditField.Value = perm(3) * mapUnitToMRSTReverse(app.GlobalPermDirzUnitDropDown.Value);
        end

        function perm = getLayerDirPerm(app)
            kx = app.LayerPermDirxEditField.Value * mapUnitToMRST(app.LayerPermDirxUnitDropDown.Value);
            ky = app.LayerPermDiryEditField.Value * mapUnitToMRST(app.LayerPermDiryUnitDropDown.Value);
            kz = app.LayerPermDirzEditField.Value * mapUnitToMRST(app.LayerPermDirzUnitDropDown.Value);
            perm = [kx ky kz];
        end

        function setLayerDirPerm(app, perm)
            app.LayerPermDirxEditField.Value = perm(1) * mapUnitToMRSTReverse(app.LayerPermDirxUnitDropDown.Value);
            app.LayerPermDiryEditField.Value = perm(2) * mapUnitToMRSTReverse(app.LayerPermDiryUnitDropDown.Value);
            app.LayerPermDirzEditField.Value = perm(3) * mapUnitToMRSTReverse(app.LayerPermDirzUnitDropDown.Value);
        end
        
        function config = getGlobalDensityButtonConfig(app)
            switch(app.GlobalDensityButtonGroup.SelectedObject)
                case app.GlobalDensityUniformButton
                    config = 'uniform';
                case app.GlobalDensityGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setGlobalDensityButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.GlobalDensityButtonGroup.SelectedObject = app.GlobalDensityUniformButton;                    
                case 'gaussian'
                    app.GlobalDensityButtonGroup.SelectedObject = app.GlobalDensityGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
       
        function config = getLayerDensityButtonConfig(app)
            switch(app.LayerDensityButtonGroup.SelectedObject)
                case app.LayerDensityUniformButton
                    config = 'uniform';
                case app.LayerDensityGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setLayerDensityButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.LayerDensityButtonGroup.SelectedObject = app.LayerDensityUniformButton;                    
                case 'gaussian'
                    app.LayerDensityButtonGroup.SelectedObject = app.LayerDensityGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end

        function config = getGlobalCondButtonConfig(app)
            switch(app.GlobalCondButtonGroup.SelectedObject)
                case app.GlobalCondUniformButton
                    config = 'uniform';
                case app.GlobalCondGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setGlobalCondButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.GlobalCondButtonGroup.SelectedObject = app.GlobalCondUniformButton;                    
                case 'gaussian'
                    app.GlobalCondButtonGroup.SelectedObject = app.GlobalCondGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
       
        function config = getLayerCondButtonConfig(app)
            switch(app.LayerCondButtonGroup.SelectedObject)
                case app.LayerCondUniformButton
                    config = 'uniform';
                case app.LayerCondGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setLayerCondButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.LayerCondButtonGroup.SelectedObject = app.LayerCondUniformButton;                    
                case 'gaussian'
                    app.LayerCondButtonGroup.SelectedObject = app.LayerCondGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
        
        function config = getGlobalHeatButtonConfig(app)
            switch(app.GlobalHeatButtonGroup.SelectedObject)
                case app.GlobalHeatUniformButton
                    config = 'uniform';
                case app.GlobalHeatGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setGlobalHeatButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.GlobalHeatButtonGroup.SelectedObject = app.GlobalHeatUniformButton;                    
                case 'gaussian'
                    app.GlobalHeatButtonGroup.SelectedObject = app.GlobalHeatGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
       
        function config = getLayerHeatButtonConfig(app)
            switch(app.LayerHeatButtonGroup.SelectedObject)
                case app.LayerHeatUniformButton
                    config = 'uniform';
                case app.LayerHeatGaussianButton
                    config = 'gaussian';
                otherwise
                    config = 'error';
            end
        end

        function setLayerHeatButtonConfig(app, config)
            switch(config)
                case 'uniform' 
                    app.LayerHeatButtonGroup.SelectedObject = app.LayerHeatUniformButton;                    
                case 'gaussian'
                    app.LayerHeatButtonGroup.SelectedObject = app.LayerHeatGaussianButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
        
        function config = getRockVisualizationButtonConfig(app)
            switch app.RockVisualizationButtonGroup.SelectedObject
                case app.RockVisualizationPorosityButton
                    config = 'porosity';
                case app.RockVisualizationPermButton
                    config = 'permeability';
                case app.RockVisualizationDensityButton
                    config = 'density';    
                case app.RockVisualizationCondButton
                    config = 'thermal_cond';   
                case app.RockVisualizationHeatButton
                    config = 'heat_capacity'; 
                otherwise
                    config = 'error';
            end
        end

        function setRockVisualizationButtonConfig(app, config)
            switch config
                case 'porosity'
                    app.RockVisualizationButtonGroup.SelectedObject = app.RockVisualizationPorosityButton;
                case 'permeability'
                    app.RockVisualizationButtonGroup.SelectedObject = app.RockVisualizationPermButton;
                case 'density'
                    app.RockVisualizationButtonGroup.SelectedObject = app.RockVisualizationDensityButton;
                case 'thermal_cond'
                    app.RockVisualizationButtonGroup.SelectedObject = app.RockVisualizationCondButton;
                case 'heat_capacity'
                    app.RockVisualizationButtonGroup.SelectedObject = app.RockVisualizationHeatButton;
                otherwise
                    error('Invalid button group setting.');
            end
         end

        function config = getBCThermalButtonConfig(app)
            switch app.BCThermalButtonGroup.SelectedObject
                case app.BCThermalHeatFluxButton
                    config = 'heat_flux';
                case app.BCThermalTempButton
                    config = 'temperature';
                otherwise
                    config = 'error';
            end
        end

        function setBCThermalButtonConfig(app, config)
            switch config
                case 'heat_flux'
                    app.BCThermalButtonGroup.SelectedObject = app.BCThermalHeatFluxButton;
                case 'temperature'
                    app.BCThermalButtonGroup.SelectedObject = app.BCThermalTempButton;
                otherwise
                    error('Invalid button group setting.');
            end
         end

        function config = getBCVisualizationButtonConfig(app)
            switch app.BCVisualizationButtonGroup.SelectedObject
                case app.BCVisualizationHydraulicButton
                    config = 'hydraulic';
                case app.BCVisualizationThermButton
                    config = 'thermal';
                otherwise
                    config = 'error';
            end
        end

        function setBCVisualizationButtonConfig(app, config)
            switch config
                case 'hydraulic'
                    app.BCVisualizationButtonGroup.SelectedObject = app.BCVisualizationHydraulicButton;
                case 'thermal'
                    app.BCVisualizationButtonGroup.SelectedObject = app.BCVisualizationThermButton;
                otherwise
                    error('Invalid button group setting.');
            end
         end

        function config = getBCTypeButtonConfig(app)
            bgs = [app.BCxMinButtonGroup
                  app.BCxMaxButtonGroup
                  app.BCyMinButtonGroup
                  app.BCyMaxButtonGroup
                  app.BCzMinButtonGroup
                  app.BCzMaxButtonGroup
                  ];
            buttons = [app.BCxMinPressureButton app.BCxMinFluxButton
                       app.BCxMaxPressureButton app.BCxMaxFluxButton
                       app.BCyMinPressureButton app.BCyMinFluxButton
                       app.BCyMaxPressureButton app.BCyMaxFluxButton
                       app.BCzMinPressureButton app.BCzMinFluxButton
                       app.BCzMaxPressureButton app.BCzMaxFluxButton
                       ];
            config = cell(1,6);
            for i = 1:6
                switch bgs(i).SelectedObject
                    case buttons(i,1)
                        config(i) = {'pressure'};
                    case buttons(i,2)
                        config(i) = {'flux'};
                    otherwise
                        config(i) = {'error'};
                end
            end
        end

        function setBCTypeButtonConfig(app, config)
            bgs = [app.BCxMinButtonGroup
                  app.BCxMaxButtonGroup
                  app.BCyMinButtonGroup
                  app.BCyMaxButtonGroup
                  app.BCzMinButtonGroup
                  app.BCzMaxButtonGroup
                  ];
            buttons = [app.BCxMinPressureButton app.BCxMinFluxButton
                       app.BCxMaxPressureButton app.BCxMaxFluxButton
                       app.BCyMinPressureButton app.BCyMinFluxButton
                       app.BCyMaxPressureButton app.BCyMaxFluxButton
                       app.BCzMinPressureButton app.BCzMinFluxButton
                       app.BCzMaxPressureButton app.BCzMaxFluxButton
                       ];
            for i = 1:6
                switch config{i}
                    case 'pressure'
                        bgs(i).SelectedObject = buttons(i,1);
                    case 'flux'
                        bgs(i).SelectedObject = buttons(i,2);
                    otherwise
                        error('Invalid button group setting.');
                end
            end
        end
        
        function config = getInjWellOperatingCondButtonConfig(app)
            switch app.InjWellControlButtonGroup.SelectedObject
                case app.InjWellConstantBHPButton
                    config = 'bhp';
                case app.InjWellConstantRateButton
                    config = 'rate';
                otherwise
                    config = 'error';
            end   
        end

        function setInjWellOperatingCondButtonConfig(app, config)
            switch config
                case 'bhp'
                    app.InjWellControlButtonGroup.SelectedObject = app.InjWellConstantBHPButton;
                case 'rate'
                    app.InjWellControlButtonGroup.SelectedObject = app.InjWellConstantRateButton;
                otherwise
                    error('Invalid button group setting.');
            end  
        end

        function config = getProdWellOperatingCondButtonConfig(app)
            switch app.ProdWellControlButtonGroup.SelectedObject
                case app.ProdWellConstantBHPButton
                    config = 'bhp';
                case app.ProdWellConstantRateButton
                    config = 'rate';
                otherwise
                    config = 'error';
            end   
        end

        function setProdWellOperatingCondButtonConfig(app, config)
            switch config
                case 'bhp'
                    app.ProdWellControlButtonGroup.SelectedObject = app.ProdWellConstantBHPButton;
                case 'rate'
                    app.ProdWellControlButtonGroup.SelectedObject = app.ProdWellConstantRateButton;
                otherwise
                    error('Invalid button group setting.');
            end  
        end

        function config = getTimestepTypeConfig(app)
            switch app.TimestepTypeButtonGroup.SelectedObject
                case app.FixedTimestepsButton
                    config = 'fixed';
                case app.GeometricRampupButton
                    config = 'geometric_rampup';
                otherwise
                    config = 'error';
            end
        end

        function setTimestepTypeConfig(app, config)
            switch config
                case 'fixed'
                    app.TimestepTypeButtonGroup.SelectedObject = app.FixedTimestepsButton;
                case 'geometric_rampup'
                    app.TimestepTypeButtonGroup.SelectedObject = app.GeometricRampupButton;
                otherwise
                    error('Invalid button group setting.');
            end
        end
        
        function config = getPressureLimitsConfig(app)
            min = app.MinReservoirPressureEditField.Value*mapUnitToMRST(app.MinReservoirPressureUnitDropDown.Value);
            max = app.MaxReservoirPressureEditField.Value*mapUnitToMRST(app.MaxReservoirPressureUnitDropDown.Value);
            config = [min max];
        end

        function setPressureLimitsConfig(app, config)
            app.MinReservoirPressureEditField.Value = config(1)*mapUnitToMRSTReverse(app.MinReservoirPressureUnitDropDown.Value);
            app.MaxReservoirPressureEditField.Value = config(2)*mapUnitToMRSTReverse(app.MaxReservoirPressureUnitDropDown.Value);
        end

        function config = getTempLimitsConfig(app)
            min = temperature2kelvin(app.MinReservoirTempEditField.Value, app.MinReservoirTempUnitDropDown.Value);
            max = temperature2kelvin(app.MaxReservoirTempEditField.Value, app.MaxReservoirTempUnitDropDown.Value);
            config = [min max];
        end

        function setTempLimitsConfig(app, config)
            app.MinReservoirTempEditField.Value = kelvin2temperature(config(1), app.MinReservoirTempUnitDropDown.Value);
            app.MaxReservoirTempEditField.Value = kelvin2temperature(config(2), app.MaxReservoirTempUnitDropDown.Value);
        end
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%                    Model Update Methods                     %%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Methods used for updating parts of the the model for the purpose
        % of generating previews. 
        
        function updateGrid(app)
            app.updateTaskParams();
            app.updateWarningsPanel();
            app.updateModelPanel();
            if ~app.PreviewCheckBox.Value
                return
            end            
            totalSteps = 3;

            % Build grid
            waitDialog = uiprogressdlg(app.GraphicalTaskBuilderUIFigure, 'Title', 'Please wait', 'Message', 'Building grid...');
            app.task = app.task.buildGrid();
            waitDialog.Value = 1/totalSteps;
            
            % Build layer
            waitDialog.Message = "Building layer...";
            app.task = app.task.buildLayer();
            waitDialog.Value = 2/totalSteps;

            % Visualize grid
            waitDialog.Message = "Visualizing grid...";
            app.task.visualizeGrid(app.ModelPreviewAxes);      
            app.updateModelPanel();
            waitDialog.Value = 3/totalSteps;

            waitDialog.Message = "Done.";
            close(waitDialog);            
        end

        function updateRock(app)
            app.updateTaskParams();
            app.updateRockTabVisibility();
            if ~app.PreviewCheckBox.Value
                return
            end
            
            totalSteps = 4;

            % Build grid
            waitDialog = uiprogressdlg(app.GraphicalTaskBuilderUIFigure, 'Title', 'Please wait', 'Message', 'Building grid...');
            app.task = app.task.buildGrid();
            waitDialog.Value = 1/totalSteps;

            % Build layer
            waitDialog.Message = "Building layer...";
            app.task = app.task.buildLayer();
            waitDialog.Value = 2/totalSteps;

            % Build rock
            waitDialog.Message = "Building rock...";
            app.task = app.task.buildRock();
            waitDialog.Value = 3/totalSteps;

            % Visualizing rock properties
            waitDialog.Message = "Drawing visualization...";
            app.task.visualizeRock(app.ModelPreviewAxes);
            waitDialog.Value = 4/totalSteps;
            
            waitDialog.Message = "Done.";
            close(waitDialog);

            app.updateTotalPVField(); % Update total PV field
        end

        function updateWells(app)
            app.updateTaskParams();
            if ~app.PreviewCheckBox.Value
                return
            end
            
            totalSteps = 5;

            % Build grid
            waitDialog = uiprogressdlg(app.GraphicalTaskBuilderUIFigure, 'Title', 'Please wait', 'Message', 'Building grid...');
            app.task = app.task.buildGrid();
            waitDialog.Value = 1/totalSteps;
            
            % Build layer
            waitDialog.Message = "Building layer...";
            app.task = app.task.buildLayer();
            waitDialog.Value = 2/totalSteps;

            % Build rock
            waitDialog.Message = "Building rock...";
            app.task = app.task.buildRock();
            waitDialog.Value = 3/totalSteps;

            % Build wells
            waitDialog.Message = "Building wells...";
            app.task = app.task.buildWells();
            waitDialog.Value = 4/totalSteps;

            % Visualize wells
            waitDialog.Message = "Visualizing wells...";
            app.task.visualizeWells(app.ModelPreviewAxes);
            waitDialog.Value = 5/totalSteps;
            
            waitDialog.Message = "Done.";
            close(waitDialog);

        end

        function updateBCs(app)
            app.updateTaskParams();
            app.updateModelPanel();
            if ~app.PreviewCheckBox.Value
                return
            end
            
            totalSteps = 3;
            
            % Build grid
            waitDialog = uiprogressdlg(app.GraphicalTaskBuilderUIFigure, 'Title', 'Please wait', 'Message', 'Building grid...');
            app.task = app.task.buildGrid();
            waitDialog.Value = 1/totalSteps;


            % Build BCs
            waitDialog.Message = "Building BCs...";
            app.task = app.task.buildBCs();
            waitDialog.Value = 2/totalSteps;

            % Visualize BCs
            waitDialog.Message = "Visualizing BCs...";
            app.task.visualizeBCs(app.ModelPreviewAxes);            
            waitDialog.Value = 3/totalSteps;
            
            waitDialog.Message = "Done.";
            close(waitDialog);
        end

        function updateFluid(app)
            app.updateTaskParams();
            app.updateModelPanel();
        end

        function updateReservoir(app)
            app.updateTaskParams();
            app.updateModelPanel();
        end
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, callingApp, task)
            arguments
                app TaskBuilder
                callingApp DeepGeoDoublet
                task = [];
            end

            % Calling app 
            app.callingApp = callingApp;
            app.callingApp.hideApp();

            % Load global veriables and constants
            app.globalVars = callingApp.globalVars;
            app.globalConsts = callingApp.globalConsts;
            
            % Load task
            if isempty(task)
                app.task = Task(app.globalVars);
                app.oldTaskName = '';
            else
                app.task = task;
                app.oldTaskName = app.task.generic.name;
            end
            app.loadTaskParams();

            % Set version and copyright notice
            labelStr = sprintf("Version %s\nCopyright (C) %s %s", ...
                app.globalConsts.VERSION, ...
                app.globalConsts.YEAR, ...
                app.globalConsts.AUTHOR_LASTNAME);
            app.InfoLabel.Text = labelStr;
            
            % Initialize model preview
            app.updateModelPreviewAxes();

            % Initialize model and warnings panel
            app.updateModelPanel();
            app.updateWarningsPanel();

            % Update GUI visibility
            app.updateGUIVisibility();

            % Update GUI limits
            app.updateAllLimits();
        end

        % Button pushed function: QuitButton
        function QuitButtonPushed(app, event)
            app.closeAppPrompt();
        end

        % Close request function: GraphicalTaskBuilderUIFigure
        function GraphicalTaskBuilderUIFigureCloseRequest(app, event)
            app.closeAppPrompt();            
        end

        % Value changed function: GridNxEditField
        function GridNxEditFieldValueChanged(app, event)
            app.updateWellsLimits();
            app.updateGrid();
        end

        % Value changed function: GridNyEditField
        function GridNyEditFieldValueChanged(app, event)
            app.updateWellsLimits();
            app.updateGrid();
        end

        % Value changed function: GridNzEditField
        function GridNzEditFieldValueChanged(app, event)
            app.updateWellsLimits();
            app.updateGrid();
        end

        % Value changed function: GridSizezEditField
        function GridSizezEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridSizeyEditField
        function GridSizeyEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridSizexEditField
        function GridSizexEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Callback function
        function InfoButtonPushed(app, event)
            license = fileread('LICENSE');
            app.infoDialog = InfoDialog(license);
        end

        % Value changed function: GridDepthEditField
        function GridDepthEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridSizexUnitDropDown
        function GridSizexUnitDropDownValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridSizeyUnitDropDown
        function GridSizeyUnitDropDownValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridSizezUnitDropDown
        function GridSizezUnitDropDownValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridDepthUnitDropDown
        function GridDepthUnitDropDownValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerActiveCheckBox
        function GridLayerActiveCheckBoxValueChanged(app, event)
            app.updateDomainTabVisibility();
            app.updateGrid();
        end

        % Value changed function: PreviewCheckBox
        function PreviewCheckBoxValueChanged(app, event)
            app.updateModelPreviewAxes();
            app.updateTotalPVField();
        end

        % Value changed function: GridLayerPlanePointxEditField
        function GridLayerPlanePointxEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerPlanePointyEditField
        function GridLayerPlanePointyEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerPlanePointzEditField
        function GridLayerPlanePointzEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerThicknessEditField
        function GridLayerThicknessEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerRollEditField
        function GridLayerRollEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: GridLayerPitchEditField
        function GridLayerPitchEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Selection change function: GlobalTabGroup
        function GlobalTabGroupSelectionChanged(app, event)
            app.updateGUIVisibility();
            app.updateModelPreviewAxes();
        end

        % Value changed function: GlobalPorosityEditField
        function GlobalPorosityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: GlobalPorosityButtonGroup
        function GlobalPorosityButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPorosityGaussianMaxEditField
        function GlobalPorosityGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPorosityGaussianMinEditField
        function GlobalPorosityGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPorosityGaussianStdEditField
        function GlobalPorosityGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: LayerPorosityButtonGroup
        function LayerPorosityButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GridLayerYawEditField
        function GridLayerYawEditFieldValueChanged(app, event)
            app.updateGrid();
        end

        % Value changed function: LayerPorosityEditField
        function LayerPorosityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPorosityGaussianMinEditField
        function LayerPorosityGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPorosityGaussianMaxEditField
        function LayerPorosityGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPorosityGaussianStdEditField
        function LayerPorosityGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: VisualizeLayerOnlyCheckBox
        function VisualizeLayerOnlyCheckBoxValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: RockVisualizationButtonGroup
        function RockVisualizationButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: GlobalPermButtonGroup
        function GlobalPermButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermEditField
        function GlobalPermEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermGaussianMinEditField
        function GlobalPermGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermGaussianMaxEditField
        function GlobalPermGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermGaussianStdEditField
        function GlobalPermGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermDirxEditField
        function GlobalPermDirxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermDirzEditField
        function GlobalPermDirzEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function GlobalPermCKRadiusEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function GlobalPermCKTortuosityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: LayerPermButtonGroup
        function LayerPermButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermEditField
        function LayerPermEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermGaussianMinEditField
        function LayerPermGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermGaussianMaxEditField
        function LayerPermGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermDirxEditField
        function LayerPermDirxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermGaussianStdEditField
        function LayerPermGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermDirzEditField
        function LayerPermDirzEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function LayerPermCKRadiusEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function LayerPermCKTortuosityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: InjWellNameEditField
        function InjWellNameEditFieldValueChanged(app, event)
            app.updateWells();            
        end

        % Selection changed function: InjWellControlButtonGroup
        function InjWellControlButtonGroupSelectionChanged(app, event)
            app.updateWellsTabVisibility();
        end

        % Selection changed function: ProdWellControlButtonGroup
        function ProdWellControlButtonGroupSelectionChanged(app, event)
            app.updateWellsTabVisibility();
        end

        % Value changed function: InjWellPointxEditField
        function InjWellPointxEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: InjWellPointyEditField
        function InjWellPointyEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: InjWellPointzEditField
        function InjWellPointzEditFieldValueChanged(app, event)
            app.updateWellsLimits();
            app.updateWells();
        end

        % Value changed function: ProdWellNameEditField
        function ProdWellNameEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: ProdWellPointxEditField
        function ProdWellPointxEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: ProdWellPointyEditField
        function ProdWellPointyEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: ProdWellPointzEditField
        function ProdWellPointzEditFieldValueChanged(app, event)
            app.updateWellsLimits();
            app.updateWells();
        end

        % Button pushed function: SaveandExitButton
        function SaveandExitButtonPushed(app, event)
            app.saveTask();
            app.closeApp();
        end

        % Value changed function: BCxMinCheckBox
        function BCxMinCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Value changed function: BCxMaxCheckBox
        function BCxMaxCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Value changed function: BCyMinCheckBox
        function BCyMinCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Value changed function: BCyMaxCheckBox
        function BCyMaxCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Value changed function: BCzMinCheckBox
        function BCzMinCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Value changed function: BCzMaxCheckBox
        function BCzMaxCheckBoxValueChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCxMinButtonGroup
        function BCxMinButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCxMaxButtonGroup
        function BCxMaxButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCyMinButtonGroup
        function BCyMinButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCyMaxButtonGroup
        function BCyMaxButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCzMinButtonGroup
        function BCzMinButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCzMaxButtonGroup
        function BCzMaxButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Callback function
        function BCThermButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCThermalButtonGroup
        function BCThermalButtonGroupSelectionChanged(app, event)
            app.updateBCsTabVisibility();
            app.updateBCs();
        end

        % Selection changed function: BCVisualizationButtonGroup
        function BCVisualizationButtonGroupSelectionChanged(app, event)
            app.updateBCs();
        end

        % Selection changed function: GlobalDensityButtonGroup
        function GlobalDensityButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityEditField
        function GlobalDensityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityUnitDropDown
        function GlobalDensityUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityGaussianMinEditField
        function GlobalDensityGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityGaussianMinUnitDropDown
        function GlobalDensityGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityGaussianMaxEditField
        function GlobalDensityGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityGaussianMaxUnitDropDown
        function GlobalDensityGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalDensityGaussianStdEditField
        function GlobalDensityGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: LayerDensityButtonGroup
        function LayerDensityButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityEditField
        function LayerDensityEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityUnitDropDown
        function LayerDensityUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityGaussianMinEditField
        function LayerDensityGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityGaussianMinUnitDropDown
        function LayerDensityGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityGaussianMaxEditField
        function LayerDensityGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityGaussianMaxUnitDropDown
        function LayerDensityGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerDensityGaussianStdEditField
        function LayerDensityGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: GlobalCondButtonGroup
        function GlobalCondButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondEditField
        function GlobalCondEditFieldValueChanged(app, event)
            app.updateRock(); 
        end

        % Value changed function: GlobalCondUnitDropDown
        function GlobalCondUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondGaussianMinEditField
        function GlobalCondGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondGaussianMinUnitDropDown
        function GlobalCondGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondGaussianMaxEditField
        function GlobalCondGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondGaussianMaxUnitDropDown
        function GlobalCondGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalCondGaussianStdEditField
        function GlobalCondGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: LayerCondButtonGroup
        function LayerCondButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondEditField
        function LayerCondEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondUnitDropDown
        function LayerCondUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondGaussianMinEditField
        function LayerCondGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondGaussianMinUnitDropDown
        function LayerCondGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondGaussianMaxEditField
        function LayerCondGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondGaussianMaxUnitDropDown
        function LayerCondGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerCondGaussianStdEditField
        function LayerCondGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: GlobalHeatButtonGroup
        function GlobalHeatButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatEditField
        function GlobalHeatEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatUnitDropDown
        function GlobalHeatUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatGaussianMinEditField
        function GlobalHeatGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatGaussianMinUnitDropDown
        function GlobalHeatGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatGaussianMaxEditField
        function GlobalHeatGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatGaussianMaxUnitDropDown
        function GlobalHeatGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalHeatGaussianStdEditField
        function GlobalHeatGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Selection changed function: LayerHeatButtonGroup
        function LayerHeatButtonGroupSelectionChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatEditField
        function LayerHeatEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatUnitDropDown
        function LayerHeatUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatGaussianMinEditField
        function LayerHeatGaussianMinEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatGaussianMinUnitDropDown
        function LayerHeatGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatGaussianMaxEditField
        function LayerHeatGaussianMaxEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatGaussianMaxUnitDropDown
        function LayerHeatGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerHeatGaussianStdEditField
        function LayerHeatGaussianStdEditFieldValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermUnitDropDown
        function GlobalPermUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermGaussianMinUnitDropDown
        function GlobalPermGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermGaussianMaxUnitDropDown
        function GlobalPermGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermDirxUnitDropDown
        function GlobalPermDirxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: GlobalPermDirzUnitDropDown
        function GlobalPermDirzUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function GlobalPermCKRadiusUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermUnitDropDown
        function LayerPermUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermGaussianMinUnitDropDown
        function LayerPermGaussianMinUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermGaussianMaxUnitDropDown
        function LayerPermGaussianMaxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermDirxUnitDropDown
        function LayerPermDirxUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: LayerPermDirzUnitDropDown
        function LayerPermDirzUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Callback function
        function LayerPermCKRadiusUnitDropDownValueChanged(app, event)
            app.updateRock();
        end

        % Value changed function: TaskNameEditField
        function TaskNameEditFieldValueChanged(app, event)
            app.TaskNameEditField.Value = regexprep(app.TaskNameEditField.Value ,'[^a-zA-Z0-9]',''); % Remove non-alphanumeric characters
            if isempty(app.TaskNameEditField.Value)
                app.TaskNameEditField.Value = app.globalVars.DEFAULT_TASK_NAME;
            end
            app.updateWarningsPanel();
            app.updateTaskTabVisibility();
        end

        % Value changed function: FluidGravityCheckBox
        function FluidGravityCheckBoxValueChanged(app, event)
            app.updateFluidTabVisibility();
            app.updateFluid();
        end

        % Value changed function: FluidEOSCheckBox
        function FluidEOSCheckBoxValueChanged(app, event)
            app.updateFluidTabVisibility();
            app.updateFluid();     
        end

        % Value changed function: InitializeWithEquilibriumCheckBox
        function InitializeWithEquilibriumCheckBoxValueChanged(app, event)
            app.updateReservoirTabVisibility();
            app.updateReservoir();
        end

        % Value changed function: TaskKeepExistingCheckBox
        function TaskKeepExistingCheckBoxValueChanged(app, event)
            app.updateWarningsPanel();
        end

        % Selection changed function: TimestepTypeButtonGroup
        function TimestepTypeButtonGroupSelectionChanged(app, event)
            app.updateSimulationTabVisibility();
        end

        % Value changed function: InjWellTempUnitDropDown
        function InjWellTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.InjWellTempEditField, app.InjWellTempUnitDropDown);
        end

        % Value changed function: BCxMinTempUnitDropDown
        function BCxMinTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCxMinTempEditField, app.BCxMinTempUnitDropDown);
        end

        % Value changed function: BCxMaxTempUnitDropDown
        function BCxMaxTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCxMaxTempEditField, app.BCxMaxTempUnitDropDown);
        end

        % Value changed function: BCyMinTempUnitDropDown
        function BCyMinTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCyMinTempEditField, app.BCyMinTempUnitDropDown);
        end

        % Value changed function: BCyMaxTempUnitDropDown
        function BCyMaxTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCyMaxTempEditField, app.BCyMaxTempUnitDropDown);
        end

        % Value changed function: BCzMinTempUnitDropDown
        function BCzMinTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCzMinTempEditField, app.BCzMinTempUnitDropDown);
        end

        % Value changed function: BCzMaxTempUnitDropDown
        function BCzMaxTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.BCzMaxTempEditField, app.BCzMaxTempUnitDropDown);
        end

        % Value changed function: ReservoirInitTempUnitDropDown
        function ReservoirInitTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.ReservoirInitTempEditField, app.ReservoirInitTempUnitDropDown);
        end

        % Value changed function: MinReservoirTempUnitDropDown
        function MinReservoirTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.MinReservoirTempEditField, app.MinReservoirTempUnitDropDown);
        end

        % Value changed function: MaxReservoirTempUnitDropDown
        function MaxReservoirTempUnitDropDownValueChanged(app, event)
            app.updateTemperatureMinLimit(app.MaxReservoirTempEditField, app.MaxReservoirTempUnitDropDown);
        end

        % Value changed function: InjWellTopOfPerforationEditField
        function InjWellTopOfPerforationEditFieldValueChanged(app, event)
            app.updateWells();
        end

        % Value changed function: ProdWellTopOfPerforationEditField
        function ProdWellTopOfPerforationEditFieldValueChanged(app, event)
            app.updateWells();
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create GraphicalTaskBuilderUIFigure and hide until all components are created
            app.GraphicalTaskBuilderUIFigure = uifigure('Visible', 'off');
            app.GraphicalTaskBuilderUIFigure.AutoResizeChildren = 'off';
            app.GraphicalTaskBuilderUIFigure.Position = [100 100 1034 772];
            app.GraphicalTaskBuilderUIFigure.Name = 'Graphical Task Builder';
            app.GraphicalTaskBuilderUIFigure.Resize = 'off';
            app.GraphicalTaskBuilderUIFigure.CloseRequestFcn = createCallbackFcn(app, @GraphicalTaskBuilderUIFigureCloseRequest, true);

            % Create GlobalTabGroup
            app.GlobalTabGroup = uitabgroup(app.GraphicalTaskBuilderUIFigure);
            app.GlobalTabGroup.AutoResizeChildren = 'off';
            app.GlobalTabGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalTabGroupSelectionChanged, true);
            app.GlobalTabGroup.Position = [1 379 1034 394];

            % Create GenericTab
            app.GenericTab = uitab(app.GlobalTabGroup);
            app.GenericTab.AutoResizeChildren = 'off';
            app.GenericTab.Title = 'Generic';

            % Create NameEditFieldLabel
            app.NameEditFieldLabel = uilabel(app.GenericTab);
            app.NameEditFieldLabel.HorizontalAlignment = 'right';
            app.NameEditFieldLabel.Position = [47 311 38 22];
            app.NameEditFieldLabel.Text = 'Name';

            % Create TaskNameEditField
            app.TaskNameEditField = uieditfield(app.GenericTab, 'text');
            app.TaskNameEditField.ValueChangedFcn = createCallbackFcn(app, @TaskNameEditFieldValueChanged, true);
            app.TaskNameEditField.Position = [100 311 257 22];
            app.TaskNameEditField.Value = 'Task';

            % Create CreatedEditFieldLabel
            app.CreatedEditFieldLabel = uilabel(app.GenericTab);
            app.CreatedEditFieldLabel.HorizontalAlignment = 'right';
            app.CreatedEditFieldLabel.Position = [37 142 48 22];
            app.CreatedEditFieldLabel.Text = 'Created';

            % Create TaskCreatedEditField
            app.TaskCreatedEditField = uieditfield(app.GenericTab, 'text');
            app.TaskCreatedEditField.Editable = 'off';
            app.TaskCreatedEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TaskCreatedEditField.Position = [100 142 168 22];

            % Create NotesTextAreaLabel
            app.NotesTextAreaLabel = uilabel(app.GenericTab);
            app.NotesTextAreaLabel.HorizontalAlignment = 'right';
            app.NotesTextAreaLabel.Position = [48 271 37 22];
            app.NotesTextAreaLabel.Text = 'Notes';

            % Create TaskNotesTextArea
            app.TaskNotesTextArea = uitextarea(app.GenericTab);
            app.TaskNotesTextArea.Position = [100 179 257 116];

            % Create TaskKeepExistingCheckBox
            app.TaskKeepExistingCheckBox = uicheckbox(app.GenericTab);
            app.TaskKeepExistingCheckBox.ValueChangedFcn = createCallbackFcn(app, @TaskKeepExistingCheckBoxValueChanged, true);
            app.TaskKeepExistingCheckBox.Text = 'Keep existing Task';
            app.TaskKeepExistingCheckBox.Position = [100 111 122 22];

            % Create DomainTab
            app.DomainTab = uitab(app.GlobalTabGroup);
            app.DomainTab.AutoResizeChildren = 'off';
            app.DomainTab.Title = 'Domain';

            % Create GlobalGridSizePanel
            app.GlobalGridSizePanel = uipanel(app.DomainTab);
            app.GlobalGridSizePanel.AutoResizeChildren = 'off';
            app.GlobalGridSizePanel.Title = 'Global Grid Size';
            app.GlobalGridSizePanel.Position = [69 170 189 157];

            % Create GridSizezUnitDropDown
            app.GridSizezUnitDropDown = uidropdown(app.GlobalGridSizePanel);
            app.GridSizezUnitDropDown.Items = {'m', 'km', 'ft', 'mi'};
            app.GridSizezUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GridSizezUnitDropDownValueChanged, true);
            app.GridSizezUnitDropDown.Position = [121 48 53 22];
            app.GridSizezUnitDropDown.Value = 'm';

            % Create GridSizexUnitDropDown
            app.GridSizexUnitDropDown = uidropdown(app.GlobalGridSizePanel);
            app.GridSizexUnitDropDown.Items = {'m', 'km', 'ft', 'mi'};
            app.GridSizexUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GridSizexUnitDropDownValueChanged, true);
            app.GridSizexUnitDropDown.Position = [121 102 53 22];
            app.GridSizexUnitDropDown.Value = 'm';

            % Create GridSizeyUnitDropDown
            app.GridSizeyUnitDropDown = uidropdown(app.GlobalGridSizePanel);
            app.GridSizeyUnitDropDown.Items = {'m', 'km', 'ft', 'mi'};
            app.GridSizeyUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GridSizeyUnitDropDownValueChanged, true);
            app.GridSizeyUnitDropDown.Position = [121 75 53 22];
            app.GridSizeyUnitDropDown.Value = 'm';

            % Create GridDepthUnitDropDown
            app.GridDepthUnitDropDown = uidropdown(app.GlobalGridSizePanel);
            app.GridDepthUnitDropDown.Items = {'m', 'km', 'ft', 'mi'};
            app.GridDepthUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GridDepthUnitDropDownValueChanged, true);
            app.GridDepthUnitDropDown.Position = [121 22 53 22];
            app.GridDepthUnitDropDown.Value = 'm';

            % Create xLabel_4
            app.xLabel_4 = uilabel(app.GlobalGridSizePanel);
            app.xLabel_4.Position = [23 102 25 22];
            app.xLabel_4.Text = 'x';

            % Create GridSizexEditField
            app.GridSizexEditField = uieditfield(app.GlobalGridSizePanel, 'numeric');
            app.GridSizexEditField.LowerLimitInclusive = 'off';
            app.GridSizexEditField.Limits = [0 Inf];
            app.GridSizexEditField.RoundFractionalValues = 'on';
            app.GridSizexEditField.ValueChangedFcn = createCallbackFcn(app, @GridSizexEditFieldValueChanged, true);
            app.GridSizexEditField.Position = [61 102 49 22];
            app.GridSizexEditField.Value = 100;

            % Create xLabel_5
            app.xLabel_5 = uilabel(app.GlobalGridSizePanel);
            app.xLabel_5.Position = [23 75 18 22];
            app.xLabel_5.Text = 'y';

            % Create GridSizeyEditField
            app.GridSizeyEditField = uieditfield(app.GlobalGridSizePanel, 'numeric');
            app.GridSizeyEditField.LowerLimitInclusive = 'off';
            app.GridSizeyEditField.Limits = [0 Inf];
            app.GridSizeyEditField.RoundFractionalValues = 'on';
            app.GridSizeyEditField.ValueChangedFcn = createCallbackFcn(app, @GridSizeyEditFieldValueChanged, true);
            app.GridSizeyEditField.Position = [61 75 49 22];
            app.GridSizeyEditField.Value = 100;

            % Create xLabel_6
            app.xLabel_6 = uilabel(app.GlobalGridSizePanel);
            app.xLabel_6.Position = [23 48 17 22];
            app.xLabel_6.Text = 'z';

            % Create GridSizezEditField
            app.GridSizezEditField = uieditfield(app.GlobalGridSizePanel, 'numeric');
            app.GridSizezEditField.LowerLimitInclusive = 'off';
            app.GridSizezEditField.Limits = [0 Inf];
            app.GridSizezEditField.RoundFractionalValues = 'on';
            app.GridSizezEditField.ValueChangedFcn = createCallbackFcn(app, @GridSizezEditFieldValueChanged, true);
            app.GridSizezEditField.Position = [61 48 49 22];
            app.GridSizezEditField.Value = 100;

            % Create xLabel_7
            app.xLabel_7 = uilabel(app.GlobalGridSizePanel);
            app.xLabel_7.Position = [23 22 38 22];
            app.xLabel_7.Text = 'Depth';

            % Create GridDepthEditField
            app.GridDepthEditField = uieditfield(app.GlobalGridSizePanel, 'numeric');
            app.GridDepthEditField.Limits = [0 Inf];
            app.GridDepthEditField.RoundFractionalValues = 'on';
            app.GridDepthEditField.ValueChangedFcn = createCallbackFcn(app, @GridDepthEditFieldValueChanged, true);
            app.GridDepthEditField.Tooltip = {'Depth of uppermost grid layer'};
            app.GridDepthEditField.Position = [61 22 49 22];

            % Create GridLayerPanel
            app.GridLayerPanel = uipanel(app.DomainTab);
            app.GridLayerPanel.AutoResizeChildren = 'off';
            app.GridLayerPanel.Title = 'Layer';
            app.GridLayerPanel.Position = [412 99 429 228];

            % Create GridLayerActiveCheckBox
            app.GridLayerActiveCheckBox = uicheckbox(app.GridLayerPanel);
            app.GridLayerActiveCheckBox.ValueChangedFcn = createCallbackFcn(app, @GridLayerActiveCheckBoxValueChanged, true);
            app.GridLayerActiveCheckBox.Text = 'Active';
            app.GridLayerActiveCheckBox.Position = [20 173 55 22];

            % Create GridLayerPropertiesPanel
            app.GridLayerPropertiesPanel = uipanel(app.GridLayerPanel);
            app.GridLayerPropertiesPanel.AutoResizeChildren = 'off';
            app.GridLayerPropertiesPanel.Position = [20 28 385 133];

            % Create xLabel_8
            app.xLabel_8 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_8.Position = [203 96 95 22];
            app.xLabel_8.Text = 'Thickness (cells)';

            % Create xLabel_9
            app.xLabel_9 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_9.HorizontalAlignment = 'right';
            app.xLabel_9.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.xLabel_9.Position = [79 96 25 22];
            app.xLabel_9.Text = 'x';

            % Create xLabel_10
            app.xLabel_10 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_10.Position = [248 69 43 22];
            app.xLabel_10.Text = 'Roll (x)';

            % Create xLabel_12
            app.xLabel_12 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_12.Position = [352 69 25 22];
            app.xLabel_12.Text = '°';

            % Create xLabel_11
            app.xLabel_11 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_11.Position = [248 42 50 22];
            app.xLabel_11.Text = 'Pitch (y)';

            % Create xLabel_13
            app.xLabel_13 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_13.Position = [352 41 25 22];
            app.xLabel_13.Text = '°';

            % Create PlanePointLabel
            app.PlanePointLabel = uilabel(app.GridLayerPropertiesPanel);
            app.PlanePointLabel.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.PlanePointLabel.Position = [21 96 67 22];
            app.PlanePointLabel.Text = 'Plane Point';

            % Create GridLayerYawEditField
            app.GridLayerYawEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerYawEditField.RoundFractionalValues = 'on';
            app.GridLayerYawEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerYawEditFieldValueChanged, true);
            app.GridLayerYawEditField.Tooltip = {''};
            app.GridLayerYawEditField.Position = [300 15 49 22];

            % Create GridLayerPitchEditField
            app.GridLayerPitchEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerPitchEditField.RoundFractionalValues = 'on';
            app.GridLayerPitchEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerPitchEditFieldValueChanged, true);
            app.GridLayerPitchEditField.Tooltip = {''};
            app.GridLayerPitchEditField.Position = [300 42 49 22];

            % Create GridLayerRollEditField
            app.GridLayerRollEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerRollEditField.RoundFractionalValues = 'on';
            app.GridLayerRollEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerRollEditFieldValueChanged, true);
            app.GridLayerRollEditField.Tooltip = {''};
            app.GridLayerRollEditField.Position = [300 69 49 22];

            % Create xLabel_14
            app.xLabel_14 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_14.HorizontalAlignment = 'right';
            app.xLabel_14.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.xLabel_14.Position = [79 69 25 22];
            app.xLabel_14.Text = 'y';

            % Create xLabel_15
            app.xLabel_15 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_15.HorizontalAlignment = 'right';
            app.xLabel_15.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.xLabel_15.Position = [79 42 25 22];
            app.xLabel_15.Text = 'z';

            % Create GridLayerPlanePointzEditField
            app.GridLayerPlanePointzEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerPlanePointzEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerPlanePointzEditFieldValueChanged, true);
            app.GridLayerPlanePointzEditField.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.GridLayerPlanePointzEditField.Position = [110 42 49 22];

            % Create GridLayerPlanePointyEditField
            app.GridLayerPlanePointyEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerPlanePointyEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerPlanePointyEditFieldValueChanged, true);
            app.GridLayerPlanePointyEditField.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.GridLayerPlanePointyEditField.Position = [110 69 49 22];

            % Create GridLayerPlanePointxEditField
            app.GridLayerPlanePointxEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerPlanePointxEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerPlanePointxEditFieldValueChanged, true);
            app.GridLayerPlanePointxEditField.Tooltip = {'Arbitrary point within domain used to specify base plane. The coordinates have to be Cartesian cell coordinates relative to the first node at (0,0,0).'};
            app.GridLayerPlanePointxEditField.Position = [110 96 49 22];

            % Create GridLayerThicknessEditField
            app.GridLayerThicknessEditField = uieditfield(app.GridLayerPropertiesPanel, 'numeric');
            app.GridLayerThicknessEditField.Limits = [1 Inf];
            app.GridLayerThicknessEditField.RoundFractionalValues = 'on';
            app.GridLayerThicknessEditField.ValueChangedFcn = createCallbackFcn(app, @GridLayerThicknessEditFieldValueChanged, true);
            app.GridLayerThicknessEditField.Tooltip = {''};
            app.GridLayerThicknessEditField.Position = [300 96 49 22];
            app.GridLayerThicknessEditField.Value = 1;

            % Create xLabel_16
            app.xLabel_16 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_16.Position = [352 15 25 22];
            app.xLabel_16.Text = '°';

            % Create xLabel_17
            app.xLabel_17 = uilabel(app.GridLayerPropertiesPanel);
            app.xLabel_17.Position = [248 15 45 22];
            app.xLabel_17.Text = 'Yaw (z)';

            % Create GlobalCellsPanel
            app.GlobalCellsPanel = uipanel(app.DomainTab);
            app.GlobalCellsPanel.AutoResizeChildren = 'off';
            app.GlobalCellsPanel.Title = 'Global Cells';
            app.GlobalCellsPanel.Position = [285 205 100 122];

            % Create GridNxEditField
            app.GridNxEditField = uieditfield(app.GlobalCellsPanel, 'numeric');
            app.GridNxEditField.Limits = [1 Inf];
            app.GridNxEditField.RoundFractionalValues = 'on';
            app.GridNxEditField.ValueChangedFcn = createCallbackFcn(app, @GridNxEditFieldValueChanged, true);
            app.GridNxEditField.Position = [42 67 49 22];
            app.GridNxEditField.Value = 10;

            % Create xLabel
            app.xLabel = uilabel(app.GlobalCellsPanel);
            app.xLabel.HorizontalAlignment = 'center';
            app.xLabel.Position = [18 67 25 22];
            app.xLabel.Text = 'x';

            % Create GridNyEditField
            app.GridNyEditField = uieditfield(app.GlobalCellsPanel, 'numeric');
            app.GridNyEditField.Limits = [1 Inf];
            app.GridNyEditField.RoundFractionalValues = 'on';
            app.GridNyEditField.ValueChangedFcn = createCallbackFcn(app, @GridNyEditFieldValueChanged, true);
            app.GridNyEditField.Position = [42 40 49 22];
            app.GridNyEditField.Value = 10;

            % Create xLabel_2
            app.xLabel_2 = uilabel(app.GlobalCellsPanel);
            app.xLabel_2.HorizontalAlignment = 'center';
            app.xLabel_2.Position = [18 40 25 22];
            app.xLabel_2.Text = 'y';

            % Create GridNzEditField
            app.GridNzEditField = uieditfield(app.GlobalCellsPanel, 'numeric');
            app.GridNzEditField.Limits = [1 Inf];
            app.GridNzEditField.RoundFractionalValues = 'on';
            app.GridNzEditField.ValueChangedFcn = createCallbackFcn(app, @GridNzEditFieldValueChanged, true);
            app.GridNzEditField.Position = [42 13 49 22];
            app.GridNzEditField.Value = 10;

            % Create xLabel_3
            app.xLabel_3 = uilabel(app.GlobalCellsPanel);
            app.xLabel_3.HorizontalAlignment = 'center';
            app.xLabel_3.Position = [18 13 25 22];
            app.xLabel_3.Text = 'z';

            % Create RockTab
            app.RockTab = uitab(app.GlobalTabGroup);
            app.RockTab.AutoResizeChildren = 'off';
            app.RockTab.Title = 'Rock';

            % Create VisualizationPanel
            app.VisualizationPanel = uipanel(app.RockTab);
            app.VisualizationPanel.AutoResizeChildren = 'off';
            app.VisualizationPanel.Title = 'Visualization';
            app.VisualizationPanel.Position = [799 134 212 215];

            % Create RockVisualizationButtonGroup
            app.RockVisualizationButtonGroup = uibuttongroup(app.VisualizationPanel);
            app.RockVisualizationButtonGroup.AutoResizeChildren = 'off';
            app.RockVisualizationButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @RockVisualizationButtonGroupSelectionChanged, true);
            app.RockVisualizationButtonGroup.BorderType = 'none';
            app.RockVisualizationButtonGroup.Position = [10 64 159 127];

            % Create RockVisualizationPorosityButton
            app.RockVisualizationPorosityButton = uiradiobutton(app.RockVisualizationButtonGroup);
            app.RockVisualizationPorosityButton.Text = 'Porosity';
            app.RockVisualizationPorosityButton.Position = [11 102 65 22];
            app.RockVisualizationPorosityButton.Value = true;

            % Create RockVisualizationPermButton
            app.RockVisualizationPermButton = uiradiobutton(app.RockVisualizationButtonGroup);
            app.RockVisualizationPermButton.Text = 'Permeability';
            app.RockVisualizationPermButton.Position = [11 79 88 22];

            % Create RockVisualizationDensityButton
            app.RockVisualizationDensityButton = uiradiobutton(app.RockVisualizationButtonGroup);
            app.RockVisualizationDensityButton.Text = 'Density';
            app.RockVisualizationDensityButton.Position = [11 56 62 22];

            % Create RockVisualizationCondButton
            app.RockVisualizationCondButton = uiradiobutton(app.RockVisualizationButtonGroup);
            app.RockVisualizationCondButton.Text = 'Thermal Conductivity';
            app.RockVisualizationCondButton.Position = [11 34 135 22];

            % Create RockVisualizationHeatButton
            app.RockVisualizationHeatButton = uiradiobutton(app.RockVisualizationButtonGroup);
            app.RockVisualizationHeatButton.Text = 'Specific Heat Capacity';
            app.RockVisualizationHeatButton.Position = [11 12 143 22];

            % Create VisualizeLayerOnlyCheckBox
            app.VisualizeLayerOnlyCheckBox = uicheckbox(app.VisualizationPanel);
            app.VisualizeLayerOnlyCheckBox.ValueChangedFcn = createCallbackFcn(app, @VisualizeLayerOnlyCheckBoxValueChanged, true);
            app.VisualizeLayerOnlyCheckBox.Text = 'Show layer only';
            app.VisualizeLayerOnlyCheckBox.Position = [13 19 107 22];

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.RockTab);
            app.TabGroup4.AutoResizeChildren = 'off';
            app.TabGroup4.Position = [26 12 755 337];

            % Create PorosityTab
            app.PorosityTab = uitab(app.TabGroup4);
            app.PorosityTab.AutoResizeChildren = 'off';
            app.PorosityTab.Title = 'Porosity';

            % Create GlobalPorosityTabGroup
            app.GlobalPorosityTabGroup = uitabgroup(app.PorosityTab);
            app.GlobalPorosityTabGroup.AutoResizeChildren = 'off';
            app.GlobalPorosityTabGroup.TabLocation = 'left';
            app.GlobalPorosityTabGroup.Position = [14 105 540 194];

            % Create GlobalPorosityTab
            app.GlobalPorosityTab = uitab(app.GlobalPorosityTabGroup);
            app.GlobalPorosityTab.AutoResizeChildren = 'off';
            app.GlobalPorosityTab.Title = 'Global';

            % Create GlobalPorosityButtonGroup
            app.GlobalPorosityButtonGroup = uibuttongroup(app.GlobalPorosityTab);
            app.GlobalPorosityButtonGroup.AutoResizeChildren = 'off';
            app.GlobalPorosityButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalPorosityButtonGroupSelectionChanged, true);
            app.GlobalPorosityButtonGroup.BorderType = 'none';
            app.GlobalPorosityButtonGroup.Position = [21 76 131 101];

            % Create GlobalPorosityUniformButton
            app.GlobalPorosityUniformButton = uiradiobutton(app.GlobalPorosityButtonGroup);
            app.GlobalPorosityUniformButton.Text = 'Uniform';
            app.GlobalPorosityUniformButton.Position = [16 75 64 22];
            app.GlobalPorosityUniformButton.Value = true;

            % Create GlobalPorosityGaussianButton
            app.GlobalPorosityGaussianButton = uiradiobutton(app.GlobalPorosityButtonGroup);
            app.GlobalPorosityGaussianButton.Text = 'Random Gaussian';
            app.GlobalPorosityGaussianButton.Position = [16 33 121 22];

            % Create PorosityLabel
            app.PorosityLabel = uilabel(app.GlobalPorosityTab);
            app.PorosityLabel.HorizontalAlignment = 'right';
            app.PorosityLabel.Position = [225 150 49 22];
            app.PorosityLabel.Text = 'Porosity';

            % Create GlobalPorosityEditField
            app.GlobalPorosityEditField = uieditfield(app.GlobalPorosityTab, 'numeric');
            app.GlobalPorosityEditField.LowerLimitInclusive = 'off';
            app.GlobalPorosityEditField.Limits = [0 1];
            app.GlobalPorosityEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPorosityEditFieldValueChanged, true);
            app.GlobalPorosityEditField.Position = [289 150 57 22];
            app.GlobalPorosityEditField.Value = 0.2;

            % Create PorositymaxLabel_2
            app.PorositymaxLabel_2 = uilabel(app.GlobalPorosityTab);
            app.PorositymaxLabel_2.HorizontalAlignment = 'right';
            app.PorositymaxLabel_2.Position = [191 81 83 22];
            app.PorositymaxLabel_2.Text = 'Porosity (max)';

            % Create GlobalPorosityGaussianMaxEditField
            app.GlobalPorosityGaussianMaxEditField = uieditfield(app.GlobalPorosityTab, 'numeric');
            app.GlobalPorosityGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.GlobalPorosityGaussianMaxEditField.Limits = [0 1];
            app.GlobalPorosityGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPorosityGaussianMaxEditFieldValueChanged, true);
            app.GlobalPorosityGaussianMaxEditField.Position = [289 81 57 22];
            app.GlobalPorosityGaussianMaxEditField.Value = 0.2;

            % Create PorosityminLabel
            app.PorosityminLabel = uilabel(app.GlobalPorosityTab);
            app.PorosityminLabel.HorizontalAlignment = 'right';
            app.PorosityminLabel.Position = [194 108 80 22];
            app.PorosityminLabel.Text = 'Porosity (min)';

            % Create GlobalPorosityGaussianMinEditField
            app.GlobalPorosityGaussianMinEditField = uieditfield(app.GlobalPorosityTab, 'numeric');
            app.GlobalPorosityGaussianMinEditField.LowerLimitInclusive = 'off';
            app.GlobalPorosityGaussianMinEditField.Limits = [0 1];
            app.GlobalPorosityGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPorosityGaussianMinEditFieldValueChanged, true);
            app.GlobalPorosityGaussianMinEditField.Position = [289 108 57 22];
            app.GlobalPorosityGaussianMinEditField.Value = 0.1;

            % Create StandardDeviationEditFieldLabel
            app.StandardDeviationEditFieldLabel = uilabel(app.GlobalPorosityTab);
            app.StandardDeviationEditFieldLabel.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel.Text = 'Standard Deviation';

            % Create GlobalPorosityGaussianStdEditField
            app.GlobalPorosityGaussianStdEditField = uieditfield(app.GlobalPorosityTab, 'numeric');
            app.GlobalPorosityGaussianStdEditField.LowerLimitInclusive = 'off';
            app.GlobalPorosityGaussianStdEditField.Limits = [0 Inf];
            app.GlobalPorosityGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPorosityGaussianStdEditFieldValueChanged, true);
            app.GlobalPorosityGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.GlobalPorosityGaussianStdEditField.Position = [289 54 57 22];
            app.GlobalPorosityGaussianStdEditField.Value = 0.5;

            % Create SingleCalculationCheckBox
            app.SingleCalculationCheckBox = uicheckbox(app.GlobalPorosityTab);
            app.SingleCalculationCheckBox.Enable = 'off';
            app.SingleCalculationCheckBox.Text = 'Single Calculation';
            app.SingleCalculationCheckBox.Position = [289 29 118 22];

            % Create LayerPorosityTab
            app.LayerPorosityTab = uitab(app.GlobalPorosityTabGroup);
            app.LayerPorosityTab.AutoResizeChildren = 'off';
            app.LayerPorosityTab.Title = 'Layer';

            % Create LayerPorosityButtonGroup
            app.LayerPorosityButtonGroup = uibuttongroup(app.LayerPorosityTab);
            app.LayerPorosityButtonGroup.AutoResizeChildren = 'off';
            app.LayerPorosityButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @LayerPorosityButtonGroupSelectionChanged, true);
            app.LayerPorosityButtonGroup.BorderType = 'none';
            app.LayerPorosityButtonGroup.Position = [21 76 131 101];

            % Create LayerPorosityUniformButton
            app.LayerPorosityUniformButton = uiradiobutton(app.LayerPorosityButtonGroup);
            app.LayerPorosityUniformButton.Text = 'Uniform';
            app.LayerPorosityUniformButton.Position = [16 75 64 22];
            app.LayerPorosityUniformButton.Value = true;

            % Create LayerPorosityGaussianButton
            app.LayerPorosityGaussianButton = uiradiobutton(app.LayerPorosityButtonGroup);
            app.LayerPorosityGaussianButton.Text = 'Random Gaussian';
            app.LayerPorosityGaussianButton.Position = [16 33 121 22];

            % Create phiEditField_2Label_2
            app.phiEditField_2Label_2 = uilabel(app.LayerPorosityTab);
            app.phiEditField_2Label_2.HorizontalAlignment = 'right';
            app.phiEditField_2Label_2.Position = [225 150 49 22];
            app.phiEditField_2Label_2.Text = 'Porosity';

            % Create LayerPorosityEditField
            app.LayerPorosityEditField = uieditfield(app.LayerPorosityTab, 'numeric');
            app.LayerPorosityEditField.LowerLimitInclusive = 'off';
            app.LayerPorosityEditField.Limits = [0 1];
            app.LayerPorosityEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPorosityEditFieldValueChanged, true);
            app.LayerPorosityEditField.Position = [289 150 57 22];
            app.LayerPorosityEditField.Value = 0.2;

            % Create PorositymaxLabel
            app.PorositymaxLabel = uilabel(app.LayerPorosityTab);
            app.PorositymaxLabel.HorizontalAlignment = 'right';
            app.PorositymaxLabel.Position = [191 81 83 22];
            app.PorositymaxLabel.Text = 'Porosity (max)';

            % Create LayerPorosityGaussianMaxEditField
            app.LayerPorosityGaussianMaxEditField = uieditfield(app.LayerPorosityTab, 'numeric');
            app.LayerPorosityGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.LayerPorosityGaussianMaxEditField.Limits = [0 1];
            app.LayerPorosityGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPorosityGaussianMaxEditFieldValueChanged, true);
            app.LayerPorosityGaussianMaxEditField.Position = [289 81 57 22];
            app.LayerPorosityGaussianMaxEditField.Value = 0.2;

            % Create PorsityminLabel
            app.PorsityminLabel = uilabel(app.LayerPorosityTab);
            app.PorsityminLabel.HorizontalAlignment = 'right';
            app.PorsityminLabel.Position = [194 108 80 22];
            app.PorsityminLabel.Text = 'Porosity (min)';

            % Create LayerPorosityGaussianMinEditField
            app.LayerPorosityGaussianMinEditField = uieditfield(app.LayerPorosityTab, 'numeric');
            app.LayerPorosityGaussianMinEditField.LowerLimitInclusive = 'off';
            app.LayerPorosityGaussianMinEditField.Limits = [0 1];
            app.LayerPorosityGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPorosityGaussianMinEditFieldValueChanged, true);
            app.LayerPorosityGaussianMinEditField.Position = [289 108 57 22];
            app.LayerPorosityGaussianMinEditField.Value = 0.1;

            % Create StandardDeviationEditFieldLabel_2
            app.StandardDeviationEditFieldLabel_2 = uilabel(app.LayerPorosityTab);
            app.StandardDeviationEditFieldLabel_2.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_2.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_2.Text = 'Standard Deviation';

            % Create LayerPorosityGaussianStdEditField
            app.LayerPorosityGaussianStdEditField = uieditfield(app.LayerPorosityTab, 'numeric');
            app.LayerPorosityGaussianStdEditField.LowerLimitInclusive = 'off';
            app.LayerPorosityGaussianStdEditField.Limits = [0 Inf];
            app.LayerPorosityGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPorosityGaussianStdEditFieldValueChanged, true);
            app.LayerPorosityGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.LayerPorosityGaussianStdEditField.Position = [289 54 57 22];
            app.LayerPorosityGaussianStdEditField.Value = 0.5;

            % Create SingleCalculationCheckBox_6
            app.SingleCalculationCheckBox_6 = uicheckbox(app.LayerPorosityTab);
            app.SingleCalculationCheckBox_6.Enable = 'off';
            app.SingleCalculationCheckBox_6.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_6.Position = [289 29 118 22];

            % Create PermeabilityTab
            app.PermeabilityTab = uitab(app.TabGroup4);
            app.PermeabilityTab.AutoResizeChildren = 'off';
            app.PermeabilityTab.Title = 'Permeability';

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.PermeabilityTab);
            app.TabGroup3.AutoResizeChildren = 'off';
            app.TabGroup3.TabLocation = 'left';
            app.TabGroup3.Position = [14 9 729 290];

            % Create GlobalPermeabilityTab
            app.GlobalPermeabilityTab = uitab(app.TabGroup3);
            app.GlobalPermeabilityTab.AutoResizeChildren = 'off';
            app.GlobalPermeabilityTab.Title = 'Global';

            % Create GlobalPermButtonGroup
            app.GlobalPermButtonGroup = uibuttongroup(app.GlobalPermeabilityTab);
            app.GlobalPermButtonGroup.AutoResizeChildren = 'off';
            app.GlobalPermButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalPermButtonGroupSelectionChanged, true);
            app.GlobalPermButtonGroup.BorderType = 'none';
            app.GlobalPermButtonGroup.FontWeight = 'bold';
            app.GlobalPermButtonGroup.Position = [26 7 132 266];

            % Create GlobalPermUniformButton
            app.GlobalPermUniformButton = uiradiobutton(app.GlobalPermButtonGroup);
            app.GlobalPermUniformButton.Text = 'Uniform';
            app.GlobalPermUniformButton.Position = [12 234 64 22];
            app.GlobalPermUniformButton.Value = true;

            % Create GlobalPermGaussianButton
            app.GlobalPermGaussianButton = uiradiobutton(app.GlobalPermButtonGroup);
            app.GlobalPermGaussianButton.Text = 'Gaussian';
            app.GlobalPermGaussianButton.Position = [12 201 73 22];

            % Create GlobalPermDirectionalButton
            app.GlobalPermDirectionalButton = uiradiobutton(app.GlobalPermButtonGroup);
            app.GlobalPermDirectionalButton.Text = 'Directional';
            app.GlobalPermDirectionalButton.Position = [12 108 79 22];

            % Create phiEditField_2Label_3
            app.phiEditField_2Label_3 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_3.HorizontalAlignment = 'right';
            app.phiEditField_2Label_3.Position = [217 240 25 22];
            app.phiEditField_2Label_3.Text = 'K';

            % Create GlobalPermEditField
            app.GlobalPermEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermEditField.LowerLimitInclusive = 'off';
            app.GlobalPermEditField.Limits = [0 Inf];
            app.GlobalPermEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermEditFieldValueChanged, true);
            app.GlobalPermEditField.Position = [252 240 57 22];
            app.GlobalPermEditField.Value = 1;

            % Create phiEditField_2Label_4
            app.phiEditField_2Label_4 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_4.HorizontalAlignment = 'right';
            app.phiEditField_2Label_4.Position = [199 206 43 24];
            app.phiEditField_2Label_4.Text = 'K_min';

            % Create GlobalPermGaussianMinEditField
            app.GlobalPermGaussianMinEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermGaussianMinEditField.LowerLimitInclusive = 'off';
            app.GlobalPermGaussianMinEditField.Limits = [0 Inf];
            app.GlobalPermGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermGaussianMinEditFieldValueChanged, true);
            app.GlobalPermGaussianMinEditField.Position = [252 206 57 24];
            app.GlobalPermGaussianMinEditField.Value = 1;

            % Create phiEditField_2Label_5
            app.phiEditField_2Label_5 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_5.HorizontalAlignment = 'right';
            app.phiEditField_2Label_5.Position = [184 174 58 22];
            app.phiEditField_2Label_5.Text = 'K_max';

            % Create GlobalPermGaussianMaxEditField
            app.GlobalPermGaussianMaxEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.GlobalPermGaussianMaxEditField.Limits = [0 Inf];
            app.GlobalPermGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermGaussianMaxEditFieldValueChanged, true);
            app.GlobalPermGaussianMaxEditField.Position = [252 174 57 22];
            app.GlobalPermGaussianMaxEditField.Value = 2;

            % Create phiEditField_2Label_6
            app.phiEditField_2Label_6 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_6.HorizontalAlignment = 'right';
            app.phiEditField_2Label_6.Position = [408 207 111 22];
            app.phiEditField_2Label_6.Text = 'Standard Deviation';

            % Create GlobalPermGaussianStdEditField
            app.GlobalPermGaussianStdEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermGaussianStdEditField.LowerLimitInclusive = 'off';
            app.GlobalPermGaussianStdEditField.Limits = [0 Inf];
            app.GlobalPermGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermGaussianStdEditFieldValueChanged, true);
            app.GlobalPermGaussianStdEditField.Position = [529 207 57 22];
            app.GlobalPermGaussianStdEditField.Value = 0.5;

            % Create phiEditField_2Label_7
            app.phiEditField_2Label_7 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_7.HorizontalAlignment = 'right';
            app.phiEditField_2Label_7.Position = [166 113 76 24];
            app.phiEditField_2Label_7.Text = 'K_x';

            % Create GlobalPermDirxEditField
            app.GlobalPermDirxEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermDirxEditField.LowerLimitInclusive = 'off';
            app.GlobalPermDirxEditField.Limits = [0 Inf];
            app.GlobalPermDirxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermDirxEditFieldValueChanged, true);
            app.GlobalPermDirxEditField.Position = [252 113 57 24];
            app.GlobalPermDirxEditField.Value = 1;

            % Create phiEditField_2Label_8
            app.phiEditField_2Label_8 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_8.HorizontalAlignment = 'right';
            app.phiEditField_2Label_8.Position = [216 51 26 22];
            app.phiEditField_2Label_8.Text = 'K_z';

            % Create GlobalPermDirzEditField
            app.GlobalPermDirzEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermDirzEditField.LowerLimitInclusive = 'off';
            app.GlobalPermDirzEditField.Limits = [0 Inf];
            app.GlobalPermDirzEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalPermDirzEditFieldValueChanged, true);
            app.GlobalPermDirzEditField.Position = [252 51 57 22];
            app.GlobalPermDirzEditField.Value = 1;

            % Create GlobalPermUnitDropDown
            app.GlobalPermUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermUnitDropDown.Items = {'mD'};
            app.GlobalPermUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalPermUnitDropDownValueChanged, true);
            app.GlobalPermUnitDropDown.Position = [317 240 73 22];
            app.GlobalPermUnitDropDown.Value = 'mD';

            % Create GlobalPermGaussianMinUnitDropDown
            app.GlobalPermGaussianMinUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermGaussianMinUnitDropDown.Items = {'mD'};
            app.GlobalPermGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalPermGaussianMinUnitDropDownValueChanged, true);
            app.GlobalPermGaussianMinUnitDropDown.Position = [317 207 73 22];
            app.GlobalPermGaussianMinUnitDropDown.Value = 'mD';

            % Create GlobalPermGaussianMaxUnitDropDown
            app.GlobalPermGaussianMaxUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermGaussianMaxUnitDropDown.Items = {'mD'};
            app.GlobalPermGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalPermGaussianMaxUnitDropDownValueChanged, true);
            app.GlobalPermGaussianMaxUnitDropDown.Position = [317 174 73 22];
            app.GlobalPermGaussianMaxUnitDropDown.Value = 'mD';

            % Create GlobalPermDirxUnitDropDown
            app.GlobalPermDirxUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermDirxUnitDropDown.Items = {'mD'};
            app.GlobalPermDirxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalPermDirxUnitDropDownValueChanged, true);
            app.GlobalPermDirxUnitDropDown.Position = [317 114 73 22];
            app.GlobalPermDirxUnitDropDown.Value = 'mD';

            % Create GlobalPermDirzUnitDropDown
            app.GlobalPermDirzUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermDirzUnitDropDown.Items = {'mD'};
            app.GlobalPermDirzUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalPermDirzUnitDropDownValueChanged, true);
            app.GlobalPermDirzUnitDropDown.Position = [317 51 73 22];
            app.GlobalPermDirzUnitDropDown.Value = 'mD';

            % Create GlobalPermGaussianSingleCalculationCheckBox
            app.GlobalPermGaussianSingleCalculationCheckBox = uicheckbox(app.GlobalPermeabilityTab);
            app.GlobalPermGaussianSingleCalculationCheckBox.Enable = 'off';
            app.GlobalPermGaussianSingleCalculationCheckBox.Text = 'Single Calculation';
            app.GlobalPermGaussianSingleCalculationCheckBox.Position = [529 174 118 22];

            % Create GlobalPermDiryUnitDropDown
            app.GlobalPermDiryUnitDropDown = uidropdown(app.GlobalPermeabilityTab);
            app.GlobalPermDiryUnitDropDown.Items = {'mD'};
            app.GlobalPermDiryUnitDropDown.Position = [317 82 73 22];
            app.GlobalPermDiryUnitDropDown.Value = 'mD';

            % Create phiEditField_2Label_42
            app.phiEditField_2Label_42 = uilabel(app.GlobalPermeabilityTab);
            app.phiEditField_2Label_42.HorizontalAlignment = 'right';
            app.phiEditField_2Label_42.Position = [166 81 76 24];
            app.phiEditField_2Label_42.Text = 'K_y';

            % Create GlobalPermDiryEditField
            app.GlobalPermDiryEditField = uieditfield(app.GlobalPermeabilityTab, 'numeric');
            app.GlobalPermDiryEditField.LowerLimitInclusive = 'off';
            app.GlobalPermDiryEditField.Limits = [0 Inf];
            app.GlobalPermDiryEditField.Position = [252 81 57 24];
            app.GlobalPermDiryEditField.Value = 1;

            % Create LayerPermeabilityTab
            app.LayerPermeabilityTab = uitab(app.TabGroup3);
            app.LayerPermeabilityTab.AutoResizeChildren = 'off';
            app.LayerPermeabilityTab.Title = 'Layer';

            % Create LayerPermButtonGroup
            app.LayerPermButtonGroup = uibuttongroup(app.LayerPermeabilityTab);
            app.LayerPermButtonGroup.AutoResizeChildren = 'off';
            app.LayerPermButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @LayerPermButtonGroupSelectionChanged, true);
            app.LayerPermButtonGroup.BorderType = 'none';
            app.LayerPermButtonGroup.FontWeight = 'bold';
            app.LayerPermButtonGroup.Position = [26 44 122 229];

            % Create LayerPermUniformButton
            app.LayerPermUniformButton = uiradiobutton(app.LayerPermButtonGroup);
            app.LayerPermUniformButton.Text = 'Uniform';
            app.LayerPermUniformButton.Position = [12 197 64 22];
            app.LayerPermUniformButton.Value = true;

            % Create LayerPermGaussianButton
            app.LayerPermGaussianButton = uiradiobutton(app.LayerPermButtonGroup);
            app.LayerPermGaussianButton.Text = 'Gaussian';
            app.LayerPermGaussianButton.Position = [12 164 73 22];

            % Create LayerPermDirectionalButton
            app.LayerPermDirectionalButton = uiradiobutton(app.LayerPermButtonGroup);
            app.LayerPermDirectionalButton.Text = 'Directional';
            app.LayerPermDirectionalButton.Position = [12 71 79 22];

            % Create phiEditField_2Label_31
            app.phiEditField_2Label_31 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_31.HorizontalAlignment = 'right';
            app.phiEditField_2Label_31.Position = [217 240 25 22];
            app.phiEditField_2Label_31.Text = 'K';

            % Create LayerPermEditField
            app.LayerPermEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermEditField.LowerLimitInclusive = 'off';
            app.LayerPermEditField.Limits = [0 Inf];
            app.LayerPermEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermEditFieldValueChanged, true);
            app.LayerPermEditField.Position = [252 240 57 22];
            app.LayerPermEditField.Value = 1;

            % Create phiEditField_2Label_32
            app.phiEditField_2Label_32 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_32.HorizontalAlignment = 'right';
            app.phiEditField_2Label_32.Position = [199 206 43 24];
            app.phiEditField_2Label_32.Text = 'K_min';

            % Create LayerPermGaussianMinEditField
            app.LayerPermGaussianMinEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermGaussianMinEditField.LowerLimitInclusive = 'off';
            app.LayerPermGaussianMinEditField.Limits = [0 Inf];
            app.LayerPermGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermGaussianMinEditFieldValueChanged, true);
            app.LayerPermGaussianMinEditField.Position = [252 206 57 24];
            app.LayerPermGaussianMinEditField.Value = 1;

            % Create phiEditField_2Label_33
            app.phiEditField_2Label_33 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_33.HorizontalAlignment = 'right';
            app.phiEditField_2Label_33.Position = [184 174 58 22];
            app.phiEditField_2Label_33.Text = 'K_max';

            % Create LayerPermGaussianMaxEditField
            app.LayerPermGaussianMaxEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.LayerPermGaussianMaxEditField.Limits = [0 Inf];
            app.LayerPermGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermGaussianMaxEditFieldValueChanged, true);
            app.LayerPermGaussianMaxEditField.Position = [252 174 57 22];
            app.LayerPermGaussianMaxEditField.Value = 2;

            % Create phiEditField_2Label_34
            app.phiEditField_2Label_34 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_34.HorizontalAlignment = 'right';
            app.phiEditField_2Label_34.Position = [408 207 111 22];
            app.phiEditField_2Label_34.Text = 'Standard Deviation';

            % Create LayerPermGaussianStdEditField
            app.LayerPermGaussianStdEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermGaussianStdEditField.LowerLimitInclusive = 'off';
            app.LayerPermGaussianStdEditField.Limits = [0 Inf];
            app.LayerPermGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermGaussianStdEditFieldValueChanged, true);
            app.LayerPermGaussianStdEditField.Position = [529 207 57 22];
            app.LayerPermGaussianStdEditField.Value = 0.5;

            % Create phiEditField_2Label_35
            app.phiEditField_2Label_35 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_35.HorizontalAlignment = 'right';
            app.phiEditField_2Label_35.Position = [166 113 76 24];
            app.phiEditField_2Label_35.Text = 'K_x';

            % Create LayerPermDirxEditField
            app.LayerPermDirxEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermDirxEditField.LowerLimitInclusive = 'off';
            app.LayerPermDirxEditField.Limits = [0 Inf];
            app.LayerPermDirxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermDirxEditFieldValueChanged, true);
            app.LayerPermDirxEditField.Position = [252 113 57 24];
            app.LayerPermDirxEditField.Value = 1;

            % Create phiEditField_2Label_36
            app.phiEditField_2Label_36 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_36.HorizontalAlignment = 'right';
            app.phiEditField_2Label_36.Position = [216 51 26 22];
            app.phiEditField_2Label_36.Text = 'K_z';

            % Create LayerPermDirzEditField
            app.LayerPermDirzEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermDirzEditField.LowerLimitInclusive = 'off';
            app.LayerPermDirzEditField.Limits = [0 Inf];
            app.LayerPermDirzEditField.ValueChangedFcn = createCallbackFcn(app, @LayerPermDirzEditFieldValueChanged, true);
            app.LayerPermDirzEditField.Position = [252 51 57 22];
            app.LayerPermDirzEditField.Value = 1;

            % Create LayerPermUnitDropDown
            app.LayerPermUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermUnitDropDown.Items = {'mD'};
            app.LayerPermUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerPermUnitDropDownValueChanged, true);
            app.LayerPermUnitDropDown.Position = [317 240 73 22];
            app.LayerPermUnitDropDown.Value = 'mD';

            % Create LayerPermGaussianMinUnitDropDown
            app.LayerPermGaussianMinUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermGaussianMinUnitDropDown.Items = {'mD'};
            app.LayerPermGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerPermGaussianMinUnitDropDownValueChanged, true);
            app.LayerPermGaussianMinUnitDropDown.Position = [317 207 73 22];
            app.LayerPermGaussianMinUnitDropDown.Value = 'mD';

            % Create LayerPermGaussianMaxUnitDropDown
            app.LayerPermGaussianMaxUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermGaussianMaxUnitDropDown.Items = {'mD'};
            app.LayerPermGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerPermGaussianMaxUnitDropDownValueChanged, true);
            app.LayerPermGaussianMaxUnitDropDown.Position = [317 174 73 22];
            app.LayerPermGaussianMaxUnitDropDown.Value = 'mD';

            % Create LayerPermDirxUnitDropDown
            app.LayerPermDirxUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermDirxUnitDropDown.Items = {'mD'};
            app.LayerPermDirxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerPermDirxUnitDropDownValueChanged, true);
            app.LayerPermDirxUnitDropDown.Position = [317 114 73 22];
            app.LayerPermDirxUnitDropDown.Value = 'mD';

            % Create LayerPermDirzUnitDropDown
            app.LayerPermDirzUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermDirzUnitDropDown.Items = {'mD'};
            app.LayerPermDirzUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerPermDirzUnitDropDownValueChanged, true);
            app.LayerPermDirzUnitDropDown.Position = [317 51 73 22];
            app.LayerPermDirzUnitDropDown.Value = 'mD';

            % Create LayerPermGaussianSingleCalculationCheckBox
            app.LayerPermGaussianSingleCalculationCheckBox = uicheckbox(app.LayerPermeabilityTab);
            app.LayerPermGaussianSingleCalculationCheckBox.Enable = 'off';
            app.LayerPermGaussianSingleCalculationCheckBox.Text = 'Single Calculation';
            app.LayerPermGaussianSingleCalculationCheckBox.Position = [529 174 118 22];

            % Create LayerPermDiryUnitDropDown
            app.LayerPermDiryUnitDropDown = uidropdown(app.LayerPermeabilityTab);
            app.LayerPermDiryUnitDropDown.Items = {'mD'};
            app.LayerPermDiryUnitDropDown.Position = [317 82 73 22];
            app.LayerPermDiryUnitDropDown.Value = 'mD';

            % Create phiEditField_2Label_43
            app.phiEditField_2Label_43 = uilabel(app.LayerPermeabilityTab);
            app.phiEditField_2Label_43.HorizontalAlignment = 'right';
            app.phiEditField_2Label_43.Position = [166 81 76 24];
            app.phiEditField_2Label_43.Text = 'K_y';

            % Create LayerPermDiryEditField
            app.LayerPermDiryEditField = uieditfield(app.LayerPermeabilityTab, 'numeric');
            app.LayerPermDiryEditField.LowerLimitInclusive = 'off';
            app.LayerPermDiryEditField.Limits = [0 Inf];
            app.LayerPermDiryEditField.Position = [252 81 57 24];
            app.LayerPermDiryEditField.Value = 1;

            % Create DensityTab
            app.DensityTab = uitab(app.TabGroup4);
            app.DensityTab.AutoResizeChildren = 'off';
            app.DensityTab.Title = 'Density';

            % Create RockDensityTabGroup
            app.RockDensityTabGroup = uitabgroup(app.DensityTab);
            app.RockDensityTabGroup.AutoResizeChildren = 'off';
            app.RockDensityTabGroup.TabLocation = 'left';
            app.RockDensityTabGroup.Position = [14 105 540 194];

            % Create GlobalDensityTab
            app.GlobalDensityTab = uitab(app.RockDensityTabGroup);
            app.GlobalDensityTab.AutoResizeChildren = 'off';
            app.GlobalDensityTab.Title = 'Global';

            % Create GlobalDensityButtonGroup
            app.GlobalDensityButtonGroup = uibuttongroup(app.GlobalDensityTab);
            app.GlobalDensityButtonGroup.AutoResizeChildren = 'off';
            app.GlobalDensityButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalDensityButtonGroupSelectionChanged, true);
            app.GlobalDensityButtonGroup.BorderType = 'none';
            app.GlobalDensityButtonGroup.Position = [21 76 131 101];

            % Create GlobalDensityUniformButton
            app.GlobalDensityUniformButton = uiradiobutton(app.GlobalDensityButtonGroup);
            app.GlobalDensityUniformButton.Text = 'Uniform';
            app.GlobalDensityUniformButton.Position = [16 75 64 22];
            app.GlobalDensityUniformButton.Value = true;

            % Create GlobalDensityGaussianButton
            app.GlobalDensityGaussianButton = uiradiobutton(app.GlobalDensityButtonGroup);
            app.GlobalDensityGaussianButton.Text = 'Random Gaussian';
            app.GlobalDensityGaussianButton.Position = [16 33 121 22];

            % Create PorosityLabel_2
            app.PorosityLabel_2 = uilabel(app.GlobalDensityTab);
            app.PorosityLabel_2.HorizontalAlignment = 'right';
            app.PorosityLabel_2.Position = [228 150 46 22];
            app.PorosityLabel_2.Text = 'Density';

            % Create GlobalDensityEditField
            app.GlobalDensityEditField = uieditfield(app.GlobalDensityTab, 'numeric');
            app.GlobalDensityEditField.LowerLimitInclusive = 'off';
            app.GlobalDensityEditField.Limits = [0 Inf];
            app.GlobalDensityEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityEditFieldValueChanged, true);
            app.GlobalDensityEditField.Position = [289 150 57 22];
            app.GlobalDensityEditField.Value = 2.7;

            % Create PorositymaxLabel_3
            app.PorositymaxLabel_3 = uilabel(app.GlobalDensityTab);
            app.PorositymaxLabel_3.HorizontalAlignment = 'right';
            app.PorositymaxLabel_3.Position = [194 81 80 22];
            app.PorositymaxLabel_3.Text = 'Density (max)';

            % Create GlobalDensityGaussianMaxEditField
            app.GlobalDensityGaussianMaxEditField = uieditfield(app.GlobalDensityTab, 'numeric');
            app.GlobalDensityGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.GlobalDensityGaussianMaxEditField.Limits = [0 Inf];
            app.GlobalDensityGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityGaussianMaxEditFieldValueChanged, true);
            app.GlobalDensityGaussianMaxEditField.Position = [289 81 57 22];
            app.GlobalDensityGaussianMaxEditField.Value = 2.75;

            % Create PorosityminLabel_2
            app.PorosityminLabel_2 = uilabel(app.GlobalDensityTab);
            app.PorosityminLabel_2.HorizontalAlignment = 'right';
            app.PorosityminLabel_2.Position = [198 108 76 22];
            app.PorosityminLabel_2.Text = 'Density (min)';

            % Create GlobalDensityGaussianMinEditField
            app.GlobalDensityGaussianMinEditField = uieditfield(app.GlobalDensityTab, 'numeric');
            app.GlobalDensityGaussianMinEditField.LowerLimitInclusive = 'off';
            app.GlobalDensityGaussianMinEditField.Limits = [0 Inf];
            app.GlobalDensityGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityGaussianMinEditFieldValueChanged, true);
            app.GlobalDensityGaussianMinEditField.Position = [289 108 57 22];
            app.GlobalDensityGaussianMinEditField.Value = 2.65;

            % Create StandardDeviationEditFieldLabel_3
            app.StandardDeviationEditFieldLabel_3 = uilabel(app.GlobalDensityTab);
            app.StandardDeviationEditFieldLabel_3.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_3.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_3.Text = 'Standard Deviation';

            % Create GlobalDensityGaussianStdEditField
            app.GlobalDensityGaussianStdEditField = uieditfield(app.GlobalDensityTab, 'numeric');
            app.GlobalDensityGaussianStdEditField.LowerLimitInclusive = 'off';
            app.GlobalDensityGaussianStdEditField.Limits = [0 Inf];
            app.GlobalDensityGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityGaussianStdEditFieldValueChanged, true);
            app.GlobalDensityGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.GlobalDensityGaussianStdEditField.Position = [289 54 57 22];
            app.GlobalDensityGaussianStdEditField.Value = 0.5;

            % Create GlobalDensityUnitDropDown
            app.GlobalDensityUnitDropDown = uidropdown(app.GlobalDensityTab);
            app.GlobalDensityUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.GlobalDensityUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityUnitDropDownValueChanged, true);
            app.GlobalDensityUnitDropDown.Position = [355 150 73 22];
            app.GlobalDensityUnitDropDown.Value = 'g/cm³';

            % Create GlobalDensityGaussianMinUnitDropDown
            app.GlobalDensityGaussianMinUnitDropDown = uidropdown(app.GlobalDensityTab);
            app.GlobalDensityGaussianMinUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.GlobalDensityGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityGaussianMinUnitDropDownValueChanged, true);
            app.GlobalDensityGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.GlobalDensityGaussianMinUnitDropDown.Value = 'g/cm³';

            % Create GlobalDensityGaussianMaxUnitDropDown
            app.GlobalDensityGaussianMaxUnitDropDown = uidropdown(app.GlobalDensityTab);
            app.GlobalDensityGaussianMaxUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.GlobalDensityGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalDensityGaussianMaxUnitDropDownValueChanged, true);
            app.GlobalDensityGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.GlobalDensityGaussianMaxUnitDropDown.Value = 'g/cm³';

            % Create SingleCalculationCheckBox_2
            app.SingleCalculationCheckBox_2 = uicheckbox(app.GlobalDensityTab);
            app.SingleCalculationCheckBox_2.Enable = 'off';
            app.SingleCalculationCheckBox_2.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_2.Position = [289 29 118 22];

            % Create LayerDensityTab
            app.LayerDensityTab = uitab(app.RockDensityTabGroup);
            app.LayerDensityTab.AutoResizeChildren = 'off';
            app.LayerDensityTab.Title = 'Layer';

            % Create LayerDensityButtonGroup
            app.LayerDensityButtonGroup = uibuttongroup(app.LayerDensityTab);
            app.LayerDensityButtonGroup.AutoResizeChildren = 'off';
            app.LayerDensityButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @LayerDensityButtonGroupSelectionChanged, true);
            app.LayerDensityButtonGroup.BorderType = 'none';
            app.LayerDensityButtonGroup.Position = [21 76 131 101];

            % Create LayerDensityUniformButton
            app.LayerDensityUniformButton = uiradiobutton(app.LayerDensityButtonGroup);
            app.LayerDensityUniformButton.Text = 'Uniform';
            app.LayerDensityUniformButton.Position = [16 75 64 22];
            app.LayerDensityUniformButton.Value = true;

            % Create LayerDensityGaussianButton
            app.LayerDensityGaussianButton = uiradiobutton(app.LayerDensityButtonGroup);
            app.LayerDensityGaussianButton.Text = 'Random Gaussian';
            app.LayerDensityGaussianButton.Position = [16 33 121 22];

            % Create phiEditField_2Label_39
            app.phiEditField_2Label_39 = uilabel(app.LayerDensityTab);
            app.phiEditField_2Label_39.HorizontalAlignment = 'right';
            app.phiEditField_2Label_39.Position = [228 150 46 22];
            app.phiEditField_2Label_39.Text = 'Density';

            % Create LayerDensityEditField
            app.LayerDensityEditField = uieditfield(app.LayerDensityTab, 'numeric');
            app.LayerDensityEditField.LowerLimitInclusive = 'off';
            app.LayerDensityEditField.Limits = [0 Inf];
            app.LayerDensityEditField.ValueChangedFcn = createCallbackFcn(app, @LayerDensityEditFieldValueChanged, true);
            app.LayerDensityEditField.Position = [289 150 57 22];
            app.LayerDensityEditField.Value = 2.7;

            % Create PorositymaxLabel_4
            app.PorositymaxLabel_4 = uilabel(app.LayerDensityTab);
            app.PorositymaxLabel_4.HorizontalAlignment = 'right';
            app.PorositymaxLabel_4.Position = [194 81 80 22];
            app.PorositymaxLabel_4.Text = 'Density (max)';

            % Create LayerDensityGaussianMaxEditField
            app.LayerDensityGaussianMaxEditField = uieditfield(app.LayerDensityTab, 'numeric');
            app.LayerDensityGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.LayerDensityGaussianMaxEditField.Limits = [0 Inf];
            app.LayerDensityGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerDensityGaussianMaxEditFieldValueChanged, true);
            app.LayerDensityGaussianMaxEditField.Position = [289 81 57 22];
            app.LayerDensityGaussianMaxEditField.Value = 2.75;

            % Create PorsityminLabel_2
            app.PorsityminLabel_2 = uilabel(app.LayerDensityTab);
            app.PorsityminLabel_2.HorizontalAlignment = 'right';
            app.PorsityminLabel_2.Position = [198 108 76 22];
            app.PorsityminLabel_2.Text = 'Density (min)';

            % Create LayerDensityGaussianMinEditField
            app.LayerDensityGaussianMinEditField = uieditfield(app.LayerDensityTab, 'numeric');
            app.LayerDensityGaussianMinEditField.LowerLimitInclusive = 'off';
            app.LayerDensityGaussianMinEditField.Limits = [0 Inf];
            app.LayerDensityGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @LayerDensityGaussianMinEditFieldValueChanged, true);
            app.LayerDensityGaussianMinEditField.Position = [289 108 57 22];
            app.LayerDensityGaussianMinEditField.Value = 2.65;

            % Create StandardDeviationEditFieldLabel_4
            app.StandardDeviationEditFieldLabel_4 = uilabel(app.LayerDensityTab);
            app.StandardDeviationEditFieldLabel_4.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_4.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_4.Text = 'Standard Deviation';

            % Create LayerDensityGaussianStdEditField
            app.LayerDensityGaussianStdEditField = uieditfield(app.LayerDensityTab, 'numeric');
            app.LayerDensityGaussianStdEditField.LowerLimitInclusive = 'off';
            app.LayerDensityGaussianStdEditField.Limits = [0 Inf];
            app.LayerDensityGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @LayerDensityGaussianStdEditFieldValueChanged, true);
            app.LayerDensityGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.LayerDensityGaussianStdEditField.Position = [289 54 57 22];
            app.LayerDensityGaussianStdEditField.Value = 0.5;

            % Create LayerDensityUnitDropDown
            app.LayerDensityUnitDropDown = uidropdown(app.LayerDensityTab);
            app.LayerDensityUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.LayerDensityUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerDensityUnitDropDownValueChanged, true);
            app.LayerDensityUnitDropDown.Position = [355 150 73 22];
            app.LayerDensityUnitDropDown.Value = 'g/cm³';

            % Create LayerDensityGaussianMinUnitDropDown
            app.LayerDensityGaussianMinUnitDropDown = uidropdown(app.LayerDensityTab);
            app.LayerDensityGaussianMinUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.LayerDensityGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerDensityGaussianMinUnitDropDownValueChanged, true);
            app.LayerDensityGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.LayerDensityGaussianMinUnitDropDown.Value = 'g/cm³';

            % Create LayerDensityGaussianMaxUnitDropDown
            app.LayerDensityGaussianMaxUnitDropDown = uidropdown(app.LayerDensityTab);
            app.LayerDensityGaussianMaxUnitDropDown.Items = {'kg/m³', 'g/cm³'};
            app.LayerDensityGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerDensityGaussianMaxUnitDropDownValueChanged, true);
            app.LayerDensityGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.LayerDensityGaussianMaxUnitDropDown.Value = 'g/cm³';

            % Create SingleCalculationCheckBox_10
            app.SingleCalculationCheckBox_10 = uicheckbox(app.LayerDensityTab);
            app.SingleCalculationCheckBox_10.Enable = 'off';
            app.SingleCalculationCheckBox_10.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_10.Position = [289 29 118 22];

            % Create ThermalConductivityTab
            app.ThermalConductivityTab = uitab(app.TabGroup4);
            app.ThermalConductivityTab.AutoResizeChildren = 'off';
            app.ThermalConductivityTab.Title = 'Thermal Conductivity';

            % Create RockCondTabGroup
            app.RockCondTabGroup = uitabgroup(app.ThermalConductivityTab);
            app.RockCondTabGroup.AutoResizeChildren = 'off';
            app.RockCondTabGroup.TabLocation = 'left';
            app.RockCondTabGroup.Position = [14 105 540 194];

            % Create GlobalCondTab
            app.GlobalCondTab = uitab(app.RockCondTabGroup);
            app.GlobalCondTab.AutoResizeChildren = 'off';
            app.GlobalCondTab.Title = 'Global';

            % Create GlobalCondButtonGroup
            app.GlobalCondButtonGroup = uibuttongroup(app.GlobalCondTab);
            app.GlobalCondButtonGroup.AutoResizeChildren = 'off';
            app.GlobalCondButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalCondButtonGroupSelectionChanged, true);
            app.GlobalCondButtonGroup.BorderType = 'none';
            app.GlobalCondButtonGroup.Position = [21 76 131 101];

            % Create GlobalCondUniformButton
            app.GlobalCondUniformButton = uiradiobutton(app.GlobalCondButtonGroup);
            app.GlobalCondUniformButton.Text = 'Uniform';
            app.GlobalCondUniformButton.Position = [16 75 64 22];
            app.GlobalCondUniformButton.Value = true;

            % Create GlobalCondGaussianButton
            app.GlobalCondGaussianButton = uiradiobutton(app.GlobalCondButtonGroup);
            app.GlobalCondGaussianButton.Text = 'Random Gaussian';
            app.GlobalCondGaussianButton.Position = [16 33 121 22];

            % Create PorosityLabel_3
            app.PorosityLabel_3 = uilabel(app.GlobalCondTab);
            app.PorosityLabel_3.HorizontalAlignment = 'right';
            app.PorosityLabel_3.Position = [203 150 71 22];
            app.PorosityLabel_3.Text = 'Conductivity';

            % Create GlobalCondEditField
            app.GlobalCondEditField = uieditfield(app.GlobalCondTab, 'numeric');
            app.GlobalCondEditField.LowerLimitInclusive = 'off';
            app.GlobalCondEditField.Limits = [0 Inf];
            app.GlobalCondEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalCondEditFieldValueChanged, true);
            app.GlobalCondEditField.Position = [289 150 57 22];
            app.GlobalCondEditField.Value = 2;

            % Create PorositymaxLabel_5
            app.PorositymaxLabel_5 = uilabel(app.GlobalCondTab);
            app.PorositymaxLabel_5.HorizontalAlignment = 'right';
            app.PorositymaxLabel_5.Position = [169 81 105 22];
            app.PorositymaxLabel_5.Text = 'Conductivity (max)';

            % Create GlobalCondGaussianMaxEditField
            app.GlobalCondGaussianMaxEditField = uieditfield(app.GlobalCondTab, 'numeric');
            app.GlobalCondGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.GlobalCondGaussianMaxEditField.Limits = [0 Inf];
            app.GlobalCondGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalCondGaussianMaxEditFieldValueChanged, true);
            app.GlobalCondGaussianMaxEditField.Position = [289 81 57 22];
            app.GlobalCondGaussianMaxEditField.Value = 2.5;

            % Create PorosityminLabel_3
            app.PorosityminLabel_3 = uilabel(app.GlobalCondTab);
            app.PorosityminLabel_3.HorizontalAlignment = 'right';
            app.PorosityminLabel_3.Position = [172 108 102 22];
            app.PorosityminLabel_3.Text = 'Conductivity (min)';

            % Create GlobalCondGaussianMinEditField
            app.GlobalCondGaussianMinEditField = uieditfield(app.GlobalCondTab, 'numeric');
            app.GlobalCondGaussianMinEditField.LowerLimitInclusive = 'off';
            app.GlobalCondGaussianMinEditField.Limits = [0 Inf];
            app.GlobalCondGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalCondGaussianMinEditFieldValueChanged, true);
            app.GlobalCondGaussianMinEditField.Position = [289 108 57 22];
            app.GlobalCondGaussianMinEditField.Value = 1.5;

            % Create StandardDeviationEditFieldLabel_5
            app.StandardDeviationEditFieldLabel_5 = uilabel(app.GlobalCondTab);
            app.StandardDeviationEditFieldLabel_5.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_5.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_5.Text = 'Standard Deviation';

            % Create GlobalCondGaussianStdEditField
            app.GlobalCondGaussianStdEditField = uieditfield(app.GlobalCondTab, 'numeric');
            app.GlobalCondGaussianStdEditField.LowerLimitInclusive = 'off';
            app.GlobalCondGaussianStdEditField.Limits = [0 Inf];
            app.GlobalCondGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalCondGaussianStdEditFieldValueChanged, true);
            app.GlobalCondGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.GlobalCondGaussianStdEditField.Position = [289 54 57 22];
            app.GlobalCondGaussianStdEditField.Value = 0.5;

            % Create GlobalCondUnitDropDown
            app.GlobalCondUnitDropDown = uidropdown(app.GlobalCondTab);
            app.GlobalCondUnitDropDown.Items = {'W/mK'};
            app.GlobalCondUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalCondUnitDropDownValueChanged, true);
            app.GlobalCondUnitDropDown.Position = [355 150 73 22];
            app.GlobalCondUnitDropDown.Value = 'W/mK';

            % Create GlobalCondGaussianMinUnitDropDown
            app.GlobalCondGaussianMinUnitDropDown = uidropdown(app.GlobalCondTab);
            app.GlobalCondGaussianMinUnitDropDown.Items = {'W/mK'};
            app.GlobalCondGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalCondGaussianMinUnitDropDownValueChanged, true);
            app.GlobalCondGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.GlobalCondGaussianMinUnitDropDown.Value = 'W/mK';

            % Create GlobalCondGaussianMaxUnitDropDown
            app.GlobalCondGaussianMaxUnitDropDown = uidropdown(app.GlobalCondTab);
            app.GlobalCondGaussianMaxUnitDropDown.Items = {'W/mK'};
            app.GlobalCondGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalCondGaussianMaxUnitDropDownValueChanged, true);
            app.GlobalCondGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.GlobalCondGaussianMaxUnitDropDown.Value = 'W/mK';

            % Create SingleCalculationCheckBox_3
            app.SingleCalculationCheckBox_3 = uicheckbox(app.GlobalCondTab);
            app.SingleCalculationCheckBox_3.Enable = 'off';
            app.SingleCalculationCheckBox_3.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_3.Position = [289 29 118 22];

            % Create LayerCondTab
            app.LayerCondTab = uitab(app.RockCondTabGroup);
            app.LayerCondTab.AutoResizeChildren = 'off';
            app.LayerCondTab.Title = 'Layer';

            % Create LayerCondButtonGroup
            app.LayerCondButtonGroup = uibuttongroup(app.LayerCondTab);
            app.LayerCondButtonGroup.AutoResizeChildren = 'off';
            app.LayerCondButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @LayerCondButtonGroupSelectionChanged, true);
            app.LayerCondButtonGroup.BorderType = 'none';
            app.LayerCondButtonGroup.Position = [21 76 131 101];

            % Create LayerCondUniformButton
            app.LayerCondUniformButton = uiradiobutton(app.LayerCondButtonGroup);
            app.LayerCondUniformButton.Text = 'Uniform';
            app.LayerCondUniformButton.Position = [16 75 64 22];
            app.LayerCondUniformButton.Value = true;

            % Create LayerCondGaussianButton
            app.LayerCondGaussianButton = uiradiobutton(app.LayerCondButtonGroup);
            app.LayerCondGaussianButton.Text = 'Random Gaussian';
            app.LayerCondGaussianButton.Position = [16 33 121 22];

            % Create phiEditField_2Label_40
            app.phiEditField_2Label_40 = uilabel(app.LayerCondTab);
            app.phiEditField_2Label_40.HorizontalAlignment = 'right';
            app.phiEditField_2Label_40.Position = [203 150 71 22];
            app.phiEditField_2Label_40.Text = 'Conductivity';

            % Create LayerCondEditField
            app.LayerCondEditField = uieditfield(app.LayerCondTab, 'numeric');
            app.LayerCondEditField.LowerLimitInclusive = 'off';
            app.LayerCondEditField.Limits = [0 Inf];
            app.LayerCondEditField.ValueChangedFcn = createCallbackFcn(app, @LayerCondEditFieldValueChanged, true);
            app.LayerCondEditField.Position = [289 150 57 22];
            app.LayerCondEditField.Value = 2;

            % Create PorositymaxLabel_6
            app.PorositymaxLabel_6 = uilabel(app.LayerCondTab);
            app.PorositymaxLabel_6.HorizontalAlignment = 'right';
            app.PorositymaxLabel_6.Position = [169 81 105 22];
            app.PorositymaxLabel_6.Text = 'Conductivity (max)';

            % Create LayerCondGaussianMaxEditField
            app.LayerCondGaussianMaxEditField = uieditfield(app.LayerCondTab, 'numeric');
            app.LayerCondGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.LayerCondGaussianMaxEditField.Limits = [0 Inf];
            app.LayerCondGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerCondGaussianMaxEditFieldValueChanged, true);
            app.LayerCondGaussianMaxEditField.Position = [289 81 57 22];
            app.LayerCondGaussianMaxEditField.Value = 2.5;

            % Create PorsityminLabel_3
            app.PorsityminLabel_3 = uilabel(app.LayerCondTab);
            app.PorsityminLabel_3.HorizontalAlignment = 'right';
            app.PorsityminLabel_3.Position = [172 108 102 22];
            app.PorsityminLabel_3.Text = 'Conductivity (min)';

            % Create LayerCondGaussianMinEditField
            app.LayerCondGaussianMinEditField = uieditfield(app.LayerCondTab, 'numeric');
            app.LayerCondGaussianMinEditField.LowerLimitInclusive = 'off';
            app.LayerCondGaussianMinEditField.Limits = [0 Inf];
            app.LayerCondGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @LayerCondGaussianMinEditFieldValueChanged, true);
            app.LayerCondGaussianMinEditField.Position = [289 108 57 22];
            app.LayerCondGaussianMinEditField.Value = 1.5;

            % Create StandardDeviationEditFieldLabel_6
            app.StandardDeviationEditFieldLabel_6 = uilabel(app.LayerCondTab);
            app.StandardDeviationEditFieldLabel_6.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_6.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_6.Text = 'Standard Deviation';

            % Create LayerCondGaussianStdEditField
            app.LayerCondGaussianStdEditField = uieditfield(app.LayerCondTab, 'numeric');
            app.LayerCondGaussianStdEditField.LowerLimitInclusive = 'off';
            app.LayerCondGaussianStdEditField.Limits = [0 Inf];
            app.LayerCondGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @LayerCondGaussianStdEditFieldValueChanged, true);
            app.LayerCondGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.LayerCondGaussianStdEditField.Position = [289 54 57 22];
            app.LayerCondGaussianStdEditField.Value = 0.5;

            % Create LayerCondUnitDropDown
            app.LayerCondUnitDropDown = uidropdown(app.LayerCondTab);
            app.LayerCondUnitDropDown.Items = {'W/mK'};
            app.LayerCondUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerCondUnitDropDownValueChanged, true);
            app.LayerCondUnitDropDown.Position = [355 150 73 22];
            app.LayerCondUnitDropDown.Value = 'W/mK';

            % Create LayerCondGaussianMinUnitDropDown
            app.LayerCondGaussianMinUnitDropDown = uidropdown(app.LayerCondTab);
            app.LayerCondGaussianMinUnitDropDown.Items = {'W/mK'};
            app.LayerCondGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerCondGaussianMinUnitDropDownValueChanged, true);
            app.LayerCondGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.LayerCondGaussianMinUnitDropDown.Value = 'W/mK';

            % Create LayerCondGaussianMaxUnitDropDown
            app.LayerCondGaussianMaxUnitDropDown = uidropdown(app.LayerCondTab);
            app.LayerCondGaussianMaxUnitDropDown.Items = {'W/mK'};
            app.LayerCondGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerCondGaussianMaxUnitDropDownValueChanged, true);
            app.LayerCondGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.LayerCondGaussianMaxUnitDropDown.Value = 'W/mK';

            % Create SingleCalculationCheckBox_9
            app.SingleCalculationCheckBox_9 = uicheckbox(app.LayerCondTab);
            app.SingleCalculationCheckBox_9.Enable = 'off';
            app.SingleCalculationCheckBox_9.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_9.Position = [289 29 118 22];

            % Create SpecificHeatCapacityTab
            app.SpecificHeatCapacityTab = uitab(app.TabGroup4);
            app.SpecificHeatCapacityTab.AutoResizeChildren = 'off';
            app.SpecificHeatCapacityTab.Title = 'Specific Heat Capacity';

            % Create RockHeatTabGroup
            app.RockHeatTabGroup = uitabgroup(app.SpecificHeatCapacityTab);
            app.RockHeatTabGroup.AutoResizeChildren = 'off';
            app.RockHeatTabGroup.TabLocation = 'left';
            app.RockHeatTabGroup.Position = [14 105 540 194];

            % Create GlobalHeatTab
            app.GlobalHeatTab = uitab(app.RockHeatTabGroup);
            app.GlobalHeatTab.AutoResizeChildren = 'off';
            app.GlobalHeatTab.Title = 'Global';

            % Create GlobalHeatButtonGroup
            app.GlobalHeatButtonGroup = uibuttongroup(app.GlobalHeatTab);
            app.GlobalHeatButtonGroup.AutoResizeChildren = 'off';
            app.GlobalHeatButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @GlobalHeatButtonGroupSelectionChanged, true);
            app.GlobalHeatButtonGroup.BorderType = 'none';
            app.GlobalHeatButtonGroup.Position = [21 76 131 101];

            % Create GlobalHeatUniformButton
            app.GlobalHeatUniformButton = uiradiobutton(app.GlobalHeatButtonGroup);
            app.GlobalHeatUniformButton.Text = 'Uniform';
            app.GlobalHeatUniformButton.Position = [16 75 64 22];
            app.GlobalHeatUniformButton.Value = true;

            % Create GlobalHeatGaussianButton
            app.GlobalHeatGaussianButton = uiradiobutton(app.GlobalHeatButtonGroup);
            app.GlobalHeatGaussianButton.Text = 'Random Gaussian';
            app.GlobalHeatGaussianButton.Position = [16 33 121 22];

            % Create PorosityLabel_4
            app.PorosityLabel_4 = uilabel(app.GlobalHeatTab);
            app.PorosityLabel_4.HorizontalAlignment = 'right';
            app.PorosityLabel_4.Position = [193 150 81 22];
            app.PorosityLabel_4.Text = 'Heat Capacity';

            % Create GlobalHeatEditField
            app.GlobalHeatEditField = uieditfield(app.GlobalHeatTab, 'numeric');
            app.GlobalHeatEditField.LowerLimitInclusive = 'off';
            app.GlobalHeatEditField.Limits = [0 Inf];
            app.GlobalHeatEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatEditFieldValueChanged, true);
            app.GlobalHeatEditField.Position = [289 150 57 22];
            app.GlobalHeatEditField.Value = 1000;

            % Create PorositymaxLabel_7
            app.PorositymaxLabel_7 = uilabel(app.GlobalHeatTab);
            app.PorositymaxLabel_7.HorizontalAlignment = 'right';
            app.PorositymaxLabel_7.Position = [159 81 115 22];
            app.PorositymaxLabel_7.Text = 'Heat Capacity (max)';

            % Create GlobalHeatGaussianMaxEditField
            app.GlobalHeatGaussianMaxEditField = uieditfield(app.GlobalHeatTab, 'numeric');
            app.GlobalHeatGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.GlobalHeatGaussianMaxEditField.Limits = [0 Inf];
            app.GlobalHeatGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatGaussianMaxEditFieldValueChanged, true);
            app.GlobalHeatGaussianMaxEditField.Position = [289 81 57 22];
            app.GlobalHeatGaussianMaxEditField.Value = 1050;

            % Create PorosityminLabel_4
            app.PorosityminLabel_4 = uilabel(app.GlobalHeatTab);
            app.PorosityminLabel_4.HorizontalAlignment = 'right';
            app.PorosityminLabel_4.Position = [162 108 112 22];
            app.PorosityminLabel_4.Text = 'Heat Capacity (min)';

            % Create GlobalHeatGaussianMinEditField
            app.GlobalHeatGaussianMinEditField = uieditfield(app.GlobalHeatTab, 'numeric');
            app.GlobalHeatGaussianMinEditField.LowerLimitInclusive = 'off';
            app.GlobalHeatGaussianMinEditField.Limits = [0 Inf];
            app.GlobalHeatGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatGaussianMinEditFieldValueChanged, true);
            app.GlobalHeatGaussianMinEditField.Position = [289 108 57 22];
            app.GlobalHeatGaussianMinEditField.Value = 950;

            % Create StandardDeviationEditFieldLabel_7
            app.StandardDeviationEditFieldLabel_7 = uilabel(app.GlobalHeatTab);
            app.StandardDeviationEditFieldLabel_7.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_7.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_7.Text = 'Standard Deviation';

            % Create GlobalHeatGaussianStdEditField
            app.GlobalHeatGaussianStdEditField = uieditfield(app.GlobalHeatTab, 'numeric');
            app.GlobalHeatGaussianStdEditField.LowerLimitInclusive = 'off';
            app.GlobalHeatGaussianStdEditField.Limits = [0 Inf];
            app.GlobalHeatGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatGaussianStdEditFieldValueChanged, true);
            app.GlobalHeatGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.GlobalHeatGaussianStdEditField.Position = [289 54 57 22];
            app.GlobalHeatGaussianStdEditField.Value = 0.5;

            % Create GlobalHeatUnitDropDown
            app.GlobalHeatUnitDropDown = uidropdown(app.GlobalHeatTab);
            app.GlobalHeatUnitDropDown.Items = {'J/kgK'};
            app.GlobalHeatUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatUnitDropDownValueChanged, true);
            app.GlobalHeatUnitDropDown.Position = [355 150 73 22];
            app.GlobalHeatUnitDropDown.Value = 'J/kgK';

            % Create GlobalHeatGaussianMinUnitDropDown
            app.GlobalHeatGaussianMinUnitDropDown = uidropdown(app.GlobalHeatTab);
            app.GlobalHeatGaussianMinUnitDropDown.Items = {'J/kgK'};
            app.GlobalHeatGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatGaussianMinUnitDropDownValueChanged, true);
            app.GlobalHeatGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.GlobalHeatGaussianMinUnitDropDown.Value = 'J/kgK';

            % Create GlobalHeatGaussianMaxUnitDropDown
            app.GlobalHeatGaussianMaxUnitDropDown = uidropdown(app.GlobalHeatTab);
            app.GlobalHeatGaussianMaxUnitDropDown.Items = {'J/kgK'};
            app.GlobalHeatGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @GlobalHeatGaussianMaxUnitDropDownValueChanged, true);
            app.GlobalHeatGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.GlobalHeatGaussianMaxUnitDropDown.Value = 'J/kgK';

            % Create SingleCalculationCheckBox_4
            app.SingleCalculationCheckBox_4 = uicheckbox(app.GlobalHeatTab);
            app.SingleCalculationCheckBox_4.Enable = 'off';
            app.SingleCalculationCheckBox_4.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_4.Position = [289 29 118 22];

            % Create LayerHeatTab
            app.LayerHeatTab = uitab(app.RockHeatTabGroup);
            app.LayerHeatTab.AutoResizeChildren = 'off';
            app.LayerHeatTab.Title = 'Layer';

            % Create LayerHeatButtonGroup
            app.LayerHeatButtonGroup = uibuttongroup(app.LayerHeatTab);
            app.LayerHeatButtonGroup.AutoResizeChildren = 'off';
            app.LayerHeatButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @LayerHeatButtonGroupSelectionChanged, true);
            app.LayerHeatButtonGroup.BorderType = 'none';
            app.LayerHeatButtonGroup.Position = [21 76 131 101];

            % Create LayerHeatUniformButton
            app.LayerHeatUniformButton = uiradiobutton(app.LayerHeatButtonGroup);
            app.LayerHeatUniformButton.Text = 'Uniform';
            app.LayerHeatUniformButton.Position = [16 75 64 22];
            app.LayerHeatUniformButton.Value = true;

            % Create LayerHeatGaussianButton
            app.LayerHeatGaussianButton = uiradiobutton(app.LayerHeatButtonGroup);
            app.LayerHeatGaussianButton.Text = 'Random Gaussian';
            app.LayerHeatGaussianButton.Position = [16 33 121 22];

            % Create phiEditField_2Label_41
            app.phiEditField_2Label_41 = uilabel(app.LayerHeatTab);
            app.phiEditField_2Label_41.HorizontalAlignment = 'right';
            app.phiEditField_2Label_41.Position = [193 150 81 22];
            app.phiEditField_2Label_41.Text = 'Heat Capacity';

            % Create LayerHeatEditField
            app.LayerHeatEditField = uieditfield(app.LayerHeatTab, 'numeric');
            app.LayerHeatEditField.LowerLimitInclusive = 'off';
            app.LayerHeatEditField.Limits = [0 Inf];
            app.LayerHeatEditField.ValueChangedFcn = createCallbackFcn(app, @LayerHeatEditFieldValueChanged, true);
            app.LayerHeatEditField.Position = [289 150 57 22];
            app.LayerHeatEditField.Value = 1000;

            % Create PorositymaxLabel_8
            app.PorositymaxLabel_8 = uilabel(app.LayerHeatTab);
            app.PorositymaxLabel_8.HorizontalAlignment = 'right';
            app.PorositymaxLabel_8.Position = [159 81 115 22];
            app.PorositymaxLabel_8.Text = 'Heat Capacity (max)';

            % Create LayerHeatGaussianMaxEditField
            app.LayerHeatGaussianMaxEditField = uieditfield(app.LayerHeatTab, 'numeric');
            app.LayerHeatGaussianMaxEditField.LowerLimitInclusive = 'off';
            app.LayerHeatGaussianMaxEditField.Limits = [0 Inf];
            app.LayerHeatGaussianMaxEditField.ValueChangedFcn = createCallbackFcn(app, @LayerHeatGaussianMaxEditFieldValueChanged, true);
            app.LayerHeatGaussianMaxEditField.Position = [289 81 57 22];
            app.LayerHeatGaussianMaxEditField.Value = 1050;

            % Create PorsityminLabel_4
            app.PorsityminLabel_4 = uilabel(app.LayerHeatTab);
            app.PorsityminLabel_4.HorizontalAlignment = 'right';
            app.PorsityminLabel_4.Position = [162 108 112 22];
            app.PorsityminLabel_4.Text = 'Heat Capacity (min)';

            % Create LayerHeatGaussianMinEditField
            app.LayerHeatGaussianMinEditField = uieditfield(app.LayerHeatTab, 'numeric');
            app.LayerHeatGaussianMinEditField.LowerLimitInclusive = 'off';
            app.LayerHeatGaussianMinEditField.Limits = [0 Inf];
            app.LayerHeatGaussianMinEditField.ValueChangedFcn = createCallbackFcn(app, @LayerHeatGaussianMinEditFieldValueChanged, true);
            app.LayerHeatGaussianMinEditField.Position = [289 108 57 22];
            app.LayerHeatGaussianMinEditField.Value = 950;

            % Create StandardDeviationEditFieldLabel_8
            app.StandardDeviationEditFieldLabel_8 = uilabel(app.LayerHeatTab);
            app.StandardDeviationEditFieldLabel_8.HorizontalAlignment = 'right';
            app.StandardDeviationEditFieldLabel_8.Position = [166 54 108 22];
            app.StandardDeviationEditFieldLabel_8.Text = 'Standard Deviation';

            % Create LayerHeatGaussianStdEditField
            app.LayerHeatGaussianStdEditField = uieditfield(app.LayerHeatTab, 'numeric');
            app.LayerHeatGaussianStdEditField.LowerLimitInclusive = 'off';
            app.LayerHeatGaussianStdEditField.Limits = [0 Inf];
            app.LayerHeatGaussianStdEditField.ValueChangedFcn = createCallbackFcn(app, @LayerHeatGaussianStdEditFieldValueChanged, true);
            app.LayerHeatGaussianStdEditField.Tooltip = {'Standard deviation for Gaussian filter.'};
            app.LayerHeatGaussianStdEditField.Position = [289 54 57 22];
            app.LayerHeatGaussianStdEditField.Value = 0.5;

            % Create LayerHeatUnitDropDown
            app.LayerHeatUnitDropDown = uidropdown(app.LayerHeatTab);
            app.LayerHeatUnitDropDown.Items = {'J/kgK'};
            app.LayerHeatUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerHeatUnitDropDownValueChanged, true);
            app.LayerHeatUnitDropDown.Position = [355 150 73 22];
            app.LayerHeatUnitDropDown.Value = 'J/kgK';

            % Create LayerHeatGaussianMinUnitDropDown
            app.LayerHeatGaussianMinUnitDropDown = uidropdown(app.LayerHeatTab);
            app.LayerHeatGaussianMinUnitDropDown.Items = {'J/kgK'};
            app.LayerHeatGaussianMinUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerHeatGaussianMinUnitDropDownValueChanged, true);
            app.LayerHeatGaussianMinUnitDropDown.Position = [355 108 73 22];
            app.LayerHeatGaussianMinUnitDropDown.Value = 'J/kgK';

            % Create LayerHeatGaussianMaxUnitDropDown
            app.LayerHeatGaussianMaxUnitDropDown = uidropdown(app.LayerHeatTab);
            app.LayerHeatGaussianMaxUnitDropDown.Items = {'J/kgK'};
            app.LayerHeatGaussianMaxUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @LayerHeatGaussianMaxUnitDropDownValueChanged, true);
            app.LayerHeatGaussianMaxUnitDropDown.Position = [355 81 73 22];
            app.LayerHeatGaussianMaxUnitDropDown.Value = 'J/kgK';

            % Create SingleCalculationCheckBox_8
            app.SingleCalculationCheckBox_8 = uicheckbox(app.LayerHeatTab);
            app.SingleCalculationCheckBox_8.Enable = 'off';
            app.SingleCalculationCheckBox_8.Text = 'Single Calculation';
            app.SingleCalculationCheckBox_8.Position = [289 29 118 22];

            % Create TotalPVUnitLabel
            app.TotalPVUnitLabel = uilabel(app.RockTab);
            app.TotalPVUnitLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TotalPVUnitLabel.HorizontalAlignment = 'right';
            app.TotalPVUnitLabel.Position = [956 97 17 22];
            app.TotalPVUnitLabel.Text = 'm³';

            % Create PoreVolumeEditFieldLabel
            app.PoreVolumeEditFieldLabel = uilabel(app.RockTab);
            app.PoreVolumeEditFieldLabel.HorizontalAlignment = 'right';
            app.PoreVolumeEditFieldLabel.Position = [797 97 74 22];
            app.PoreVolumeEditFieldLabel.Text = 'Pore Volume';

            % Create TotalPVEditField
            app.TotalPVEditField = uieditfield(app.RockTab, 'text');
            app.TotalPVEditField.Editable = 'off';
            app.TotalPVEditField.HorizontalAlignment = 'right';
            app.TotalPVEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TotalPVEditField.Position = [880 97 71 22];

            % Create FluidTab
            app.FluidTab = uitab(app.GlobalTabGroup);
            app.FluidTab.AutoResizeChildren = 'off';
            app.FluidTab.Title = 'Fluid';

            % Create GravityPanel
            app.GravityPanel = uipanel(app.FluidTab);
            app.GravityPanel.AutoResizeChildren = 'off';
            app.GravityPanel.Title = 'Gravity';
            app.GravityPanel.Position = [37 49 210 163];

            % Create FluidGravityxEditField
            app.FluidGravityxEditField = uieditfield(app.GravityPanel, 'numeric');
            app.FluidGravityxEditField.Limits = [0 Inf];
            app.FluidGravityxEditField.Position = [42 77 49 22];

            % Create xLabel_24
            app.xLabel_24 = uilabel(app.GravityPanel);
            app.xLabel_24.HorizontalAlignment = 'center';
            app.xLabel_24.Position = [19 77 25 22];
            app.xLabel_24.Text = 'gx';

            % Create FluidGravityyEditField
            app.FluidGravityyEditField = uieditfield(app.GravityPanel, 'numeric');
            app.FluidGravityyEditField.Limits = [0 Inf];
            app.FluidGravityyEditField.Position = [42 50 49 22];

            % Create xLabel_25
            app.xLabel_25 = uilabel(app.GravityPanel);
            app.xLabel_25.HorizontalAlignment = 'center';
            app.xLabel_25.Position = [18 50 25 22];
            app.xLabel_25.Text = 'gy';

            % Create FluidGravityzEditField
            app.FluidGravityzEditField = uieditfield(app.GravityPanel, 'numeric');
            app.FluidGravityzEditField.Limits = [0 Inf];
            app.FluidGravityzEditField.Position = [42 23 49 22];
            app.FluidGravityzEditField.Value = 9.81;

            % Create xLabel_26
            app.xLabel_26 = uilabel(app.GravityPanel);
            app.xLabel_26.HorizontalAlignment = 'center';
            app.xLabel_26.Position = [19 23 25 22];
            app.xLabel_26.Text = 'gz';

            % Create FluidGravityCheckBox
            app.FluidGravityCheckBox = uicheckbox(app.GravityPanel);
            app.FluidGravityCheckBox.ValueChangedFcn = createCallbackFcn(app, @FluidGravityCheckBoxValueChanged, true);
            app.FluidGravityCheckBox.Text = 'Enabled';
            app.FluidGravityCheckBox.Position = [17 111 66 22];
            app.FluidGravityCheckBox.Value = true;

            % Create FluidGravityxUnitDropDown
            app.FluidGravityxUnitDropDown = uidropdown(app.GravityPanel);
            app.FluidGravityxUnitDropDown.Items = {'m/s²'};
            app.FluidGravityxUnitDropDown.Position = [99 77 73 22];
            app.FluidGravityxUnitDropDown.Value = 'm/s²';

            % Create FluidGravityyUnitDropDown
            app.FluidGravityyUnitDropDown = uidropdown(app.GravityPanel);
            app.FluidGravityyUnitDropDown.Items = {'m/s²'};
            app.FluidGravityyUnitDropDown.Position = [99 50 73 22];
            app.FluidGravityyUnitDropDown.Value = 'm/s²';

            % Create FluidGravityzUnitDropDown
            app.FluidGravityzUnitDropDown = uidropdown(app.GravityPanel);
            app.FluidGravityzUnitDropDown.Items = {'m/s²'};
            app.FluidGravityzUnitDropDown.Position = [99 23 73 22];
            app.FluidGravityzUnitDropDown.Value = 'm/s²';

            % Create TypePanel
            app.TypePanel = uipanel(app.FluidTab);
            app.TypePanel.AutoResizeChildren = 'off';
            app.TypePanel.Title = 'Type';
            app.TypePanel.Position = [37 231 124 110];

            % Create FluidTypeButtonGroup
            app.FluidTypeButtonGroup = uibuttongroup(app.TypePanel);
            app.FluidTypeButtonGroup.AutoResizeChildren = 'off';
            app.FluidTypeButtonGroup.BorderType = 'none';
            app.FluidTypeButtonGroup.Position = [12 11 100 71];

            % Create FluidTypeWaterButton
            app.FluidTypeWaterButton = uiradiobutton(app.FluidTypeButtonGroup);
            app.FluidTypeWaterButton.Text = 'Water';
            app.FluidTypeWaterButton.Position = [11 45 58 22];
            app.FluidTypeWaterButton.Value = true;

            % Create FluidTypeBrineButton
            app.FluidTypeBrineButton = uiradiobutton(app.FluidTypeButtonGroup);
            app.FluidTypeBrineButton.Enable = 'off';
            app.FluidTypeBrineButton.Text = 'Brine';
            app.FluidTypeBrineButton.Position = [11 23 65 22];

            % Create FluidTypeCO2Button
            app.FluidTypeCO2Button = uiradiobutton(app.FluidTypeButtonGroup);
            app.FluidTypeCO2Button.Enable = 'off';
            app.FluidTypeCO2Button.Text = 'CO2';
            app.FluidTypeCO2Button.Position = [11 0 47 22];

            % Create ThermalPropertiesPanel
            app.ThermalPropertiesPanel = uipanel(app.FluidTab);
            app.ThermalPropertiesPanel.AutoResizeChildren = 'off';
            app.ThermalPropertiesPanel.Title = 'Thermal Properties';
            app.ThermalPropertiesPanel.Position = [280 93 298 102];

            % Create FluidHeatUnitDropDown
            app.FluidHeatUnitDropDown = uidropdown(app.ThermalPropertiesPanel);
            app.FluidHeatUnitDropDown.Items = {'J/kgK'};
            app.FluidHeatUnitDropDown.Position = [200 46 73 22];
            app.FluidHeatUnitDropDown.Value = 'J/kgK';

            % Create FluidCondUnitDropDown
            app.FluidCondUnitDropDown = uidropdown(app.ThermalPropertiesPanel);
            app.FluidCondUnitDropDown.Items = {'W/mK'};
            app.FluidCondUnitDropDown.Position = [200 14 73 22];
            app.FluidCondUnitDropDown.Value = 'W/mK';

            % Create HeatcapacityEditFieldLabel
            app.HeatcapacityEditFieldLabel = uilabel(app.ThermalPropertiesPanel);
            app.HeatcapacityEditFieldLabel.HorizontalAlignment = 'right';
            app.HeatcapacityEditFieldLabel.Position = [46 46 78 22];
            app.HeatcapacityEditFieldLabel.Text = 'Heat capacity';

            % Create FluidHeatEditField
            app.FluidHeatEditField = uieditfield(app.ThermalPropertiesPanel, 'numeric');
            app.FluidHeatEditField.LowerLimitInclusive = 'off';
            app.FluidHeatEditField.Limits = [0 Inf];
            app.FluidHeatEditField.Position = [139 46 53 22];
            app.FluidHeatEditField.Value = 4182;

            % Create ThermalconductivityEditFieldLabel
            app.ThermalconductivityEditFieldLabel = uilabel(app.ThermalPropertiesPanel);
            app.ThermalconductivityEditFieldLabel.HorizontalAlignment = 'right';
            app.ThermalconductivityEditFieldLabel.Position = [8 14 116 22];
            app.ThermalconductivityEditFieldLabel.Text = 'Thermal conductivity';

            % Create FluidCondEditField
            app.FluidCondEditField = uieditfield(app.ThermalPropertiesPanel, 'numeric');
            app.FluidCondEditField.LowerLimitInclusive = 'off';
            app.FluidCondEditField.Limits = [0 Inf];
            app.FluidCondEditField.Position = [139 14 53 22];
            app.FluidCondEditField.Value = 0.598;

            % Create GeneralPropertiesPanel
            app.GeneralPropertiesPanel = uipanel(app.FluidTab);
            app.GeneralPropertiesPanel.AutoResizeChildren = 'off';
            app.GeneralPropertiesPanel.Title = 'General Properties';
            app.GeneralPropertiesPanel.Position = [280 213 296 128];

            % Create FluidDensityUnitDropDown
            app.FluidDensityUnitDropDown = uidropdown(app.GeneralPropertiesPanel);
            app.FluidDensityUnitDropDown.Items = {'kg/m³', 'g/cm³', 'ppg'};
            app.FluidDensityUnitDropDown.Position = [179 46 73 22];
            app.FluidDensityUnitDropDown.Value = 'kg/m³';

            % Create FluidViscosityUnitDropDown
            app.FluidViscosityUnitDropDown = uidropdown(app.GeneralPropertiesPanel);
            app.FluidViscosityUnitDropDown.Items = {'cP', 'Pas'};
            app.FluidViscosityUnitDropDown.Position = [179 14 73 22];
            app.FluidViscosityUnitDropDown.Value = 'cP';

            % Create DensityEditFieldLabel
            app.DensityEditFieldLabel = uilabel(app.GeneralPropertiesPanel);
            app.DensityEditFieldLabel.HorizontalAlignment = 'right';
            app.DensityEditFieldLabel.Position = [57 46 46 22];
            app.DensityEditFieldLabel.Text = 'Density';

            % Create FluidDensityEditField
            app.FluidDensityEditField = uieditfield(app.GeneralPropertiesPanel, 'numeric');
            app.FluidDensityEditField.LowerLimitInclusive = 'off';
            app.FluidDensityEditField.Limits = [0 Inf];
            app.FluidDensityEditField.Position = [118 46 53 22];
            app.FluidDensityEditField.Value = 1000;

            % Create ViscosityEditFieldLabel
            app.ViscosityEditFieldLabel = uilabel(app.GeneralPropertiesPanel);
            app.ViscosityEditFieldLabel.HorizontalAlignment = 'right';
            app.ViscosityEditFieldLabel.Position = [50 14 53 22];
            app.ViscosityEditFieldLabel.Text = 'Viscosity';

            % Create FluidViscosityEditField
            app.FluidViscosityEditField = uieditfield(app.GeneralPropertiesPanel, 'numeric');
            app.FluidViscosityEditField.LowerLimitInclusive = 'off';
            app.FluidViscosityEditField.Limits = [0 Inf];
            app.FluidViscosityEditField.Position = [118 14 53 22];
            app.FluidViscosityEditField.Value = 1;

            % Create FluidEOSCheckBox
            app.FluidEOSCheckBox = uicheckbox(app.GeneralPropertiesPanel);
            app.FluidEOSCheckBox.ValueChangedFcn = createCallbackFcn(app, @FluidEOSCheckBoxValueChanged, true);
            app.FluidEOSCheckBox.Text = 'Use EOS (Spivey et al., 2004)';
            app.FluidEOSCheckBox.Position = [56 77 182 22];

            % Create BCsTab
            app.BCsTab = uitab(app.GlobalTabGroup);
            app.BCsTab.AutoResizeChildren = 'off';
            app.BCsTab.Title = 'BCs';

            % Create BCxMinButtonGroup
            app.BCxMinButtonGroup = uibuttongroup(app.BCsTab);
            app.BCxMinButtonGroup.AutoResizeChildren = 'off';
            app.BCxMinButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCxMinButtonGroupSelectionChanged, true);
            app.BCxMinButtonGroup.BorderType = 'none';
            app.BCxMinButtonGroup.Position = [357 296 100 56];

            % Create BCxMinPressureButton
            app.BCxMinPressureButton = uiradiobutton(app.BCxMinButtonGroup);
            app.BCxMinPressureButton.Text = 'Pressure';
            app.BCxMinPressureButton.Position = [9 36 70 22];
            app.BCxMinPressureButton.Value = true;

            % Create BCxMinFluxButton
            app.BCxMinFluxButton = uiradiobutton(app.BCxMinButtonGroup);
            app.BCxMinFluxButton.Text = 'Flux';
            app.BCxMinFluxButton.Position = [9 7 45 22];

            % Create BCxMaxButtonGroup
            app.BCxMaxButtonGroup = uibuttongroup(app.BCsTab);
            app.BCxMaxButtonGroup.AutoResizeChildren = 'off';
            app.BCxMaxButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCxMaxButtonGroupSelectionChanged, true);
            app.BCxMaxButtonGroup.BorderType = 'none';
            app.BCxMaxButtonGroup.Position = [352 241 105 55];

            % Create BCxMaxFluxButton
            app.BCxMaxFluxButton = uiradiobutton(app.BCxMaxButtonGroup);
            app.BCxMaxFluxButton.Text = 'Flux';
            app.BCxMaxFluxButton.Position = [14 6 45 22];

            % Create BCxMaxPressureButton
            app.BCxMaxPressureButton = uiradiobutton(app.BCxMaxButtonGroup);
            app.BCxMaxPressureButton.Text = 'Pressure';
            app.BCxMaxPressureButton.Position = [14 34 70 22];
            app.BCxMaxPressureButton.Value = true;

            % Create BCyMinButtonGroup
            app.BCyMinButtonGroup = uibuttongroup(app.BCsTab);
            app.BCyMinButtonGroup.AutoResizeChildren = 'off';
            app.BCyMinButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCyMinButtonGroupSelectionChanged, true);
            app.BCyMinButtonGroup.BorderType = 'none';
            app.BCyMinButtonGroup.Position = [355 183 100 56];

            % Create BCyMinPressureButton
            app.BCyMinPressureButton = uiradiobutton(app.BCyMinButtonGroup);
            app.BCyMinPressureButton.Text = 'Pressure';
            app.BCyMinPressureButton.Position = [11 36 70 22];
            app.BCyMinPressureButton.Value = true;

            % Create BCyMinFluxButton
            app.BCyMinFluxButton = uiradiobutton(app.BCyMinButtonGroup);
            app.BCyMinFluxButton.Text = 'Flux';
            app.BCyMinFluxButton.Position = [11 8 45 22];

            % Create BCyMaxButtonGroup
            app.BCyMaxButtonGroup = uibuttongroup(app.BCsTab);
            app.BCyMaxButtonGroup.AutoResizeChildren = 'off';
            app.BCyMaxButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCyMaxButtonGroupSelectionChanged, true);
            app.BCyMaxButtonGroup.BorderType = 'none';
            app.BCyMaxButtonGroup.Position = [363 127 100 59];

            % Create BCyMaxPressureButton
            app.BCyMaxPressureButton = uiradiobutton(app.BCyMaxButtonGroup);
            app.BCyMaxPressureButton.Text = 'Pressure';
            app.BCyMaxPressureButton.Position = [3 34 70 22];
            app.BCyMaxPressureButton.Value = true;

            % Create BCyMaxFluxButton
            app.BCyMaxFluxButton = uiradiobutton(app.BCyMaxButtonGroup);
            app.BCyMaxFluxButton.Text = 'Flux';
            app.BCyMaxFluxButton.Position = [3 6 45 22];

            % Create BCzMinButtonGroup
            app.BCzMinButtonGroup = uibuttongroup(app.BCsTab);
            app.BCzMinButtonGroup.AutoResizeChildren = 'off';
            app.BCzMinButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCzMinButtonGroupSelectionChanged, true);
            app.BCzMinButtonGroup.BorderType = 'none';
            app.BCzMinButtonGroup.Position = [362 76 100 53];

            % Create BCzMinPressureButton
            app.BCzMinPressureButton = uiradiobutton(app.BCzMinButtonGroup);
            app.BCzMinPressureButton.Text = 'Pressure';
            app.BCzMinPressureButton.Position = [4 30 70 22];
            app.BCzMinPressureButton.Value = true;

            % Create BCzMinFluxButton
            app.BCzMinFluxButton = uiradiobutton(app.BCzMinButtonGroup);
            app.BCzMinFluxButton.Text = 'Flux';
            app.BCzMinFluxButton.Position = [4 3 45 22];

            % Create BCzMaxButtonGroup
            app.BCzMaxButtonGroup = uibuttongroup(app.BCsTab);
            app.BCzMaxButtonGroup.AutoResizeChildren = 'off';
            app.BCzMaxButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCzMaxButtonGroupSelectionChanged, true);
            app.BCzMaxButtonGroup.BorderType = 'none';
            app.BCzMaxButtonGroup.Position = [363 21 100 51];

            % Create BCzMaxPressureButton
            app.BCzMaxPressureButton = uiradiobutton(app.BCzMaxButtonGroup);
            app.BCzMaxPressureButton.Text = 'Pressure';
            app.BCzMaxPressureButton.Position = [3 30 70 22];
            app.BCzMaxPressureButton.Value = true;

            % Create BCzMaxFluxButton
            app.BCzMaxFluxButton = uiradiobutton(app.BCzMaxButtonGroup);
            app.BCzMaxFluxButton.Text = 'Flux';
            app.BCzMaxFluxButton.Position = [3 2 45 22];

            % Create BCzMaxFluxEditField
            app.BCzMaxFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMaxFluxEditField.Position = [472 21 69 22];

            % Create BCzMaxFluxUnitDropDown
            app.BCzMaxFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMaxFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCzMaxFluxUnitDropDown.Position = [549 21 73 22];
            app.BCzMaxFluxUnitDropDown.Value = 'm³/h';

            % Create BCzMaxPressureEditField
            app.BCzMaxPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMaxPressureEditField.Limits = [0 Inf];
            app.BCzMaxPressureEditField.Position = [472 49 69 22];

            % Create BCzMaxPressureUnitDropDown
            app.BCzMaxPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMaxPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCzMaxPressureUnitDropDown.Position = [549 49 73 22];
            app.BCzMaxPressureUnitDropDown.Value = 'bara';

            % Create BCzMaxCheckBox
            app.BCzMaxCheckBox = uicheckbox(app.BCsTab);
            app.BCzMaxCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCzMaxCheckBoxValueChanged, true);
            app.BCzMaxCheckBox.Text = 'z-Max';
            app.BCzMaxCheckBox.Position = [275 49 55 22];

            % Create BCzMinCheckBox
            app.BCzMinCheckBox = uicheckbox(app.BCsTab);
            app.BCzMinCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCzMinCheckBoxValueChanged, true);
            app.BCzMinCheckBox.Text = 'z-Min';
            app.BCzMinCheckBox.Position = [275 105 51 22];

            % Create BCyMinCheckBox
            app.BCyMinCheckBox = uicheckbox(app.BCsTab);
            app.BCyMinCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCyMinCheckBoxValueChanged, true);
            app.BCyMinCheckBox.Text = 'y-Min';
            app.BCyMinCheckBox.Position = [275 217 51 22];

            % Create BCyMaxCheckBox
            app.BCyMaxCheckBox = uicheckbox(app.BCsTab);
            app.BCyMaxCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCyMaxCheckBoxValueChanged, true);
            app.BCyMaxCheckBox.Text = 'y-Max';
            app.BCyMaxCheckBox.Position = [275 161 55 22];

            % Create BCxMaxCheckBox
            app.BCxMaxCheckBox = uicheckbox(app.BCsTab);
            app.BCxMaxCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCxMaxCheckBoxValueChanged, true);
            app.BCxMaxCheckBox.Text = 'x-Max';
            app.BCxMaxCheckBox.Position = [275 273 55 22];

            % Create BCxMinCheckBox
            app.BCxMinCheckBox = uicheckbox(app.BCsTab);
            app.BCxMinCheckBox.ValueChangedFcn = createCallbackFcn(app, @BCxMinCheckBoxValueChanged, true);
            app.BCxMinCheckBox.Text = 'x-Min';
            app.BCxMinCheckBox.Position = [275 330 51 22];

            % Create BCzMinPressureEditField
            app.BCzMinPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMinPressureEditField.Limits = [0 Inf];
            app.BCzMinPressureEditField.Position = [472 105 69 22];

            % Create BCzMinPressureUnitDropDown
            app.BCzMinPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMinPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCzMinPressureUnitDropDown.Position = [549 105 73 22];
            app.BCzMinPressureUnitDropDown.Value = 'bara';

            % Create BCzMinFluxEditField
            app.BCzMinFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMinFluxEditField.Position = [472 77 69 22];

            % Create BCzMinFluxUnitDropDown
            app.BCzMinFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMinFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCzMinFluxUnitDropDown.Position = [549 77 73 22];
            app.BCzMinFluxUnitDropDown.Value = 'm³/h';

            % Create BCyMaxFluxEditField
            app.BCyMaxFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMaxFluxEditField.Position = [472 133 69 22];

            % Create BCyMaxFluxUnitDropDown
            app.BCyMaxFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMaxFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCyMaxFluxUnitDropDown.Position = [549 133 73 22];
            app.BCyMaxFluxUnitDropDown.Value = 'm³/h';

            % Create BCyMaxPressureEditField
            app.BCyMaxPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMaxPressureEditField.Limits = [0 Inf];
            app.BCyMaxPressureEditField.Position = [472 161 69 22];

            % Create BCyMaxPressureUnitDropDown
            app.BCyMaxPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMaxPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCyMaxPressureUnitDropDown.Position = [549 161 73 22];
            app.BCyMaxPressureUnitDropDown.Value = 'bara';

            % Create BCyMinPressureEditField
            app.BCyMinPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMinPressureEditField.Limits = [0 Inf];
            app.BCyMinPressureEditField.Position = [472 217 69 22];

            % Create BCyMinPressureUnitDropDown
            app.BCyMinPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMinPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCyMinPressureUnitDropDown.Position = [549 217 73 22];
            app.BCyMinPressureUnitDropDown.Value = 'bara';

            % Create BCyMinFluxEditField
            app.BCyMinFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMinFluxEditField.Position = [472 189 69 22];

            % Create BCyMinFluxUnitDropDown
            app.BCyMinFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMinFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCyMinFluxUnitDropDown.Position = [549 189 73 22];
            app.BCyMinFluxUnitDropDown.Value = 'm³/h';

            % Create BCxMaxPressureEditField
            app.BCxMaxPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMaxPressureEditField.Limits = [0 Inf];
            app.BCxMaxPressureEditField.Position = [472 273 69 22];

            % Create BCxMaxPressureUnitDropDown
            app.BCxMaxPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMaxPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCxMaxPressureUnitDropDown.Position = [549 273 73 22];
            app.BCxMaxPressureUnitDropDown.Value = 'bara';

            % Create BCxMaxFluxEditField
            app.BCxMaxFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMaxFluxEditField.Position = [472 245 69 22];

            % Create BCxMaxFluxUnitDropDown
            app.BCxMaxFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMaxFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCxMaxFluxUnitDropDown.Position = [549 245 73 22];
            app.BCxMaxFluxUnitDropDown.Value = 'm³/h';

            % Create BCxMinPressureEditField
            app.BCxMinPressureEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMinPressureEditField.Limits = [0 Inf];
            app.BCxMinPressureEditField.Position = [472 330 69 22];

            % Create BCxMinPressureUnitDropDown
            app.BCxMinPressureUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMinPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.BCxMinPressureUnitDropDown.Position = [549 330 73 22];
            app.BCxMinPressureUnitDropDown.Value = 'bara';

            % Create BCxMinFluxEditField
            app.BCxMinFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMinFluxEditField.Position = [472 301 69 22];

            % Create BCxMinFluxUnitDropDown
            app.BCxMinFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMinFluxUnitDropDown.Items = {'m³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.BCxMinFluxUnitDropDown.Position = [549 301 73 22];
            app.BCxMinFluxUnitDropDown.Value = 'm³/h';

            % Create BCzMaxHeatFluxEditField
            app.BCzMaxHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMaxHeatFluxEditField.Position = [792 22 69 22];

            % Create BCzMaxHeatFluxUnitDropDown
            app.BCzMaxHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMaxHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCzMaxHeatFluxUnitDropDown.Position = [869 22 73 22];
            app.BCzMaxHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCzMaxTempEditField
            app.BCzMaxTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMaxTempEditField.LowerLimitInclusive = 'off';
            app.BCzMaxTempEditField.Limits = [-273.15 Inf];
            app.BCzMaxTempEditField.Position = [792 50 69 22];

            % Create BCzMaxTempUnitDropDown
            app.BCzMaxTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMaxTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCzMaxTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCzMaxTempUnitDropDownValueChanged, true);
            app.BCzMaxTempUnitDropDown.Position = [869 50 73 22];
            app.BCzMaxTempUnitDropDown.Value = '°C';

            % Create BCzMinTempEditField
            app.BCzMinTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMinTempEditField.LowerLimitInclusive = 'off';
            app.BCzMinTempEditField.Limits = [-273.15 Inf];
            app.BCzMinTempEditField.Position = [792 106 69 22];

            % Create BCzMinTempUnitDropDown
            app.BCzMinTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMinTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCzMinTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCzMinTempUnitDropDownValueChanged, true);
            app.BCzMinTempUnitDropDown.Position = [869 106 73 22];
            app.BCzMinTempUnitDropDown.Value = '°C';

            % Create BCzMinHeatFluxEditField
            app.BCzMinHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCzMinHeatFluxEditField.Position = [792 78 69 22];

            % Create BCzMinHeatFluxUnitDropDown
            app.BCzMinHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCzMinHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCzMinHeatFluxUnitDropDown.Position = [869 78 73 22];
            app.BCzMinHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCyMaxHeatFluxEditField
            app.BCyMaxHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMaxHeatFluxEditField.Position = [792 134 69 22];

            % Create BCyMaxHeatFluxUnitDropDown
            app.BCyMaxHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMaxHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCyMaxHeatFluxUnitDropDown.Position = [869 134 73 22];
            app.BCyMaxHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCyMaxTempEditField
            app.BCyMaxTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMaxTempEditField.LowerLimitInclusive = 'off';
            app.BCyMaxTempEditField.Limits = [-273.15 Inf];
            app.BCyMaxTempEditField.Position = [792 162 69 22];

            % Create BCyMaxTempUnitDropDown
            app.BCyMaxTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMaxTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCyMaxTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCyMaxTempUnitDropDownValueChanged, true);
            app.BCyMaxTempUnitDropDown.Position = [869 162 73 22];
            app.BCyMaxTempUnitDropDown.Value = '°C';

            % Create BCyMinTempEditField
            app.BCyMinTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMinTempEditField.LowerLimitInclusive = 'off';
            app.BCyMinTempEditField.Limits = [-273.15 Inf];
            app.BCyMinTempEditField.Position = [792 218 69 22];

            % Create BCyMinTempUnitDropDown
            app.BCyMinTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMinTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCyMinTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCyMinTempUnitDropDownValueChanged, true);
            app.BCyMinTempUnitDropDown.Position = [869 218 73 22];
            app.BCyMinTempUnitDropDown.Value = '°C';

            % Create BCyMinHeatFluxEditField
            app.BCyMinHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCyMinHeatFluxEditField.Position = [792 190 69 22];

            % Create BCyMinHeatFluxUnitDropDown
            app.BCyMinHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCyMinHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCyMinHeatFluxUnitDropDown.Position = [869 190 73 22];
            app.BCyMinHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCxMaxTempEditField
            app.BCxMaxTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMaxTempEditField.LowerLimitInclusive = 'off';
            app.BCxMaxTempEditField.Limits = [-273.15 Inf];
            app.BCxMaxTempEditField.Position = [792 274 69 22];

            % Create BCxMaxTempUnitDropDown
            app.BCxMaxTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMaxTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCxMaxTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCxMaxTempUnitDropDownValueChanged, true);
            app.BCxMaxTempUnitDropDown.Position = [869 274 73 22];
            app.BCxMaxTempUnitDropDown.Value = '°C';

            % Create BCxMaxHeatFluxEditField
            app.BCxMaxHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMaxHeatFluxEditField.Position = [792 246 69 22];

            % Create BCxMaxHeatFluxUnitDropDown
            app.BCxMaxHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMaxHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCxMaxHeatFluxUnitDropDown.Position = [869 246 73 22];
            app.BCxMaxHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCxMinTempEditField
            app.BCxMinTempEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMinTempEditField.LowerLimitInclusive = 'off';
            app.BCxMinTempEditField.Limits = [-273.15 Inf];
            app.BCxMinTempEditField.Position = [792 331 69 22];

            % Create BCxMinTempUnitDropDown
            app.BCxMinTempUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMinTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.BCxMinTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @BCxMinTempUnitDropDownValueChanged, true);
            app.BCxMinTempUnitDropDown.Position = [869 331 73 22];
            app.BCxMinTempUnitDropDown.Value = '°C';

            % Create BCxMinHeatFluxEditField
            app.BCxMinHeatFluxEditField = uieditfield(app.BCsTab, 'numeric');
            app.BCxMinHeatFluxEditField.Position = [792 302 69 22];

            % Create BCxMinHeatFluxUnitDropDown
            app.BCxMinHeatFluxUnitDropDown = uidropdown(app.BCsTab);
            app.BCxMinHeatFluxUnitDropDown.Items = {'W/m²'};
            app.BCxMinHeatFluxUnitDropDown.Position = [869 302 73 22];
            app.BCxMinHeatFluxUnitDropDown.Value = 'W/m²';

            % Create BCVisualizationPanel
            app.BCVisualizationPanel = uipanel(app.BCsTab);
            app.BCVisualizationPanel.AutoResizeChildren = 'off';
            app.BCVisualizationPanel.Title = 'Visualization';
            app.BCVisualizationPanel.Position = [58 173 152 80];

            % Create BCVisualizationButtonGroup
            app.BCVisualizationButtonGroup = uibuttongroup(app.BCVisualizationPanel);
            app.BCVisualizationButtonGroup.AutoResizeChildren = 'off';
            app.BCVisualizationButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCVisualizationButtonGroupSelectionChanged, true);
            app.BCVisualizationButtonGroup.BorderType = 'none';
            app.BCVisualizationButtonGroup.Position = [10 4 123 48];

            % Create BCVisualizationHydraulicButton
            app.BCVisualizationHydraulicButton = uiradiobutton(app.BCVisualizationButtonGroup);
            app.BCVisualizationHydraulicButton.Text = 'Hydraulic';
            app.BCVisualizationHydraulicButton.Position = [11 23 72 22];
            app.BCVisualizationHydraulicButton.Value = true;

            % Create BCVisualizationThermButton
            app.BCVisualizationThermButton = uiradiobutton(app.BCVisualizationButtonGroup);
            app.BCVisualizationThermButton.Text = 'Thermal';
            app.BCVisualizationThermButton.Position = [11 2 66 22];

            % Create BCxMinTempLabel
            app.BCxMinTempLabel = uilabel(app.BCsTab);
            app.BCxMinTempLabel.Position = [702 331 73 22];
            app.BCxMinTempLabel.Text = 'Temperature';

            % Create BCxMinHeatFluxLabel
            app.BCxMinHeatFluxLabel = uilabel(app.BCsTab);
            app.BCxMinHeatFluxLabel.Position = [702 302 57 22];
            app.BCxMinHeatFluxLabel.Text = 'Heat Flux';

            % Create BCxMaxTempLabel
            app.BCxMaxTempLabel = uilabel(app.BCsTab);
            app.BCxMaxTempLabel.Position = [702 274 73 22];
            app.BCxMaxTempLabel.Text = 'Temperature';

            % Create BCxMaxHeatFluxLabel
            app.BCxMaxHeatFluxLabel = uilabel(app.BCsTab);
            app.BCxMaxHeatFluxLabel.Position = [702 246 57 22];
            app.BCxMaxHeatFluxLabel.Text = 'Heat Flux';

            % Create BCyMinTempLabel
            app.BCyMinTempLabel = uilabel(app.BCsTab);
            app.BCyMinTempLabel.Position = [702 218 73 22];
            app.BCyMinTempLabel.Text = 'Temperature';

            % Create BCyMinHeatFluxLabel
            app.BCyMinHeatFluxLabel = uilabel(app.BCsTab);
            app.BCyMinHeatFluxLabel.Position = [702 190 57 22];
            app.BCyMinHeatFluxLabel.Text = 'Heat Flux';

            % Create BCyMaxTempLabel
            app.BCyMaxTempLabel = uilabel(app.BCsTab);
            app.BCyMaxTempLabel.Position = [702 162 73 22];
            app.BCyMaxTempLabel.Text = 'Temperature';

            % Create BCyMaxHeatFluxLabel
            app.BCyMaxHeatFluxLabel = uilabel(app.BCsTab);
            app.BCyMaxHeatFluxLabel.Position = [702 134 57 22];
            app.BCyMaxHeatFluxLabel.Text = 'Heat Flux';

            % Create BCzMinTempLabel
            app.BCzMinTempLabel = uilabel(app.BCsTab);
            app.BCzMinTempLabel.Position = [702 106 73 22];
            app.BCzMinTempLabel.Text = 'Temperature';

            % Create BCzMinHeatFluxLabel
            app.BCzMinHeatFluxLabel = uilabel(app.BCsTab);
            app.BCzMinHeatFluxLabel.Position = [702 78 57 22];
            app.BCzMinHeatFluxLabel.Text = 'Heat Flux';

            % Create BCzMaxTempLabel
            app.BCzMaxTempLabel = uilabel(app.BCsTab);
            app.BCzMaxTempLabel.Position = [702 50 73 22];
            app.BCzMaxTempLabel.Text = 'Temperature';

            % Create BCzMaxHeatFluxLabel
            app.BCzMaxHeatFluxLabel = uilabel(app.BCsTab);
            app.BCzMaxHeatFluxLabel.Position = [702 22 57 22];
            app.BCzMaxHeatFluxLabel.Text = 'Heat Flux';

            % Create BCThermalBCPanel
            app.BCThermalBCPanel = uipanel(app.BCsTab);
            app.BCThermalBCPanel.AutoResizeChildren = 'off';
            app.BCThermalBCPanel.Title = 'Thermal BC';
            app.BCThermalBCPanel.Position = [58 271 152 80];

            % Create BCThermalButtonGroup
            app.BCThermalButtonGroup = uibuttongroup(app.BCThermalBCPanel);
            app.BCThermalButtonGroup.AutoResizeChildren = 'off';
            app.BCThermalButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @BCThermalButtonGroupSelectionChanged, true);
            app.BCThermalButtonGroup.BorderType = 'none';
            app.BCThermalButtonGroup.Position = [10 6 123 48];

            % Create BCThermalTempButton
            app.BCThermalTempButton = uiradiobutton(app.BCThermalButtonGroup);
            app.BCThermalTempButton.Text = 'Temperature';
            app.BCThermalTempButton.Position = [11 23 89 22];
            app.BCThermalTempButton.Value = true;

            % Create BCThermalHeatFluxButton
            app.BCThermalHeatFluxButton = uiradiobutton(app.BCThermalButtonGroup);
            app.BCThermalHeatFluxButton.Text = 'Heat Flux';
            app.BCThermalHeatFluxButton.Position = [11 2 73 22];

            % Create ReservoirTab
            app.ReservoirTab = uitab(app.GlobalTabGroup);
            app.ReservoirTab.AutoResizeChildren = 'off';
            app.ReservoirTab.Title = 'Reservoir';

            % Create InitialConditionsPanel
            app.InitialConditionsPanel = uipanel(app.ReservoirTab);
            app.InitialConditionsPanel.AutoResizeChildren = 'off';
            app.InitialConditionsPanel.Title = 'Initial Conditions';
            app.InitialConditionsPanel.Position = [22 232 647 117];

            % Create ReservoirInitPressureUnitDropDown
            app.ReservoirInitPressureUnitDropDown = uidropdown(app.InitialConditionsPanel);
            app.ReservoirInitPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.ReservoirInitPressureUnitDropDown.Position = [235 59 73 22];
            app.ReservoirInitPressureUnitDropDown.Value = 'bara';

            % Create ReservoirInitTempUnitDropDown
            app.ReservoirInitTempUnitDropDown = uidropdown(app.InitialConditionsPanel);
            app.ReservoirInitTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.ReservoirInitTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @ReservoirInitTempUnitDropDownValueChanged, true);
            app.ReservoirInitTempUnitDropDown.Position = [235 28 73 22];
            app.ReservoirInitTempUnitDropDown.Value = '°C';

            % Create ReservoirPressureEditFieldLabel
            app.ReservoirPressureEditFieldLabel = uilabel(app.InitialConditionsPanel);
            app.ReservoirPressureEditFieldLabel.HorizontalAlignment = 'right';
            app.ReservoirPressureEditFieldLabel.Position = [34 59 108 22];
            app.ReservoirPressureEditFieldLabel.Text = 'Reservoir Pressure';

            % Create ReservoirInitPressureEditField
            app.ReservoirInitPressureEditField = uieditfield(app.InitialConditionsPanel, 'numeric');
            app.ReservoirInitPressureEditField.Limits = [0 Inf];
            app.ReservoirInitPressureEditField.Position = [157 59 71 22];

            % Create ReservoirTemperatureEditFieldLabel
            app.ReservoirTemperatureEditFieldLabel = uilabel(app.InitialConditionsPanel);
            app.ReservoirTemperatureEditFieldLabel.HorizontalAlignment = 'right';
            app.ReservoirTemperatureEditFieldLabel.Position = [15 28 127 22];
            app.ReservoirTemperatureEditFieldLabel.Text = 'Reservoir Temperature';

            % Create ReservoirInitTempEditField
            app.ReservoirInitTempEditField = uieditfield(app.InitialConditionsPanel, 'numeric');
            app.ReservoirInitTempEditField.LowerLimitInclusive = 'off';
            app.ReservoirInitTempEditField.Limits = [-273.15 Inf];
            app.ReservoirInitTempEditField.Position = [157 28 71 22];

            % Create InitializeWithEquilibriumCheckBox
            app.InitializeWithEquilibriumCheckBox = uicheckbox(app.InitialConditionsPanel);
            app.InitializeWithEquilibriumCheckBox.ValueChangedFcn = createCallbackFcn(app, @InitializeWithEquilibriumCheckBoxValueChanged, true);
            app.InitializeWithEquilibriumCheckBox.Text = 'Initialize with undisturbed equilibrium';
            app.InitializeWithEquilibriumCheckBox.Position = [373 59 218 22];
            app.InitializeWithEquilibriumCheckBox.Value = true;

            % Create EqualizationtimeLabel
            app.EqualizationtimeLabel = uilabel(app.InitialConditionsPanel);
            app.EqualizationtimeLabel.HorizontalAlignment = 'right';
            app.EqualizationtimeLabel.Position = [385 31 97 22];
            app.EqualizationtimeLabel.Text = 'Equalization time';

            % Create EqualizationTimeEditField
            app.EqualizationTimeEditField = uieditfield(app.InitialConditionsPanel, 'numeric');
            app.EqualizationTimeEditField.Limits = [0 Inf];
            app.EqualizationTimeEditField.Position = [497 31 71 22];

            % Create EqualizationTimeUnitDropDown
            app.EqualizationTimeUnitDropDown = uidropdown(app.InitialConditionsPanel);
            app.EqualizationTimeUnitDropDown.Items = {'s', 'min', 'h', 'd', 'a'};
            app.EqualizationTimeUnitDropDown.Position = [574 31 58 22];
            app.EqualizationTimeUnitDropDown.Value = 'a';

            % Create WellsTab
            app.WellsTab = uitab(app.GlobalTabGroup);
            app.WellsTab.AutoResizeChildren = 'off';
            app.WellsTab.Title = 'Wells';

            % Create WellsInjectorPanel
            app.WellsInjectorPanel = uipanel(app.WellsTab);
            app.WellsInjectorPanel.AutoResizeChildren = 'off';
            app.WellsInjectorPanel.Title = 'Injector';
            app.WellsInjectorPanel.Position = [40 28 470 323];

            % Create WellNameEditFieldLabel
            app.WellNameEditFieldLabel = uilabel(app.WellsInjectorPanel);
            app.WellNameEditFieldLabel.HorizontalAlignment = 'right';
            app.WellNameEditFieldLabel.Position = [76 263 64 22];
            app.WellNameEditFieldLabel.Text = 'Well Name';

            % Create InjWellNameEditField
            app.InjWellNameEditField = uieditfield(app.WellsInjectorPanel, 'text');
            app.InjWellNameEditField.ValueChangedFcn = createCallbackFcn(app, @InjWellNameEditFieldValueChanged, true);
            app.InjWellNameEditField.Position = [155 263 171 22];
            app.InjWellNameEditField.Value = 'Inj';

            % Create RadiusEditFieldLabel
            app.RadiusEditFieldLabel = uilabel(app.WellsInjectorPanel);
            app.RadiusEditFieldLabel.HorizontalAlignment = 'right';
            app.RadiusEditFieldLabel.Position = [96 226 43 22];
            app.RadiusEditFieldLabel.Text = 'Radius';

            % Create InjWellRadiusEditField
            app.InjWellRadiusEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellRadiusEditField.LowerLimitInclusive = 'off';
            app.InjWellRadiusEditField.Limits = [0 Inf];
            app.InjWellRadiusEditField.Position = [155 226 61 22];
            app.InjWellRadiusEditField.Value = 70;

            % Create InjWellRadiusUnitDropDown
            app.InjWellRadiusUnitDropDown = uidropdown(app.WellsInjectorPanel);
            app.InjWellRadiusUnitDropDown.Items = {'mm', 'inch'};
            app.InjWellRadiusUnitDropDown.Position = [226 226 68 22];
            app.InjWellRadiusUnitDropDown.Value = 'mm';

            % Create InjWellControlButtonGroup
            app.InjWellControlButtonGroup = uibuttongroup(app.WellsInjectorPanel);
            app.InjWellControlButtonGroup.AutoResizeChildren = 'off';
            app.InjWellControlButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @InjWellControlButtonGroupSelectionChanged, true);
            app.InjWellControlButtonGroup.BorderType = 'none';
            app.InjWellControlButtonGroup.Position = [153 151 123 60];

            % Create InjWellConstantRateButton
            app.InjWellConstantRateButton = uiradiobutton(app.InjWellControlButtonGroup);
            app.InjWellConstantRateButton.Text = 'Constant Rate';
            app.InjWellConstantRateButton.Position = [11 34 99 22];
            app.InjWellConstantRateButton.Value = true;

            % Create InjWellConstantBHPButton
            app.InjWellConstantBHPButton = uiradiobutton(app.InjWellControlButtonGroup);
            app.InjWellConstantBHPButton.Text = 'Constant BHP';
            app.InjWellConstantBHPButton.Position = [11 7 98 22];

            % Create InjWellRateEditField
            app.InjWellRateEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellRateEditField.LowerLimitInclusive = 'off';
            app.InjWellRateEditField.Limits = [0 Inf];
            app.InjWellRateEditField.Position = [267 184 61 22];
            app.InjWellRateEditField.Value = 1;

            % Create InjWellBHPEditField
            app.InjWellBHPEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellBHPEditField.Limits = [0 Inf];
            app.InjWellBHPEditField.Position = [267 156 61 22];
            app.InjWellBHPEditField.Value = 100;

            % Create InjWellRateUnitDropDown
            app.InjWellRateUnitDropDown = uidropdown(app.WellsInjectorPanel);
            app.InjWellRateUnitDropDown.Items = {'m³/s', 'm³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.InjWellRateUnitDropDown.Position = [339 184 73 22];
            app.InjWellRateUnitDropDown.Value = 'm³/h';

            % Create InjWellBHPUnitDropDown
            app.InjWellBHPUnitDropDown = uidropdown(app.WellsInjectorPanel);
            app.InjWellBHPUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.InjWellBHPUnitDropDown.Position = [339 156 73 22];
            app.InjWellBHPUnitDropDown.Value = 'bara';

            % Create BottomHolePointLabel
            app.BottomHolePointLabel = uilabel(app.WellsInjectorPanel);
            app.BottomHolePointLabel.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.BottomHolePointLabel.Position = [30 77 102 22];
            app.BottomHolePointLabel.Text = 'Bottom Hole Point';

            % Create xLabel_18
            app.xLabel_18 = uilabel(app.WellsInjectorPanel);
            app.xLabel_18.HorizontalAlignment = 'right';
            app.xLabel_18.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_18.Position = [123 77 25 22];
            app.xLabel_18.Text = 'x';

            % Create InjWellPointxEditField
            app.InjWellPointxEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellPointxEditField.Limits = [0 Inf];
            app.InjWellPointxEditField.RoundFractionalValues = 'on';
            app.InjWellPointxEditField.ValueChangedFcn = createCallbackFcn(app, @InjWellPointxEditFieldValueChanged, true);
            app.InjWellPointxEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.InjWellPointxEditField.Position = [154 77 61 22];
            app.InjWellPointxEditField.Value = 1;

            % Create xLabel_19
            app.xLabel_19 = uilabel(app.WellsInjectorPanel);
            app.xLabel_19.HorizontalAlignment = 'right';
            app.xLabel_19.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_19.Position = [123 23 25 22];
            app.xLabel_19.Text = 'z';

            % Create InjWellPointzEditField
            app.InjWellPointzEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellPointzEditField.Limits = [0 Inf];
            app.InjWellPointzEditField.RoundFractionalValues = 'on';
            app.InjWellPointzEditField.ValueChangedFcn = createCallbackFcn(app, @InjWellPointzEditFieldValueChanged, true);
            app.InjWellPointzEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.InjWellPointzEditField.Position = [154 23 61 22];
            app.InjWellPointzEditField.Value = 10;

            % Create xLabel_20
            app.xLabel_20 = uilabel(app.WellsInjectorPanel);
            app.xLabel_20.HorizontalAlignment = 'right';
            app.xLabel_20.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_20.Position = [123 50 25 22];
            app.xLabel_20.Text = 'y';

            % Create InjWellPointyEditField
            app.InjWellPointyEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellPointyEditField.Limits = [0 Inf];
            app.InjWellPointyEditField.RoundFractionalValues = 'on';
            app.InjWellPointyEditField.ValueChangedFcn = createCallbackFcn(app, @InjWellPointyEditFieldValueChanged, true);
            app.InjWellPointyEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.InjWellPointyEditField.Position = [154 50 61 22];
            app.InjWellPointyEditField.Value = 1;

            % Create InjWellTempUnitDropDown
            app.InjWellTempUnitDropDown = uidropdown(app.WellsInjectorPanel);
            app.InjWellTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.InjWellTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @InjWellTempUnitDropDownValueChanged, true);
            app.InjWellTempUnitDropDown.Position = [226 114 68 22];
            app.InjWellTempUnitDropDown.Value = '°C';

            % Create FluidTemperatureLabel
            app.FluidTemperatureLabel = uilabel(app.WellsInjectorPanel);
            app.FluidTemperatureLabel.HorizontalAlignment = 'right';
            app.FluidTemperatureLabel.Position = [37 114 102 22];
            app.FluidTemperatureLabel.Text = 'Fluid Temperature';

            % Create InjWellTempEditField
            app.InjWellTempEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellTempEditField.LowerLimitInclusive = 'off';
            app.InjWellTempEditField.Limits = [-273.15 Inf];
            app.InjWellTempEditField.Position = [154 114 61 22];

            % Create ControlTypeLabel
            app.ControlTypeLabel = uilabel(app.WellsInjectorPanel);
            app.ControlTypeLabel.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.ControlTypeLabel.Position = [66 170 73 22];
            app.ControlTypeLabel.Text = 'Control Type';

            % Create FluidTemperatureLabel_2
            app.FluidTemperatureLabel_2 = uilabel(app.WellsInjectorPanel);
            app.FluidTemperatureLabel_2.HorizontalAlignment = 'right';
            app.FluidTemperatureLabel_2.Position = [238 78 100 22];
            app.FluidTemperatureLabel_2.Text = 'Top of Perforation';

            % Create InjWellTopOfPerforationEditField
            app.InjWellTopOfPerforationEditField = uieditfield(app.WellsInjectorPanel, 'numeric');
            app.InjWellTopOfPerforationEditField.Limits = [1 Inf];
            app.InjWellTopOfPerforationEditField.RoundFractionalValues = 'on';
            app.InjWellTopOfPerforationEditField.ValueChangedFcn = createCallbackFcn(app, @InjWellTopOfPerforationEditFieldValueChanged, true);
            app.InjWellTopOfPerforationEditField.Position = [353 78 61 22];
            app.InjWellTopOfPerforationEditField.Value = 1;

            % Create WellsProducerPanel
            app.WellsProducerPanel = uipanel(app.WellsTab);
            app.WellsProducerPanel.AutoResizeChildren = 'off';
            app.WellsProducerPanel.Title = 'Producer';
            app.WellsProducerPanel.Position = [524 28 470 323];

            % Create ProdWellRadiusUnitDropDown
            app.ProdWellRadiusUnitDropDown = uidropdown(app.WellsProducerPanel);
            app.ProdWellRadiusUnitDropDown.Items = {'mm', 'inch'};
            app.ProdWellRadiusUnitDropDown.Position = [226 226 68 22];
            app.ProdWellRadiusUnitDropDown.Value = 'mm';

            % Create ProdWellControlButtonGroup
            app.ProdWellControlButtonGroup = uibuttongroup(app.WellsProducerPanel);
            app.ProdWellControlButtonGroup.AutoResizeChildren = 'off';
            app.ProdWellControlButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ProdWellControlButtonGroupSelectionChanged, true);
            app.ProdWellControlButtonGroup.BorderType = 'none';
            app.ProdWellControlButtonGroup.Position = [151 151 123 60];

            % Create ProdWellConstantRateButton
            app.ProdWellConstantRateButton = uiradiobutton(app.ProdWellControlButtonGroup);
            app.ProdWellConstantRateButton.Text = 'Constant Rate';
            app.ProdWellConstantRateButton.Position = [11 34 99 22];

            % Create ProdWellConstantBHPButton
            app.ProdWellConstantBHPButton = uiradiobutton(app.ProdWellControlButtonGroup);
            app.ProdWellConstantBHPButton.Text = 'Constant BHP';
            app.ProdWellConstantBHPButton.Position = [11 6 98 22];
            app.ProdWellConstantBHPButton.Value = true;

            % Create ProdWellRateUnitDropDown
            app.ProdWellRateUnitDropDown = uidropdown(app.WellsProducerPanel);
            app.ProdWellRateUnitDropDown.Items = {'m³/s', 'm³/h', 'm³/day', 'STB/h', 'STB/day', 'kg/s', 'kg/day'};
            app.ProdWellRateUnitDropDown.Position = [337 183 73 22];
            app.ProdWellRateUnitDropDown.Value = 'm³/h';

            % Create ProdWellBHPUnitDropDown
            app.ProdWellBHPUnitDropDown = uidropdown(app.WellsProducerPanel);
            app.ProdWellBHPUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.ProdWellBHPUnitDropDown.Position = [337 155 73 22];
            app.ProdWellBHPUnitDropDown.Value = 'bara';

            % Create WellNameEditField_2Label
            app.WellNameEditField_2Label = uilabel(app.WellsProducerPanel);
            app.WellNameEditField_2Label.HorizontalAlignment = 'right';
            app.WellNameEditField_2Label.Position = [76 263 64 22];
            app.WellNameEditField_2Label.Text = 'Well Name';

            % Create ProdWellNameEditField
            app.ProdWellNameEditField = uieditfield(app.WellsProducerPanel, 'text');
            app.ProdWellNameEditField.ValueChangedFcn = createCallbackFcn(app, @ProdWellNameEditFieldValueChanged, true);
            app.ProdWellNameEditField.Position = [155 263 171 22];
            app.ProdWellNameEditField.Value = 'Prod';

            % Create RadiusEditField_2Label
            app.RadiusEditField_2Label = uilabel(app.WellsProducerPanel);
            app.RadiusEditField_2Label.HorizontalAlignment = 'right';
            app.RadiusEditField_2Label.Position = [96 226 43 22];
            app.RadiusEditField_2Label.Text = 'Radius';

            % Create ProdWellRadiusEditField
            app.ProdWellRadiusEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellRadiusEditField.LowerLimitInclusive = 'off';
            app.ProdWellRadiusEditField.Limits = [0 Inf];
            app.ProdWellRadiusEditField.Position = [155 226 61 22];
            app.ProdWellRadiusEditField.Value = 70;

            % Create ProdWellRateEditField
            app.ProdWellRateEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellRateEditField.LowerLimitInclusive = 'off';
            app.ProdWellRateEditField.Limits = [0 Inf];
            app.ProdWellRateEditField.Position = [265 183 61 22];
            app.ProdWellRateEditField.Value = 1;

            % Create ProdWellBHPEditField
            app.ProdWellBHPEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellBHPEditField.Limits = [0 Inf];
            app.ProdWellBHPEditField.Position = [265 155 61 22];
            app.ProdWellBHPEditField.Value = 100;

            % Create up
            app.up = uilabel(app.WellsProducerPanel);
            app.up.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.up.Position = [34 114 102 22];
            app.up.Text = 'Bottom Hole Point';

            % Create xLabel_21
            app.xLabel_21 = uilabel(app.WellsProducerPanel);
            app.xLabel_21.HorizontalAlignment = 'right';
            app.xLabel_21.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_21.Position = [124 114 25 22];
            app.xLabel_21.Text = 'x';

            % Create ProdWellPointxEditField
            app.ProdWellPointxEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellPointxEditField.Limits = [0 Inf];
            app.ProdWellPointxEditField.RoundFractionalValues = 'on';
            app.ProdWellPointxEditField.ValueChangedFcn = createCallbackFcn(app, @ProdWellPointxEditFieldValueChanged, true);
            app.ProdWellPointxEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.ProdWellPointxEditField.Position = [155 114 61 22];
            app.ProdWellPointxEditField.Value = 10;

            % Create xLabel_22
            app.xLabel_22 = uilabel(app.WellsProducerPanel);
            app.xLabel_22.HorizontalAlignment = 'right';
            app.xLabel_22.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_22.Position = [124 60 25 22];
            app.xLabel_22.Text = 'z';

            % Create ProdWellPointzEditField
            app.ProdWellPointzEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellPointzEditField.Limits = [0 Inf];
            app.ProdWellPointzEditField.RoundFractionalValues = 'on';
            app.ProdWellPointzEditField.ValueChangedFcn = createCallbackFcn(app, @ProdWellPointzEditFieldValueChanged, true);
            app.ProdWellPointzEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.ProdWellPointzEditField.Position = [155 60 61 22];
            app.ProdWellPointzEditField.Value = 10;

            % Create xLabel_23
            app.xLabel_23 = uilabel(app.WellsProducerPanel);
            app.xLabel_23.HorizontalAlignment = 'right';
            app.xLabel_23.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.xLabel_23.Position = [124 87 25 22];
            app.xLabel_23.Text = 'y';

            % Create ProdWellPointyEditField
            app.ProdWellPointyEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellPointyEditField.Limits = [0 Inf];
            app.ProdWellPointyEditField.RoundFractionalValues = 'on';
            app.ProdWellPointyEditField.ValueChangedFcn = createCallbackFcn(app, @ProdWellPointyEditFieldValueChanged, true);
            app.ProdWellPointyEditField.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.ProdWellPointyEditField.Position = [155 87 61 22];
            app.ProdWellPointyEditField.Value = 10;

            % Create ControlTypeLabel_2
            app.ControlTypeLabel_2 = uilabel(app.WellsProducerPanel);
            app.ControlTypeLabel_2.Tooltip = {'Cartesian cell coordinates of well setting point.'};
            app.ControlTypeLabel_2.Position = [66 170 73 22];
            app.ControlTypeLabel_2.Text = 'Control Type';

            % Create FluidTemperatureLabel_3
            app.FluidTemperatureLabel_3 = uilabel(app.WellsProducerPanel);
            app.FluidTemperatureLabel_3.HorizontalAlignment = 'right';
            app.FluidTemperatureLabel_3.Position = [234 114 100 22];
            app.FluidTemperatureLabel_3.Text = 'Top of Perforation';

            % Create ProdWellTopOfPerforationEditField
            app.ProdWellTopOfPerforationEditField = uieditfield(app.WellsProducerPanel, 'numeric');
            app.ProdWellTopOfPerforationEditField.Limits = [1 Inf];
            app.ProdWellTopOfPerforationEditField.RoundFractionalValues = 'on';
            app.ProdWellTopOfPerforationEditField.ValueChangedFcn = createCallbackFcn(app, @ProdWellTopOfPerforationEditFieldValueChanged, true);
            app.ProdWellTopOfPerforationEditField.Position = [349 114 61 22];
            app.ProdWellTopOfPerforationEditField.Value = 1;

            % Create SimulationTab
            app.SimulationTab = uitab(app.GlobalTabGroup);
            app.SimulationTab.AutoResizeChildren = 'off';
            app.SimulationTab.Title = 'Simulation';

            % Create PlausibilityLimitsPanel
            app.PlausibilityLimitsPanel = uipanel(app.SimulationTab);
            app.PlausibilityLimitsPanel.AutoResizeChildren = 'off';
            app.PlausibilityLimitsPanel.Title = 'Plausibility Limits';
            app.PlausibilityLimitsPanel.Position = [30 112 386 214];

            % Create MinReservoirPressureUnitDropDown
            app.MinReservoirPressureUnitDropDown = uidropdown(app.PlausibilityLimitsPanel);
            app.MinReservoirPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.MinReservoirPressureUnitDropDown.Position = [267 142 73 22];
            app.MinReservoirPressureUnitDropDown.Value = 'bara';

            % Create MinReservoirTempUnitDropDown
            app.MinReservoirTempUnitDropDown = uidropdown(app.PlausibilityLimitsPanel);
            app.MinReservoirTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.MinReservoirTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @MinReservoirTempUnitDropDownValueChanged, true);
            app.MinReservoirTempUnitDropDown.Position = [267 75 73 22];
            app.MinReservoirTempUnitDropDown.Value = 'K';

            % Create MinReservoirPressureEditFieldLabel
            app.MinReservoirPressureEditFieldLabel = uilabel(app.PlausibilityLimitsPanel);
            app.MinReservoirPressureEditFieldLabel.HorizontalAlignment = 'right';
            app.MinReservoirPressureEditFieldLabel.Position = [40 142 134 22];
            app.MinReservoirPressureEditFieldLabel.Text = 'Min. Reservoir Pressure';

            % Create MinReservoirPressureEditField
            app.MinReservoirPressureEditField = uieditfield(app.PlausibilityLimitsPanel, 'numeric');
            app.MinReservoirPressureEditField.Limits = [0 Inf];
            app.MinReservoirPressureEditField.Position = [189 142 71 22];

            % Create MinReservoirTemperatureEditFieldLabel
            app.MinReservoirTemperatureEditFieldLabel = uilabel(app.PlausibilityLimitsPanel);
            app.MinReservoirTemperatureEditFieldLabel.HorizontalAlignment = 'right';
            app.MinReservoirTemperatureEditFieldLabel.Position = [21 75 153 22];
            app.MinReservoirTemperatureEditFieldLabel.Text = 'Min. Reservoir Temperature';

            % Create MinReservoirTempEditField
            app.MinReservoirTempEditField = uieditfield(app.PlausibilityLimitsPanel, 'numeric');
            app.MinReservoirTempEditField.LowerLimitInclusive = 'off';
            app.MinReservoirTempEditField.Limits = [0 Inf];
            app.MinReservoirTempEditField.Position = [189 75 71 22];
            app.MinReservoirTempEditField.Value = 1;

            % Create MaxReservoirPressureUnitDropDown
            app.MaxReservoirPressureUnitDropDown = uidropdown(app.PlausibilityLimitsPanel);
            app.MaxReservoirPressureUnitDropDown.Items = {'bara', 'Pa', 'MPa', 'psi'};
            app.MaxReservoirPressureUnitDropDown.Position = [267 108 73 22];
            app.MaxReservoirPressureUnitDropDown.Value = 'bara';

            % Create MaxReservoirPressureEditField_2Label
            app.MaxReservoirPressureEditField_2Label = uilabel(app.PlausibilityLimitsPanel);
            app.MaxReservoirPressureEditField_2Label.HorizontalAlignment = 'right';
            app.MaxReservoirPressureEditField_2Label.Position = [36 108 138 22];
            app.MaxReservoirPressureEditField_2Label.Text = 'Max. Reservoir Pressure';

            % Create MaxReservoirPressureEditField
            app.MaxReservoirPressureEditField = uieditfield(app.PlausibilityLimitsPanel, 'numeric');
            app.MaxReservoirPressureEditField.Limits = [0 Inf];
            app.MaxReservoirPressureEditField.Position = [189 108 71 22];
            app.MaxReservoirPressureEditField.Value = Inf;

            % Create MaxReservoirTempUnitDropDown
            app.MaxReservoirTempUnitDropDown = uidropdown(app.PlausibilityLimitsPanel);
            app.MaxReservoirTempUnitDropDown.Items = {'K', '°C', '°F'};
            app.MaxReservoirTempUnitDropDown.ValueChangedFcn = createCallbackFcn(app, @MaxReservoirTempUnitDropDownValueChanged, true);
            app.MaxReservoirTempUnitDropDown.Position = [267 42 73 22];
            app.MaxReservoirTempUnitDropDown.Value = 'K';

            % Create MaxReservoirTemperatureEditFieldLabel
            app.MaxReservoirTemperatureEditFieldLabel = uilabel(app.PlausibilityLimitsPanel);
            app.MaxReservoirTemperatureEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxReservoirTemperatureEditFieldLabel.Position = [17 42 157 22];
            app.MaxReservoirTemperatureEditFieldLabel.Text = 'Max. Reservoir Temperature';

            % Create MaxReservoirTempEditField
            app.MaxReservoirTempEditField = uieditfield(app.PlausibilityLimitsPanel, 'numeric');
            app.MaxReservoirTempEditField.LowerLimitInclusive = 'off';
            app.MaxReservoirTempEditField.Limits = [-273.15 Inf];
            app.MaxReservoirTempEditField.Position = [189 42 71 22];
            app.MaxReservoirTempEditField.Value = Inf;

            % Create TimestepsPanel
            app.TimestepsPanel = uipanel(app.SimulationTab);
            app.TimestepsPanel.AutoResizeChildren = 'off';
            app.TimestepsPanel.Title = 'Timesteps';
            app.TimestepsPanel.Position = [444 112 426 214];

            % Create TimestepTypeButtonGroup
            app.TimestepTypeButtonGroup = uibuttongroup(app.TimestepsPanel);
            app.TimestepTypeButtonGroup.AutoResizeChildren = 'off';
            app.TimestepTypeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @TimestepTypeButtonGroupSelectionChanged, true);
            app.TimestepTypeButtonGroup.BorderType = 'none';
            app.TimestepTypeButtonGroup.Position = [19 45 139 69];

            % Create FixedTimestepsButton
            app.FixedTimestepsButton = uiradiobutton(app.TimestepTypeButtonGroup);
            app.FixedTimestepsButton.Text = 'Fixed Timesteps';
            app.FixedTimestepsButton.Position = [10 37 109 22];
            app.FixedTimestepsButton.Value = true;

            % Create GeometricRampupButton
            app.GeometricRampupButton = uiradiobutton(app.TimestepTypeButtonGroup);
            app.GeometricRampupButton.Text = 'Geometric Rampup';
            app.GeometricRampupButton.Position = [10 7 126 22];

            % Create RampupStepsLabel_2
            app.RampupStepsLabel_2 = uilabel(app.TimestepsPanel);
            app.RampupStepsLabel_2.HorizontalAlignment = 'right';
            app.RampupStepsLabel_2.Position = [67 160 56 22];
            app.RampupStepsLabel_2.Text = 'End Time';

            % Create EndTimeEditField
            app.EndTimeEditField = uieditfield(app.TimestepsPanel, 'numeric');
            app.EndTimeEditField.Limits = [0 Inf];
            app.EndTimeEditField.Position = [138 160 71 22];

            % Create RampupStepsLabel_3
            app.RampupStepsLabel_3 = uilabel(app.TimestepsPanel);
            app.RampupStepsLabel_3.HorizontalAlignment = 'right';
            app.RampupStepsLabel_3.Position = [27 132 96 22];
            app.RampupStepsLabel_3.Text = 'Default Timestep';

            % Create TimestepEditField
            app.TimestepEditField = uieditfield(app.TimestepsPanel, 'numeric');
            app.TimestepEditField.Limits = [0 Inf];
            app.TimestepEditField.Position = [138 132 71 22];

            % Create EndTimeUnitDropDown
            app.EndTimeUnitDropDown = uidropdown(app.TimestepsPanel);
            app.EndTimeUnitDropDown.Items = {'s', 'min', 'h', 'd', 'a'};
            app.EndTimeUnitDropDown.Position = [219 160 58 22];
            app.EndTimeUnitDropDown.Value = 'd';

            % Create TimestepUnitDropDown
            app.TimestepUnitDropDown = uidropdown(app.TimestepsPanel);
            app.TimestepUnitDropDown.Items = {'s', 'min', 'h', 'd', 'a'};
            app.TimestepUnitDropDown.Position = [219 132 58 22];
            app.TimestepUnitDropDown.Value = 'd';

            % Create RampupStepsLabel
            app.RampupStepsLabel = uilabel(app.SimulationTab);
            app.RampupStepsLabel.HorizontalAlignment = 'right';
            app.RampupStepsLabel.Position = [619 163 85 22];
            app.RampupStepsLabel.Text = 'Rampup Steps';

            % Create RampupStepsEditField
            app.RampupStepsEditField = uieditfield(app.SimulationTab, 'numeric');
            app.RampupStepsEditField.Limits = [1 Inf];
            app.RampupStepsEditField.Position = [719 163 71 22];
            app.RampupStepsEditField.Value = 1;

            % Create Panel
            app.Panel = uipanel(app.GraphicalTaskBuilderUIFigure);
            app.Panel.AutoResizeChildren = 'off';
            app.Panel.Position = [1 1 1034 51];

            % Create SaveandExitButton
            app.SaveandExitButton = uibutton(app.Panel, 'push');
            app.SaveandExitButton.ButtonPushedFcn = createCallbackFcn(app, @SaveandExitButtonPushed, true);
            app.SaveandExitButton.Position = [680 14 100 22];
            app.SaveandExitButton.Text = 'Save and Exit';

            % Create QuitButton
            app.QuitButton = uibutton(app.Panel, 'push');
            app.QuitButton.ButtonPushedFcn = createCallbackFcn(app, @QuitButtonPushed, true);
            app.QuitButton.Position = [901 14 100 22];
            app.QuitButton.Text = 'Quit';

            % Create InfoLabel
            app.InfoLabel = uilabel(app.Panel);
            app.InfoLabel.HorizontalAlignment = 'center';
            app.InfoLabel.FontSize = 9;
            app.InfoLabel.Position = [6 14 188 22];
            app.InfoLabel.Text = {'Version X.X'; 'Copyright (C) XXXX Author'};

            % Create ResetButton
            app.ResetButton = uibutton(app.Panel, 'push');
            app.ResetButton.Position = [791 14 100 22];
            app.ResetButton.Text = 'Reset';

            % Create Panel_2
            app.Panel_2 = uipanel(app.GraphicalTaskBuilderUIFigure);
            app.Panel_2.AutoResizeChildren = 'off';
            app.Panel_2.Position = [1 51 1034 329];

            % Create ModelPreviewAxes
            app.ModelPreviewAxes = uiaxes(app.Panel_2);
            title(app.ModelPreviewAxes, 'Model Preview')
            xlabel(app.ModelPreviewAxes, 'X')
            ylabel(app.ModelPreviewAxes, 'Y')
            zlabel(app.ModelPreviewAxes, 'Z')
            app.ModelPreviewAxes.Position = [37 21 483 254];

            % Create PreviewCheckBox
            app.PreviewCheckBox = uicheckbox(app.Panel_2);
            app.PreviewCheckBox.ValueChangedFcn = createCallbackFcn(app, @PreviewCheckBoxValueChanged, true);
            app.PreviewCheckBox.Text = 'Live Preview';
            app.PreviewCheckBox.Position = [31 284 90 22];
            app.PreviewCheckBox.Value = true;

            % Create ModelPanel
            app.ModelPanel = uipanel(app.Panel_2);
            app.ModelPanel.AutoResizeChildren = 'off';
            app.ModelPanel.Title = 'Model';
            app.ModelPanel.Position = [576 83 200 192];

            % Create TotalcellsLabel
            app.TotalcellsLabel = uilabel(app.ModelPanel);
            app.TotalcellsLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TotalcellsLabel.HorizontalAlignment = 'right';
            app.TotalcellsLabel.Position = [25 131 58 22];
            app.TotalcellsLabel.Text = 'Total cells';

            % Create TotelCellsEditField
            app.TotelCellsEditField = uieditfield(app.ModelPanel, 'numeric');
            app.TotelCellsEditField.Editable = 'off';
            app.TotelCellsEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TotelCellsEditField.Position = [92 131 71 22];

            % Create GridsizewarningLabel_4
            app.GridsizewarningLabel_4 = uilabel(app.ModelPanel);
            app.GridsizewarningLabel_4.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_4.Position = [61 92 82 22];
            app.GridsizewarningLabel_4.Text = 'Layer enabled';

            % Create LayerEnabledLamp
            app.LayerEnabledLamp = uilamp(app.ModelPanel);
            app.LayerEnabledLamp.Position = [152 96 12 12];
            app.LayerEnabledLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_5
            app.GridsizewarningLabel_5 = uilabel(app.ModelPanel);
            app.GridsizewarningLabel_5.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_5.Position = [73 29 70 22];
            app.GridsizewarningLabel_5.Text = 'Default BCs';

            % Create BCsEnabledLamp
            app.BCsEnabledLamp = uilamp(app.ModelPanel);
            app.BCsEnabledLamp.Position = [152 33 12 12];
            app.BCsEnabledLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_6
            app.GridsizewarningLabel_6 = uilabel(app.ModelPanel);
            app.GridsizewarningLabel_6.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_6.Position = [99 71 44 22];
            app.GridsizewarningLabel_6.Text = 'Gravity';

            % Create GravityEnabledLamp
            app.GravityEnabledLamp = uilamp(app.ModelPanel);
            app.GravityEnabledLamp.Position = [152 75 12 12];
            app.GravityEnabledLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_7
            app.GridsizewarningLabel_7 = uilabel(app.ModelPanel);
            app.GridsizewarningLabel_7.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_7.Position = [112 50 31 22];
            app.GridsizewarningLabel_7.Text = 'EOS';

            % Create EOSEnabledLamp
            app.EOSEnabledLamp = uilamp(app.ModelPanel);
            app.EOSEnabledLamp.Position = [152 54 12 12];
            app.EOSEnabledLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_8
            app.GridsizewarningLabel_8 = uilabel(app.ModelPanel);
            app.GridsizewarningLabel_8.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_8.Position = [47 8 96 22];
            app.GridsizewarningLabel_8.Text = 'Initial Equilibrium';

            % Create InitialEquilibriumEnabledLamp
            app.InitialEquilibriumEnabledLamp = uilamp(app.ModelPanel);
            app.InitialEquilibriumEnabledLamp.Position = [152 12 12 12];
            app.InitialEquilibriumEnabledLamp.Color = [0.8 0.8 0.8];

            % Create WarningsPanel
            app.WarningsPanel = uipanel(app.Panel_2);
            app.WarningsPanel.AutoResizeChildren = 'off';
            app.WarningsPanel.Title = 'Warnings';
            app.WarningsPanel.Position = [800 158 199 117];

            % Create GridsizewarningLabel
            app.GridsizewarningLabel = uilabel(app.WarningsPanel);
            app.GridsizewarningLabel.HorizontalAlignment = 'right';
            app.GridsizewarningLabel.Position = [61 56 98 22];
            app.GridsizewarningLabel.Text = 'Grid size warning';

            % Create GridSizeWarningLamp
            app.GridSizeWarningLamp = uilamp(app.WarningsPanel);
            app.GridSizeWarningLamp.Tooltip = {'Depending on the system building previews and simulating models takes a long time for a large amount of grid cells.'};
            app.GridSizeWarningLamp.Position = [168 60 12 12];
            app.GridSizeWarningLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_2
            app.GridsizewarningLabel_2 = uilabel(app.WarningsPanel);
            app.GridsizewarningLabel_2.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_2.Position = [20 36 139 22];
            app.GridsizewarningLabel_2.Text = 'Overwriting Task warning';

            % Create OverwritingTaskWarningLamp
            app.OverwritingTaskWarningLamp = uilamp(app.WarningsPanel);
            app.OverwritingTaskWarningLamp.Position = [168 40 12 12];
            app.OverwritingTaskWarningLamp.Color = [0.8 0.8 0.8];

            % Create GridsizewarningLabel_9
            app.GridsizewarningLabel_9 = uilabel(app.WarningsPanel);
            app.GridsizewarningLabel_9.HorizontalAlignment = 'right';
            app.GridsizewarningLabel_9.Position = [17 16 142 22];
            app.GridsizewarningLabel_9.Text = 'Removing existing results';

            % Create RemovingResultsWarningLamp
            app.RemovingResultsWarningLamp = uilamp(app.WarningsPanel);
            app.RemovingResultsWarningLamp.Position = [168 20 12 12];
            app.RemovingResultsWarningLamp.Color = [0.8 0.8 0.8];

            % Show the figure after all components are created
            app.GraphicalTaskBuilderUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TaskBuilder_exported(varargin)

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.GraphicalTaskBuilderUIFigure)

                % Execute the startup function
                runStartupFcn(app, @(app)startupFcn(app, varargin{:}))
            else

                % Focus the running singleton app
                figure(runningApp.GraphicalTaskBuilderUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.GraphicalTaskBuilderUIFigure)
        end
    end
end