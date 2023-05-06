function root = HalleyMethod(x)
tol = 1e-5;
n =100;
X = zeros(1,n);
X(1) = x;
for i = 1:n
    delta = (2*T5(X(i))*dT5(X(i)))/(2*((dT5(X(i))).^2)-d2T5(X(i))*T5(X(i)));
    x(i+1) = x(i) - delta;
    if (delta < tol)
        root = x(i+1);
        fprintf('The root of T5(x) is %f with Halley method.\n',root)
        return
    end
end
disp('Try another starting value as the guess.\n')

