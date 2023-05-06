function f = f(A)
x = A(1);
y = A(2);
z = A(3);
t = A(4);
f = zeros(4,1);
c = 0.047;
f(1) = (x-1.2).^2 + (y-2.3).^2 + (z-0.2).^2 - c.^2*(t-5.8530).^2;
f(2) = (x+0.5).^2 + (y-1.5).^2 + (z-1.8).^2 - c.^2*(t-14.7328).^2;
f(3) = (x+1.7).^2 + (y-0.8).^2 + (z-1.3).^2 - c.^2*(t-4.5328).^2;
f(4) = (x-1.7).^2 + (y-1.4).^2 + (z+0.5).^2 - c.^2*(t-5.9390).^2;
return
end