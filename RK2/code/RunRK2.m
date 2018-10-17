number_of_iterations=100;
final_time=10;
func=@(time_value,y_value) sin(y_value)+cos(time_value);
initial_position=1;
FullRK2(final_time,initial_position,func, number_of_iterations)
