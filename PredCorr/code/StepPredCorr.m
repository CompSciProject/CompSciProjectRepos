% Advances Predictor-Corrector method by one time step
%
% Inputs:
% 	- y_curr:	current value for the solution
% 	- dt:		time step size
% 	- t_curr:	current time value
% 	- func:		expression for the first derivative
%
% Output:
%	- y_new:	next solution point

function y_new = PredCorr(y_curr, dt, t_curr, func)

    grad = func(t_curr, y_curr);
    y_est = StepExEul(y_curr, dt, grad);
    grad = (grad + func(t_curr + dt, y_est))/2;
    y_new = StepExEul(y_curr, dt, grad);

end
