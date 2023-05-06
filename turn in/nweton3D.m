function root = nweton3D(A)
tol = 1e-5;
n =100000;
X = zeros(4,n);
X(:,1) = A;
for i = 1:n
    sym(f(X(:,i)));
    delta = (J(A)\eye(4))*sym(f(X(:,i)));
    X(:,i+1) = X(:,i) - delta;
    if (delta < tol)
        root = X(:,i+1);
        fprintf('The root of f(x) is %f with Halley method.\n',root)
        return
    end
end
disp('Try another starting value as the guess')


