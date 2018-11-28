function evaluacion = lagrange(X,Y,x)
  n = length(X);
  Q = NaN(n,n);
  for i=1:1:n
    Q(i,1) = Y(i);
  end
  for i=2:1:n
    for j=2:1:i
      Q(i,j) = ((x-X(i-j+1))*Q(i,j-1)-(x-X(i))*Q(i-1,j-1))/(X(i)-X(i-j+1));
    end
  end
  evaluacion = Q(n,n);
end

% X: vector que tiene las x sub i
% Y: vector que tiene las x sub i
% x: punto en el que quiero evaluar