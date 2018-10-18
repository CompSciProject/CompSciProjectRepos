number_of_iterations=100;
initial_time = 1;
final_time=10;
func=@(time_value,y_value) sin(y_value)+cos(time_value);
initial_position=1;
FullRK3(initial_time,final_time,initial_position,func, number_of_iterations)
