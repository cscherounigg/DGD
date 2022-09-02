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