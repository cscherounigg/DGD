axis tight
c = colorbar('southoutside');
c.Label.String = "Temperature [K]";
xlabel("x [m]")
ylabel("y [m]")
zlabel("Depth [m]")
set(gca, 'Position', [.2 .4 .5 .5])
colormap(turbo)
set(gcf,'renderer','Painters')
view(-20,10)