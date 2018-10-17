function Inv=InversaPro(A)
    n=length(A);
    Lu=LU(A);
    L=tril(Lu,-1)+eye(n);
    U=triu(Lu);
    Inv=[];
    for k=1:1:n
        e=0*ones(n,1);
        e(k)=1
        y=sust_adel(L,e);
        x=sust_atras(U,y);
        Inv=[Inv,x];
    end
end
