
function [times, solutions]=euler_explicit(final_time,initial_position,func, number_of_iterations);

    h=final_time/number_of_iterations;
    times=0:h:final_time; %define vector of time
    solutions=nan(1,number_of_iterations); %define blank vector in which to place solutions

    for ii=1:number_of_iterations

        func_value = func(ii*h, solutions(ii));
        solutions(ii+1) = iterate_by_one(solutions(ii), h, func_value);

    end
end
