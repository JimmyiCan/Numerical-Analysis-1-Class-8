function test_secant()
x1 = secant(-1.3,-1.2,1e-5);
x2 = secant(1.2,1.3,1e-5);
tol = 1e-5;
if (g(x1) < tol && g(x2) < tol)
    disp('True')
else
    error('False')
end
end
     
