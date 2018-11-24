function[x,k,r]=potencia(A,error,x,itmax)
    for k=1:1:itmax
        y=A*x;  % x^k+1 = Ax^k
        r=y(1)/x(1);  % fi(x^(k+1))/fi(x^k)
        if norm(x-(y/norm(y,inf)),inf)<error
            return
        end
        x=y/norm(y,inf);
    end
end
