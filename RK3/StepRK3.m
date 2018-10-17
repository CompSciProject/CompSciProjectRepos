function [y_new] = StepRK3(y_curr,t_curr,dt,func)
% STEPRK3   RK3 method by one time step
%    Input
%       - y_curr   current value for the solution
%       - dt       time step size
%       - t_curr   current time value
%       - func     expression for the first derivative
%    Output
%       - y_new    next solution point

         K1 = dt*func(t_curr,y_curr);
         K2 = dt*func(t_curr+dt/2,y_curr+K1/2);
         K3 = dt*func(t_curr+dt,y_curr-K1+2*K2);
         y_new = y_curr + (K1 + 4*K2 + K3)/6; 
end