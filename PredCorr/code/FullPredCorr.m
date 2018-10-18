% Full Predictor-Corrector solution
%
% Inputs:
%	- t_0:		initial time value
% 	- t_fin:	final time/value of independent variable
% 	- y_0:		initial value
% 	- f:		functional form of derivative
%	- N:		number of steps to take
%
% Output:
%	- sol: 		solution array

function [time,sol] = completePredCorr(t_0, t_fin, y_0, f, N)
    
    time = linspace(t_0,t_fin,N+1).';  % Creates set of t-values
    sol = nan(1,N+1).';  % Defines space of values for solution
    sol(1) = [y_0];      % Sets first value of solution vector to be initial condition
    
    dt = (t_fin-t_0)/N;
    for i = 1:N
        sol(i+1) = StepPredCorr(sol(i), dt, time(i+1), f);
    end
end
