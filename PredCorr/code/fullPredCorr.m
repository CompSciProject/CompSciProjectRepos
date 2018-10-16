% Full Predictor-Corrector solution
%
% Inputs:
% 	- y_0:		initial value
% 	- f:		functional form of derivative
% 	- t_fin:	final time/value of independent variable
%	- N:		number of steps to take
%
% Output:
%	- sol: 		solution array

function sol = completePredCorr(y_0, f, t_fin, N)

    sol = [y_0];
    dt = t_fin/N;
    for i = 1:N
        sol(i+1) = stepPredCorr(sol(i), dt, i*dt, f);
    end

end
