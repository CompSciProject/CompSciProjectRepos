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

function sol = completePredCorr(t_0, t_fin, y_0, f, N)

    sol = [y_0];
    dt = (t_fin-t_0)/N;
    for i = 1:N
        sol(i+1) = StepPredCorr(sol(i), dt, t_0 + i*dt, f);
    end

end
