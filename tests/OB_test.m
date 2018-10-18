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

if strcmp(f,'1')
    sol_true = load('../testData/yprimeEqualsOne.mat');
elseif strcmp(f,'y')
    sol_true = load('../testData/yprimeEqualsY.mat');
elseif strcmp(f,'t')
    sol_true = load('../testData/yprimeEqualsT.mat');
elseif strcmp(f,'t*y') || strcmp(f,'y*t')
    sol_true = load('../testData/yprimeEqualsYT.mat');
elseif strcmp(f,'t*y^2') || strcmp(f,'y^2*t')
    sol_true = load('../testData/yprimeEqualsYSquaredT.mat');
end

sol_true = cell2mat(struct2cell(sol_true))';

plot(time,sol_meth)
hold on
plot(time(1:1000),sol_true(1:1000),'r')

er_rel = abs((sol_true(end) - sol_meth(end))/sol_meth(end));

if er_rel < tol
    outcome = 1
else 
    outcome = 0
end
return