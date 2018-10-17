function Inv = Inversa(A)
    n=length(A);
    e=0*ones(n,1);
    Inv=[];
    for k=1:1:n
        e=0*ones(n,1);
        e(k)=1;
        x=sistemaLU(A,e);
        Inv=[Inv,x];
    end
end
