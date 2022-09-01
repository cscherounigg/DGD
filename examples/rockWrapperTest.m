G = GridWrapper(cells=[5 5 5], dims=[1 1 1]);
poro = .2;
perm = 10*milli*darcy;

rock = RockWrapper(G);
rock = rock.setPorosity(.2);
rock = rock.setGaussianPorosity(.1, .5, 3);