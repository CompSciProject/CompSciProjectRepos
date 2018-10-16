% Execute Predictor-Corrector

% Add Explicit Euler 1-step iteration function to path -
% Predictor-Corrector uses it
addpath('../../ExEul/code/')

func = @(t, y) sin(y)*sin(t);
y0 = 0;
t_fin = 10;
N = 10;
fullPredCorr(y0, func, t_fin, N)
