% Execute Implicit-Euler

func = @(t,y) -y;
y0 = 0.1;
t_fin = 10;
N = 100;
FullImEul(y0, func, t_fin, N)