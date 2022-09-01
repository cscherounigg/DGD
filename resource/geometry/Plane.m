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

classdef Plane
    %PLANE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        normal
        point
    end
    
    methods
        function plane = Plane(normal, point)
            %PLANE Construct an instance of GridWrapper
            %   Detailed explanation goes here
            arguments
                normal
                point
            end
            plane.normal = normal/norm(normal);
            plane.point = point;
        end
        
        function plane = rotate(plane, angleX, angleY, angleZ)
            %ROTATE Rotate around axis x and y through the generating
            %point.

            arguments
                plane
                angleX = 0
                angleY = 0
                angleZ = 0
            end
            
            rotX = [ 1  0            0
                     0  cos(angleX)   sin(angleX)
                     0  -sin(angleX)  cos(angleX) ];
            rotY = [ cos(angleY)  0  -sin(angleY)
                     0            1  0
                     sin(angleY)  0  cos(angleY)];
            rotZ = [ cos(angleZ)  sin(angleZ)  0
                    -sin(angleZ)  cos(angleZ)  0
                    0             0            1];
            plane.normal = round(plane.normal*rotX*rotY*rotZ, 10); % Round to 10 digits to avoid numeric problems for edge cases;
        end

        function [p, dir] = intersect(plane1, plane2)
            %INTERSECT Intersect the plane with another plane and return
            %parameters for the line of intersection. Returns zero vector
            %if planes are identical or parallel.
            arguments
                plane1 Plane
                plane2 Plane
            end
            
            % Calculate line direction
            dir = cross(plane1.normal, plane2.normal);
            if dir == 0
                p = zeros(1, 3);
                return
            end
            
            % Calculate arbitrary point on line (the point has to satisfy
            % the equations of both planes.
            dir = dir/norm(dir);
            b = [plane1.normal*plane1.point'
                 plane2.normal*plane2.point'];
            if abs(abs(dir(2)) - 1) < realmin
                % Line of intersection parallel to y; set y=0
                A = [plane1.normal(1) plane1.normal(3)
                     plane2.normal(1) plane2.normal(3)];
                p = A\b;
                p = [p(1) 0 p(2)];
                return
            end
                
            A = [plane1.normal(2) plane1.normal(3)
                 plane2.normal(2) plane2.normal(3)];
            p = A\b;
            p = [0; p]';
        
        end

        function result = isPlanePoint(plane, point, error)
            arguments
                plane
                point
                error = realmin
            end
            e = plane.normal*(point-plane.point)';
            result = abs(e) < error;
        end

        function distance = distanceFromPlane(plane, point)
            arguments
                plane
                point
            end
            a = abs(plane.normal*(point-plane.point)');
            b = norm(plane.normal);
            distance = a/b;
        end

        function d = getConstant(plane)
            d = -plane.normal*plane.point';
        end

        function p = nearestPoint(plane, point)
            % NEARESTPOINT Get nearest point of plane to a given point
            %   Returns the point of a plane, with minimal distance to a
            %   given point.
            % 
            %   ARGUMENTS
            %    point    ->  A point given by its positional vector 
            %                 [x y z] in the coordinate system.
            %   RETURNS
            %    p        ->  The nearst point on the plane.

            a = plane.normal(1);
            b = plane.normal(2);
            c = plane.normal(3);
            d = plane.getConstant();

            x = point(1);
            y = point(2);
            z = point(3);

            k = (a*x + b*y + c*z + d)/(norm(plane.normal));
            p = point - k*plane.normal;
        end

        function layerCells = getLayerCellsInGrid(plane, grid, thickness)

            arguments
                plane Plane
                grid GridWrapper
                thickness
            end
                layerCells = zeros(grid.G.cells.num, 1);
                for i = 1:thickness
                    p = plane.point + i*plane.normal; % Calculate point of next plane.
                    layerCells = layerCells | grid.getCellsIntersectingPlane(Plane(plane.normal, p));
                end        
        end
    end
end

