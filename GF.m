vi = [0; 0; deg2rad(1); 0];

[t , x] = ode45(@EDP, [0 10] , vi);

figure('Position', [50, 50, 600, 500]);

% pendulo
subplot(4, 1, 1);
plot(t, rad2deg(x(:, 3)), 'y', 'LineWidth', 3.0);
xlabel('Tiempo(s)');
ylabel('(\alpha)');
title('Angulo del pendulo');
grid on;

% v. pendulo
subplot(4, 1, 2);
plot(t, rad2deg(x(:, 4)), 'm', 'LineWidth', 3.0);
xlabel('Tiempo (s)');
ylabel('V. Angular(°s)');
title('Velocidad Angular del pendulo');
grid on;

% p.carro
subplot(4, 1, 3);
plot(t, x(:, 1), 'r', 'LineWidth', 3.0);
xlabel('Tiempo (s)');
ylabel('Posicion (m)');
title('Posicion del carro');
grid on;

% v. carro
subplot(4, 1, 4);
plot(t, x(:, 2), 'g', 'LineWidth', 3.0);
xlabel('Tiempo (s)');
ylabel('Velocidad (m/s)');
title('Velocidad del carro');
grid on;
