function [x,k,r]=potencia_inversa_dez(A,error,u,itmax)
    n = length(A);
    dezpla = u*eye(n,n);
    A = A - dezpla;
    A = LU(A);
    for k=1:1:itmax
        y = sistemaLU(A,x);
        r = y(1)/x(1);
        if norm(x-(y/norm(y,inf)),inf)<error
            r = 1/r + u;
            return
        end
        x = y/norm(y,inf);
    end
    r = (1/r)+u;
end