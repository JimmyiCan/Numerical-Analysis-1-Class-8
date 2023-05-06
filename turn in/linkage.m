function xi = linkage(theta_1)
R1 = 1; R2 = 1/3; Rc = 0.45*R2; L = 1.5;
theta_2 = theta_1*(R1/R2 - 1);
x = R2*cos(theta_1) - Rc*cos(theta_2);
y = R2*sin(theta_1) + Rc*sin(theta_2);
xi = x + sqrt(L.^2 - y.^2);
% xi = x + L*cos(asin(y/L));
end