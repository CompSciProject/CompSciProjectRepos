% Execute Predictor-Corrector

% Add Explicit Euler 1-step iteration function to path -
% Predictor-Corrector uses it
addpath('../../ExEul/code/')

func = @(t, y) sin(y)*sin(t);
fullPredCorr(0, func, 10, 10)