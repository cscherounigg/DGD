function fig = plotAnimatedReservoir(task, states, wellLabelHeight)
%PLOTANIMATEDRESERVOIR Summary of this function goes here
%   Detailed explanation goes here
arguments
    task Task
    states % Either supplied directly or as ResultHandler
    wellLabelHeight = 0.4 * task.params.grid.global.size(3);
end
figure
handle = plotToolbar(task.model.grid.G, states);
fig = gcf;
ax = gca;
view(3);
colorbar('southoutside');

plotWell(task.model.grid.G, task.model.wells.wells, 'height', wellLabelHeight);
set(fig, 'Position', [300 100 900 800]);
set(ax, 'Color', 'none');
set(fig, "Name", "MRST Reservoir Analyzer", "NumberTitle", "off");

end

