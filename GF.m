z0 = [0; 0; deg2rad(1); 0];

[t , x] = ode45(@EDP, [0 10] , z0);

figure (1)
plot(t , x);
