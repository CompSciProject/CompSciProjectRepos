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
%       -time:	       returns vector of values of time
%       -sol:          solution array
%
function [time,sol] =FullExEul(t_0,t_fin,y_0,f,N)

    h=(t_fin-t_0)/N;
    time=0:h:t_fin.';   %define vector of time
    sol=nan(1,N+1).'; %define blank vector in which to place solutions
    sol(1,1) = y_0; %define starting position
    for ii=1:N
        func_value = f(time(ii), sol(ii));
        sol(ii+1) = StepExEul(sol(ii), time(ii), func_value);
    end
end
