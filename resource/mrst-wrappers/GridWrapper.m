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

classdef GridWrapper
    %GRIDWRAPPER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        G struct
        dims
        cartCentroids
    end
    
    methods
        function grid = GridWrapper(varargs)
            %GRIDWRAPPER Construct an instance of GridWrapper
            %   Detailed explanation goes here
            arguments
                varargs.dims
                varargs.size
                varargs.depth = 0
            end
            
            grid.G = cartGrid(varargs.dims, varargs.size);
            grid.G.nodes.coords(:,3) = grid.G.nodes.coords(:,3) + varargs.depth; % Set depth of uppermost layer
            grid.dims = varargs.dims;
        end
        
        function plot(grid, ax)
            %PLOT Plot the grid on an existing axes using MRST's plotGrid
            %method

            arguments
                grid GridWrapper
                ax
            end
            cla(ax, 'reset') % Clear axes
            
            plotGrid(grid.G, 'Parent', ax, 'FaceColor', 'none', 'EdgeAlpha', .1)
            view(ax ,3)
            axis(ax, 'tight')
            xlabel(ax, "x [m]")
            ylabel(ax, "y [m]")
            zlabel(ax, "Depth [m]")
            view(ax,-20,10)
            close(gcf) % plotGrid produces a new empty figure (bug in MRST's plotPatches function). Close this figure. @TODO: Remove this workaround.
        end

        function plotWithHighlightedCells(grid, cells, ax, cellColor, plotGrid)
            % cells -> vector of 1 if cell should be highlighted and 0 else
            arguments
                grid GridWrapper
                cells
                ax
                cellColor = [0 .5 .5]
                plotGrid = true
            end
            if plotGrid
                grid.plot(ax);
            end
            
            extractedCells = grid.G.cells.indexMap(logical(cells));
            cells = double(cells);
            plotCellData(grid.G, cells, extractedCells, 'Parent', ax); % @TODO: Use plotFaces() instead.
            close(gcf) % plotGrid produces a new empty figure (bug in MRST's plotPatches function). Close this figure. @TODO: Remove this workaround.
        end

        function plotRockData(grid, rockW, ax, plotGrid, varNamedArgs)
            arguments
                grid GridWrapper
                rockW RockWrapper
                ax
                plotGrid = true
                varNamedArgs.highlightedCells = []
                varNamedArgs.variable = 'porosity'
            end
            if plotGrid
                grid.plot(ax);
            end
            switch varNamedArgs.variable

                case 'porosity'
                    if isempty(varNamedArgs.highlightedCells)
                        plotCellData(grid.G, rockW.rock.poro, 'Parent', ax)
                    else
                        plotCellData(grid.G, rockW.rock.poro, varNamedArgs.highlightedCells, 'Parent', ax)
                    end
                    cb = colorbar(ax, 'eastoutside');
                    lims = clim(ax);
                    if lims(1) < 0
                        % Porosity must not be negative
                        lims(1) = 0;
                    end
                    if lims(2) > 1
                        % Highest possible porosity is 1
                        lims(2) = 1;
                    end
                    clim(ax, [lims(1) lims(2)]); 
                    colormap(ax, summer);

                case 'permeability'
                    if isempty(varNamedArgs.highlightedCells)
                        plotCellData(grid.G, convertTo(rockW.rock.perm, milli*darcy), 'Parent', ax)
                    else
                        plotCellData(grid.G, convertTo(rockW.rock.perm, milli*darcy), varNamedArgs.highlightedCells, 'Parent', ax)
                    end
                    c = colorbar(ax, 'eastoutside');
                    c.Label.String = 'mD';
                    colormap(ax, flipud(parula));

                case 'density'
                    if isempty(varNamedArgs.highlightedCells)
                        plotCellData(grid.G, convertTo(rockW.rock.rhoR, gram/(centi*meter)^3), 'Parent', ax)
                    else
                        plotCellData(grid.G, convertTo(rockW.rock.rhoR, gram/(centi*meter)^3), varNamedArgs.highlightedCells, 'Parent', ax)
                    end
                    c = colorbar(ax, 'eastoutside');
                    c.Label.String = 'g/cm³';
                    colormap(ax, cool);

                case 'thermConductivity'
                    if isempty(varNamedArgs.highlightedCells)
                        plotCellData(grid.G, rockW.rock.lambdaR, 'Parent', ax)
                    else
                        plotCellData(grid.G, rockW.rock.lambdaR, varNamedArgs.highlightedCells, 'Parent', ax)
                    end
                    c = colorbar(ax, 'eastoutside');
                    c.Label.String = 'W/mK';
                    colormap(ax, flipud(hot));

                case 'heatCapacity'
                    if isempty(varNamedArgs.highlightedCells)
                        plotCellData(grid.G, rockW.rock.CpR, 'Parent', ax)
                    else
                        plotCellData(grid.G, rockW.rock.CpR, varNamedArgs.highlightedCells, 'Parent', ax)
                    end
                    c = colorbar(ax, 'eastoutside');
                    c.Label.String = 'J/kgK';
                    colormap(ax, flipud(spring));

                otherwise
                    error('Unrecognized variable "%s".', varNamedArgs.variable);
            end
            close(gcf) % plotGrid produces a new empty figure (bug in MRST's plotPatches function). Close this figure. @TODO: Remove this workaround.
        end

        function plotWells(grid, wellW, ax, varNamedArgs)
            arguments
                grid GridWrapper
                wellW WellsWrapper
                ax
                varNamedArgs.plotGrid = true
                varNamedArgs.labelHeight = 5
            end
            if varNamedArgs.plotGrid
                grid.plot(ax);
            end
            axes(ax)
            for i = 1:size(wellW.wells, 1)
                plotWell2(grid.G, wellW.wells(i), 'radius', 1, 'height', varNamedArgs.labelHeight, 'color', wellW.plotColors(i), 'Parent', ax);
            end

            close(gcf) % plotWell produces a new empty figure (bug in MRST's plotPatches function). Close this figure. @TODO: Remove this workaround.
        
        end

        function plotFaces(grid, ax, faces, color, varNamedArgs)
            arguments
                grid GridWrapper
                ax
                faces
                color = 'b';
                varNamedArgs.plotGrid = true;
                varNamedArgs.alpha = 0;
            end
            if varNamedArgs.plotGrid
                grid.plot(ax)
            end
            plotFaces(grid.G, faces, color, 'Parent', ax);
            alpha(ax, varNamedArgs.alpha);

            close(gcf) % plotFaces produces a new empty figure (bug in MRST's plotPatches function). Close this figure. @TODO: Remove this workaround.

        end

        function plotBCs(grid, ax, bc, varNamedArgs)
            arguments
                grid GridWrapper
                ax
                bc BCWrapper
                varNamedArgs.plotGrid = true;
                varNamedArgs.pressureColor = [.5 .7 .2];
                varNamedArgs.fluxColor = [0 .4 .7];
                varNamedArgs.alpha = .35;
            end

            if varNamedArgs.plotGrid
                grid.plot(ax);
            end

            grid.plotFaces(ax, bc.BC.face(strcmp(bc.BC.type, 'pressure')), varNamedArgs.pressureColor, plotGrid=varNamedArgs.plotGrid, alpha=varNamedArgs.alpha);
            grid.plotFaces(ax, bc.BC.face(strcmp(bc.BC.type, 'flux')), varNamedArgs.fluxColor, plotGrid=varNamedArgs.plotGrid, alpha=varNamedArgs.alpha);


        end

        function plotThermalBCs(grid, ax, bc, varNamedArgs)
            arguments
                grid GridWrapper
                ax
                bc BCWrapper
                varNamedArgs.plotGrid = true;
                varNamedArgs.temperatureColor = [.6 .1 .2];
                varNamedArgs.heatFluxColor = [.5 .2 .6];
                varNamedArgs.alpha = .35;
            end

            if varNamedArgs.plotGrid
                grid.plot(ax);
            end

            grid.plotFaces(ax, bc.BC.face(~isnan(bc.BC.T)), varNamedArgs.temperatureColor, plotGrid=varNamedArgs.plotGrid, alpha=varNamedArgs.alpha);
            grid.plotFaces(ax, bc.BC.face(~isnan(bc.BC.Hflux)), varNamedArgs.heatFluxColor, plotGrid=varNamedArgs.plotGrid, alpha=varNamedArgs.alpha);
        end

        function number = getTotalNumberOfCells(grid)
            number = grid.G.cells.num;
        end

        function cells = getCellsIntersectingPlane(grid, plane)
            arguments
                grid GridWrapper
                plane Plane
            end
            cells = zeros(size(grid.cartCentroids, 1), 1);
            for i = 1:size(grid.cartCentroids, 1)
                centroid = grid.cartCentroids(i,:);
                distFromCentroid = plane.distanceFromPlane(centroid);
                
                % Shortcut if plane is definitely not inside centroid
                % (i.e. if the distance to the plane is greater than
                % the largest distance to one of the cube's edges).
                if distFromCentroid > sqrt(3)/2
                    continue
                end
                
                % Calculate point on plane closest to centroid
                p = plane.nearestPoint(centroid);           

                if abs(p(1) - centroid(1)) > 0.5 || ...
                   abs(p(2) - centroid(2)) > 0.5 || ...
                   abs(p(3) - centroid(3)) > 0.5
                    % Point outside cell
                    continue
                end

                cells(i) = 1;
            end
        end

        function grid = computeGeometry(grid)
            
            grid.G = computeGeometry(grid.G);

            % Calculate centroids of cells on unit grid
            unitG = cartGrid(grid.dims);
            unitG = computeGeometry(unitG);
            grid.cartCentroids = unitG.cells.centroids;
        end
    end
end

