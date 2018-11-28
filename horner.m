function evaluacion = horner(coef,x) 
  n = length(coef);
  evaluacion = coef(1);
  for i=2:1:n
    evaluacion = (evaluacion*x) + coef(i);
  end
end

% Hace lo mismo que polyval, pero sirve para cualquier polinomio
% coef: vector de coeficientes del polinomio (las a)
% x: vector cualquiera