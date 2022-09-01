% Pressure matrix p has to be provided

close all

lineWidth = 1;
markerSize = 2;

figure
colors = {'#FFA07A', '#FA8072', '#FF6347', '#DC143C', '#A52A2A', '#800000'};
colororder(colors)
set(gcf,'renderer','Painters')
set(gcf, 'Position', [100 100 400 300])
set(gcf, 'color', 'w')
plot(1:size(p_plot,1), p_plot(:,1)', '-o', 'LineWidth', lineWidth, 'MarkerSize', markerSize, 'MarkerFaceColor', '#FFA07A');
title('Pressure Profile')
xlabel('Nodes along diagonal')
ylabel('Pressure [bara]')
ylim([40 (200+20)])
xlim([0 50+1])
grid on
grid minor
hold on
for i = 2:6
    plt = plot(1:size(p_plot,1), p_plot(:,i)', '-o', 'LineWidth', lineWidth, 'MarkerSize', markerSize);
    set(plt, 'MarkerFaceColor', get(plt, 'Color'))
end
hold off
legend({'t = 1 day', 't = 10 days', 't = 30 days', 't = 60 days', 't = 120 days', 't = 240 days'}, 'Location', 'southwest')