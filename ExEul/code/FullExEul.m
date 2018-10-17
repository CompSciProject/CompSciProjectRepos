%FULLEXEUL
%Solves the problem via Explicit Euler method
%
%Inputs:
%       -t_0           initial time
%       -y_0:          initial value
%       -f:            functional form of derivative
%       -t_fin:        final time/value of  independent variable
%       -N:            number of steps to take
%
%Outputs:
%       -sol:          solution array
function output=FullExEul(t_0,t_fin,y_0,f,N)

    h=(t_fin-t_0)/N;
    times=0:h:t_fin; %define vector of time
    sol=nan(1,N+1).'; %define blank vector in which to place solutions
    sol(1,1) = y_0; %define starting position
    for ii=1:N
                                    
        func_value = f(t_0+ii*h, sol(ii)); %calculates the gradient function value to input to step
        sol(ii+1) = StepExEul(sol(ii), h, func_value); %carries out the one step chnage for explicit euler
    end
    output = sol;
end
