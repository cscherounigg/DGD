close all

data = {};
for i = 1:size(timestepsGlob, 1)
    runData = wellsGlob(i,:);
    producerTemp = [];
    for j=1:size(runData,2)
        wells = runData{j};
        producer = wells(2);
        producerTemp = [producerTemp; producer.T];
    end
    data{i} = [timestepsGlob(i,:)', producerTemp];
end

plotSuccession = [1 2 3 4 8 7 6 5];
labels = {'d = 340 m (flow in positive x)', ...
        'd = 1010 m (flow in positive x)', ...
        'd = 1680 m (flow in positive x)', ...
        'd = 2350 m (flow in negative x)', ...
        'd = 2350 m (flow in negative x)', ...
        'd = 1680 m (flow in negative x)', ...
        'd = 1010 m (flow in negative x)', ...
        'd = 340 m (flow in negative x)'};

figure
%colors = {'#008B8B', '#0000FF', '#CD5C5C', '#FF0000', '#800800', '#FFA500', '#4B0082', '#FF00FF'};
colors = {'#0000A0', '#0000FF', '#4876FF', '#87CEFA','#800000', '#DC143C', '#FF6347', '#FFA07A'};
colororder(colors)
set(gcf,'renderer','Painters')
set(gcf, 'Position', [100 100 600 500])
set(gcf, 'color', 'w')
title('Temperature Producer')
xlabel('Time [days]')
ylabel('Temperature [K]')
%ylim([40 (200+20)])
%xlim([0 50+1])
grid on
grid minor
hold on
lineWidth = 1.2;

legendEntries = {};
for i = plotSuccession
    runData = data{i};
    runData(:,1) = runData(:,1) / day;
    plot(runData(:,1), runData(:,2), 'LineWidth', lineWidth);
    legendEntries = {legendEntries{:}, labels{i}};
end
hold off
leg = legend(legendEntries, ...
        'Location', 'southoutside', ...
        NumColumns=2);

