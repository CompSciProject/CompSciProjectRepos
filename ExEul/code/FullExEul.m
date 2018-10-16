
function output=FullExEul(final_time,initial_position,func, number_of_iterations)

    h=final_time/number_of_iterations;
    times=0:h:final_time; %define vector of time
    solutions=nan(1,number_of_iterations); %define blank vector in which to place solutions
    solutions(1,1) = initial_position;
    for ii=1:number_of_iterations

        func_value = func(ii*h, solutions(ii));
        solutions(ii+1) = StepExEul(solutions(ii), h, func_value);
    end
    output = [times ; solutions];
end
