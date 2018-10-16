% Full Predictor-Corrector solution
function sol = completePredCorr(y_0, f, t_fin, N)

    sol = [y_0];
    dt = t_fin/N;
    for i = 1:N
        sol(i+1) = stepPredCorr(sol(i), dt, i*dt, f);
    end

end