%STEPEXEUL
%Advances Explicit Euler mwthod by one step
%
%Inputs:
%       -y_curr:       current value for the solution
%       -dt:           time step size
%       -t_curr:       current time value
%       -func:         expression for the first derivative
%
%Outputs:
%       -y_new:        next solution point
function y_new = StepExEul(y_curr, dt, func_value);
         y_new = y_curr + dt*func_value;
end