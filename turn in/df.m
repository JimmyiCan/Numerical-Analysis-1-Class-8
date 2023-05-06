function z = df(k)
  global params
  L = params.L;
  b = params.b;

  % Could define kL2 = k*L/2 for improved performance
  term1 = tan(k*L/2);
  % Could define s = sec(kL2) for improved performance.

  term2 = (L/2)*k.*sec(k*L/2).*sec(k*L/2);

  term3 = 2*k./sqrt(b*b - k.*k);

  z = term1 + term2 + term3;

end
