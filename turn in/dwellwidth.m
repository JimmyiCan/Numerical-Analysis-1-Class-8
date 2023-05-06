x1 = secant(-1.3,-1.2,1e-5);
x2 = secant(1.2,1.3,1e-5);
dwell_width = x2 - x1;
fprintf('Dwell width is %f.\n',dwell_width)