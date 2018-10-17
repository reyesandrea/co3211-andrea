% Sustitucion hacia adelate

function x = sust_adel(A,b)
  n=length(A);
  x=nan*ones(n,1);
  x(1)=b(1)/A(1,1);
  
  for i=2:1:n
    suma=0;
    for j=1:1:i-1
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end
end