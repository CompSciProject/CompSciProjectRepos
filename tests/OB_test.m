% Inputs:
%       - func_test:    a function f(t,y) from the RHS of the IVP to be solved
%       - tolerance:    a tolerance which dictates how close to the true
%                       solution of the IVP that the numerical solution
%                       must be
%       - method:       a chosen method that is used to numerically solve 
%                       the IVP
%
% Outputs:

function outcome = OB_test(method,func,tol)

fopen('\CompSciProjectRepos\ExEul\code\FullExEul.m');
fopen('\CompSciProjectRepos\ImEul\code\FullImEul.m');
fopen('\CompSciProjectRepos\PredCorr\code\FullPredCorrEul.m');
fopen('\CompSciProjectRepos\RK2\code\FullRK2.m');

if strcmp(method,'ImEul')
    [time,sol_meth] = FullImEul(0,1,1,func,1000);
    elseif strcmp(method,'ExEul')
    [time,sol_meth] = FullExEul(0,1,1,func,1000);
    elseif strcmp(method,'PredCorr')
    [time,sol_meth] = FullPredCorr(0,1,1,func,1000);
    elseif strcmp(method,'RK2')
    [time,sol_meth] = FullRK2(0,1,1,func,1000);
end

f = func2str(func);
f = f(7:end);

if f == '1'
    sol_true = matfile('\CompSciProjectRepos\testData\yPrimeEqualsOne.mat');
elseif f == 'y'
    sol_true = matfile('\CompSciProjectRepos\testData\yPrimeEqualsY.mat');
elseif f == 't'
    sol_true = matfile('\CompSciProjectRepos\testData\yPrimeEqualsT.mat');
elseif min(f == 'y*t') == 1 || min(f == 't*y') == 1
    sol_true = matfile('\CompSciProjectRepos\testData\yPrimeEqualsYT.mat');
elseif min(f == 'y^2*t') == 1 || min(f == 't*y^2') == 1
    sol_true = matfile('\CompSciProjectRepos\testData\yPrimeEqualsYSquaredT.mat');
end

er_rel = abs((sol_true - sol_meth)/sol_meth);
er = norm(er_rel,2);

if er < tol
    outcome = 1;
else 
    outcome = 0;
end