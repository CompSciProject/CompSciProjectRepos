function sol = FullRK2(t_0,t_fin,y_0,f,N)
% FULLRK2  solver of IVPs by applying 2nd order Runge-Kutta method 
%    Input 
%            - t_0        initial time
%            - t_fin      final time/value of independent variable
%            - y_0        initial value
%            - f          functional form of derivative
%            - N          number of steps to take
%    Output
%            - sol        solution array 

    h=(t_fin-t_0)/N;
    times=t_0:h:t_fin; %define vector of time
    solutions=nan(1,N+1); %define blank vector in which to place solutions
    solutions(1,1) = y_0;
    
    for i=1:N
        solutions(i+1) = StepRK2(solutions(i), t_0+(i-1)*h,h,f);
    end
 
    sol = [solutions'];
    plot(times,solutions,'bo-')
    shg
end