% Execute Implicit-Euler

func = @(t,y) -y;       
y0 = 0.1;
t_fin = 10;
N = 100;
[T,Y] = FullImEul(0, t_fin, y0, func, N);

% Solves the IVP dy/dt = f(t,y) on [0,10] with f(t,y) = -y, given that 
% y(0) = 0.1 