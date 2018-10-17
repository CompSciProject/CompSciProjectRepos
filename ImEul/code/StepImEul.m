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
    
    % Defines a new function F(x) which mimicks the right-hand side of the
    % IVP when adopting Implcit Euler:
    
    % y_{i+1} = y_{i} + dt*f(t_{i+1},y_{i+1})
    % and then the equation is y_{i+1} = F(y_i+1)
    % where F(x) = y_{i} + dt*f(t_{i+1},x)
    
    y_new = F(y_curr);
    
    % Computes a first new estimate of the solution using fixed-point
    % iteration

    while abs(y_new-y_curr) > 1e-8
        y_curr = y_new;
        y_new = F(y_curr);
        
    % Repeats fixed-point iteration once the difference between successive
    % estimates of the solution becomes sufficiently small (1e-8 is
    % arbitrary)    
    end
end
