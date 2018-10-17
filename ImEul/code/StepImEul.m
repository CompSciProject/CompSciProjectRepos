% Advances Implcit Euler method by one time step
%
% Inputs:
%      - y_curr:    current time for the solution
%      - dt:        time step size
%      - t_curr:    current time value
%      - func:      expression for the first derivative
%
% Output:
%      - y_new:     next solution point

function y_new = StepImEul(y_curr,dt,t_curr,func)

    F = @(x) y_curr + dt*func(t_curr+dt,x);
    %y_new = y_curr;
    y_new = F(y_curr);

    while abs(y_new-y_curr) > 1e-8
        y_curr = y_new;
        y_new = F(y_curr);
    end
end
