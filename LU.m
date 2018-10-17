function A=LU(A)
    [m,n]=size(A);
    for k=2:1:n
        for i=k:1:n
            alpha = A(i,k-1)/A(k-1,k-1);
            A(i,k-1)=alpha;
            for j=k:1:n
                A(i,j)=A(i,j)-(A(i,k-1)*A(k-1,j));
            end
        end
    end
end
