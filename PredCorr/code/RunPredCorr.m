% Execute Predictor-Corrector

% Add Explicit Euler 1-step iteration function to path -
% Predictor-Corrector uses it
addpath('../../ExEul/code/')

func = @(t, y) -y;
y0 = 0.1;
t_fin = 10;
N = 100;
FullPredCorr(y0, func, t_fin, N)
