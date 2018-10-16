function [y] = solverk2(N,y_0,f,T)

%SOLVERK2 using 2-step Runge-Kutta method to solve Initial Value Problems
% Input:
%         N       number of iterations
%         y_0     intial value
%         f       RHS function
%         T       final time

% The first step
h = T/N;
t = [0:h:T];
K_1 = f(0,y_0);
K_2 = f(h,y_0 + h*K_1);
y_1 = y_0 + h/2*(K_1+K_2);
y = [y_0;y_1];
i = 1;

% After the first step
while (1),
    i = i+1;
    K1 = f(i*h,y(i));
    K2 = f((i+1)*h,y(i)+h*K1);
    y_new = y(i) + h/2*(K1 + K2);
    y = [y;y_new];
    if i == N,
        break
    end
end
plot(t,y,'o')
shg
save('datark2.mat','y');