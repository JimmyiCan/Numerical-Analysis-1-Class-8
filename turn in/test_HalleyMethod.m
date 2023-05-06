function test_HalleyMethod()
x1 = HalleyMethod(-0.9);
x2 = HalleyMethod(-0.6);
x3 = HalleyMethod(0);
x4 = HalleyMethod(0.6);
x5 = HalleyMethod(0.9);
x = [x1 x2 x3 x4 x5];
y =x;
disp(x)
tol = 1e-2;
for i = 1:5
    y(i) = chebyshev(i);
end
x = sort(x);
y = sort(y);
disp(y)
if (abs(x - y) < tol)
    disp('true')
else
    disp('false')
end

      
