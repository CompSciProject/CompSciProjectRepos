% Advances Predictor-Corrector method by one time step

function y_new = PredCorr(y_curr, dt, t_curr, func)

    grad = func(t_curr, y_curr);
    y_est = stepExEul(y_curr, dt, grad);
    grad = (grad + func(t_curr + dt, y_est))/2;
    y_new = stepExEul(y_curr, dt, grad);

end
