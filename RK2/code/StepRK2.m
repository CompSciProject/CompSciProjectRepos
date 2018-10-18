function [y_new] = StepRK2(y_curr,t_curr,dt,func)
% STEPRK2   RK2 method by one time step
%    Input
%       - y_curr   current value for the solution
%       - dt       time step size
%       - t_curr   current time value
%       - func     expression for the first derivative
%    Output
%       - y_new    next solution point

         K1 = func(t_curr,y_curr);
         K2 = func(t_curr+dt,y_curr+dt*K1);
         y_new = y_curr + dt/2*(K1 + K2); 
end