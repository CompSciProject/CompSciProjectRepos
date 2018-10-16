function sol = ImplicitEulerTest(T,y0,N,f)

dt = T/N;
t0 = 0;

tVals = linspace(0,T,N);

sol = zeros(2,N);
sol(:,1) = [t0;y0];

for i = 1:N-1
    t1 = t0;
    for j = 1:10
        y1 = y1 + dt*f(t1,y1);
        % 
    end
    
sol(:,i+1) = [t1; y1];
t1 = t1 + dt;

end
plot(tVals,sol)
