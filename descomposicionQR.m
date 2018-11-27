function [Q,R]=descomposicionQR(A)
    aux = A;
    if det(A)==0
      return
    end
    [m n]=size(A);
    for j=1:n
      r(j,j)=norm(A(:,j));
      A(:,j)=A(:,j)/r(j,j);
      r(j,j+1:n)=A(:,j)'*A(:,j+1:n);
      A(:,j+1:n)=A(:,j+1:n)-A(:,j)*r(j,j+1:n);
    end
    Q = A;
    R = inv(Q)*aux;
end