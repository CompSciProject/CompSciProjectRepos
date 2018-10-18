% Full Implicit Euler solution
%
% Inputs:
%      - t_0        initial value of t
%      - y_0:       initial value of y
%      - f:         functional form of derivative
%      - t_fin:     final time/value of independent variable
%      - N:         number of steps to take
%
% Output:
%      - time:      vector of values of t
%      - sol:       solution array

function [time,sol] = FullImEul(t_0,t_fin,y_0, f,N)

    time = linspace(t_0,t_fin,N+1).';  % Creates set of t-values
    sol = nan(1,N+1).';  % Defines space of values for solution
    sol(1) = [y_0];      % Sets first value of solution vector to be initial condition
     
    dt = (t_fin-t_0)/N;  % Calculates one time step
    for i = 1:N
        sol(i+1) = StepImEul(sol(i),dt,time(i+1),f);
        
    % Runs the Implcit Euler scheme in full by calling StepImEul.m
    % and repeating this for the number of steps required from the inputs
    end 
end