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

