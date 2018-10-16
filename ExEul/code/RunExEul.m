number_of_iterations=10;
final_time=10;
func=@(time_value,y_value) sin(y_value)*sin(time_value);
initial_position=1;

FullExEul(final_time,initial_position,func, number_of_iterations)