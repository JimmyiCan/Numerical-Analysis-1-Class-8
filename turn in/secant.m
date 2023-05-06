function root = secant(x0, x1, tol)
close all
figure(1)
xn = linspace(-3.5, 3.5, 10000);
fn = linkage(xn);
plot(xn, fn, 'b');
axis([-3.5 3.5 1 1.75])
xlabel('theta1')
ylabel('vertically moved xi function')
title('xi vs 98 percent line')
hold on
t = 0.98*(max(fn) - min(fn)) + min(fn);
siz = size(xn);
tn = t*ones(1,siz(2));
plot(xn, tn, 'r')
% Do root finding in a loop to prevent infinite loops from nonconvergence

g0 = g(x0); 
g1 = g(x1); 
for i = 1:100
    s = (x1 - x0)/(g1 - g0);
    x2 = x1 - g1*s;
    g2 = g(x2);
    if (abs(g2) < tol)    
      root = x2;
      fprintf('After %d iterations, the root is %f.\n',i,root)
      return
    elseif (abs(x2 - x1) < tol)
      root = x2;
      fprintf('After %d iterations, the root is %f.\n',i,root)
      return
    else
      x0 = x1;  g0 = g1;  x1 = x2;  g1 = g2;
    end
end  
error('Terminated without convergence!\n')
