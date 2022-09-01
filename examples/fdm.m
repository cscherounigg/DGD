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

close all


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                         Parameters                         %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rock Properties
K = 100e-15; % m²
phi = .2;

% Fluid Properties
c_f = 5e-10; % 1/Pa
mu = 1e-3; % Pa*s

% Grid
N = 50;
L = 10e3; %m

% Wells
pos_inj = [5,5];
pos_prod = [N-5,N-5];
p_inj = 180e5; % Pa
p_prod = 60e5; % Pa

% Initial condition
p_ini = 150e5; % Pa

% Time
delta_t = 1500; % s
stop_t = 10*24*3600; % s

% Steady state criteria
max_p_diff = 0.0001e5; % Pa


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                   Vector Initialization                    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cell size
delta_l = L / N;

% Coefficients
alpha = K/(phi*mu*c_f);
beta = alpha*delta_t/(delta_l)^2; 

% Pressure vector
p = ones(N*N,1)*p_ini;

% Sources and sinks
k_inj = transform1D(pos_inj(1), pos_inj(2), N);
k_prod = transform1D(pos_prod(1), pos_prod(2), N);
S = zeros(N*N,1);
S(k_inj) = p_inj;
S(k_prod) = p_prod;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                     Coefficient Matrix                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = zeros(N*N);

% Internal nodes
for j = 2:N-1
    for i = 2:N-1
        k = transform1D(i,j,N);
        if k == k_inj || k == k_prod
            % Constant pressure at wells
            continue
        end
        A(k,k) = 1-4*beta;
        A(k,k-1) = beta;
        A(k,k+1) = beta;
        A(k,k+N) = beta;
        A(k,k-N) = beta;
    end
end

% Left boundary
for j = 2:N-1
    i = 1;
    k = transform1D(i,j,N);
    A(k,k) = 1-11/2*beta;
    A(k,k+1) = 4*beta;
    A(k,k+2) = -beta/2;
    A(k,k+N) = beta;
    A(k,k-N) = beta;
end

% Right boundary
for j = 2:N-1
    i = N;
    k = transform1D(i,j,N);
    A(k,k) = 1-11/2*beta;
    A(k,k-1) = 4*beta;
    A(k,k-2) = -beta/2;
    A(k,k+N) = beta;
    A(k,k-N) = beta;
end

% Lower boundary
j = 1;
for i = 2:N-1
    k = transform1D(i,j,N);
    A(k,k) = 1-11/2*beta;
    A(k,k+1) = beta;
    A(k,k-1) = beta;
    A(k,k+N) = 4*beta;
    A(k,k+2*N) = -beta/2;
end

% Upper boundary
j = N;
for i = 2:N-1
    k = transform1D(i,j,N);
    A(k,k) = 1-11/2*beta;
    A(k,k+1) = beta;
    A(k,k-1) = beta;
    A(k,k-N) = 4*beta;
    A(k,k-2*N) = -beta/2;
end

% Lower left corner
j = 1; i= 1;
k = transform1D(i,j,N);
A(k,k) = 1-7*beta;
A(k,k+1) = 4*beta;
A(k,k+2) = -beta/2;
A(k,k+N) = 4*beta;
A(k,k+2*N) = -beta/2;

% Lower right corner
j = 1; i= N;
k = transform1D(i,j,N);
A(k,k) = 1-7*beta;
A(k,k-1) = 4*beta;
A(k,k-2) = -beta/2;
A(k,k+N) = 4*beta;
A(k,k+2*N) = -beta/2;

% Upper left corner
j = N; i= 1;
k = transform1D(i,j,N);
A(k,k) = 1-7*beta;
A(k,k+1) = 4*beta;
A(k,k+2) = -beta/2;
A(k,k-N) = 4*beta;
A(k,k-2*N) = -beta/2;

% Upper right corner
j = N; i= N;
k = transform1D(i,j,N);
A(k,k) = 1-7*beta;
A(k,k-1) = 4*beta;
A(k,k-2) = -beta/2;
A(k,k-N) = 4*beta;
A(k,k-2*N) = -beta/2;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                   Live Distribution Plot                   %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[gridX, gridY] = meshgrid(1:N,1:N);
surf_plot = surf(gridX,gridY,transformProperty2D(p*1e-5,N));
colormap("jet")
c = colorbar("eastoutside");
c.Label.String = "Pressure [bara]";
axis equal tight
xlabel('Nodes in x direction')
ylabel('Nodes in y direction')
view(2)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                      Simulation Loop                       %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
steps = round(stop_t/delta_t);

for step = 1:steps
    p_old = p;
    p = A*p+S;
    
    % Plot
    title(sprintf('Pressure Distribution\nt = %i day(s)', ...
        round(step*delta_t/3600/24)))
    surf_plot.ZData = transformProperty2D(p*1e-5,N);
    set(gcf, 'Position', [100 100 400 300])
    set(gcf, 'color', 'w')
    
    if abs(p_old - p) < max_p_diff
        % Steady state reached
        break
    end
    pause(.00001) % Update plot
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%        Plot of Profile along Diagonal through Wells        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p_diag = getValuesDiag(p*1e-5, N);

figure
plot(1:size(p_diag), p_diag', '-o', 'Color', 'red', ...
    'LineWidth', 1.3, 'MarkerSize', 3, 'MarkerFaceColor', 'red');
title(sprintf('Pressure Profile\nt = %i day(s)', ...
    round(step*delta_t/3600/24)))
xlabel('Nodes along diagonal')
ylabel('Pressure [bara]')
ylim([0 p_inj*1e-5+20])
xlim([0 N+1])
grid on
grid minor


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                         Functions                          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function k = transform1D(i, j, N)
% Transform (i,j) indices to k-index
    k = i + (j-1) * N;
end

function result = transformProperty2D(prop, N)
% Transform a property given in a k-indexed vector back to an 
% (i,j) matrix
    result = zeros(N);
    for j=1:N
        for i=1:N
            k = transform1D(i,j,N);
            result(i,j) = prop(k);
        end
    end
end

function result = getValuesDiag(prop, N)
% Get values of a property along the diagonal axis of the grid
    prop_2D = transformProperty2D(prop, N);
    result = diag(prop_2D);
end