function y = g(x)
xn = linspace(-4, 4, 10000);
yn = linkage(xn);
t = 0.98*(max(yn) - min(yn)) + min(yn);
y = linkage(x) - t;
disp(t)