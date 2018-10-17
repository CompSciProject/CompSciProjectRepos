%Execute Explicit Euler

func = @(t,y) -y;
y0 = 0.1;
t_fin = 10;
N = 100;

FullExEul(final_time,initial_position,func, number_of_iterations)