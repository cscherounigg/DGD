axis tight
c = colorbar('southoutside');
c.Label.String = "Pressure [Pa]";
xlabel("x [m]")
ylabel("y [m]")
zlabel("Depth [m]")
set(gca, 'Position', [.2 .4 .5 .5])
colormap(flipud(pink))
set(gcf,'renderer','Painters')