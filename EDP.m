function dz = EDP(t,z)

%----- Definicion de los parametros -----%

Ip = 0.0079; %pendulo
Mc = 0.7031; %masa
Lp = 0.3302; %distancia pivote
Mp = 0.23; %pendulo masa
Fc = 0; %fuerza
Beq = 4.3; %viscosidad
g = 9.81; %gravedad
Bp = 0.0024; %viscosidad pendulo

%--------------------%
dz = zeros(4,1);


%----- Dinamica del sistema -----%

alpha = z(3);

div = (Mc + Mp)*Ip + (Mc*Mp*Lp^2) + (Mp^2*Lp^2*sin(alpha)^2);

dz(1) = z(2);
dz(2) = (((Ip+Mp*Lp^2) * Fc + Mp^2 * Lp^2 * g * cos(alpha) * sin(alpha) - (Ip + Mp*Lp^2)*Beq * z(2) - (Ip * Mp * Lp - Mp^2*Lp^3)*z(4)^2*sin(alpha) - Mp * Lp * z(4) * cos(alpha) * Bp)/ div);
dz(3) = z(4);
dz(4) = (((Mc + Mp)*Mp*g*Lp*sin(alpha) - (Mc + Mp)*Bp * z(4) + (Fc*Mp*Lp*cos(alpha)) - Mp^2 * Lp^2 * z(4)^2 * sin(alpha) * cos(alpha) - Beq*Mp*Lp*z(2)*cos(alpha))/ div);



