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

function profilePlot(resultHandler, p_plot)
%PROFILE Summary of this function goes here
%   Detailed explanation goes here
    data = resultHandler.data;
    dataStruct = [data{:}];
    pressure = [dataStruct(:).pressure] / 1e5;
    pressure = pressure(:,end);

    diagIndices = sub2ind([50 50], 1:50, 1:50);
    diagPressures = pressure(diagIndices);
    
    lineWidth = 1;
    markerSize = 2;
    
    figure
    
    colors = {'#45ba48', '#0000FF', '#FF6347', '#DC143C', '#A52A2A', '#800000'};
    colororder(colors)

    set(gcf,'renderer','Painters')
    set(gcf, 'Position', [100 100 400 300])
    set(gcf, 'color', 'w')
    plot(1:size(p_plot,1), p_plot(:,6)', '-o', 'LineWidth', lineWidth, 'MarkerSize', markerSize, 'MarkerFaceColor', '#45ba48');
    title('Pressure Profile (t = 120 days)')
    xlabel('Cells/Nodes along diagonal')
    ylabel('Pressure [bara]')
    ylim([40 (200+20)])
    xlim([0 50+1])
    grid on
    grid minor

    hold on
    plot(diagPressures, '-o', 'LineWidth', lineWidth, 'MarkerSize', markerSize, 'MarkerFaceColor', '#0000FF');
    hold off
    
    legend({'Simple FDM', 'DeepGeoDoublet'}, 'Location', 'southwest')

end

