function test_newton3D()
A = nweton3D([0;0;1;50]);
tol = 1e-5;
r = A(1).^2 + A(2).^2 + A(3).^2;
disp(r)
if (r - 1 < tol)
    if (abs(f(A)) < tol)
        disp('true')
    else
        error('false')
    end
else
    error('false')
end
end