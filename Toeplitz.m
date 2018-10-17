function T=Toeplitz(v)
    n=length(v)
    largo=n-((n/2)-0.5);
    T=0*ones(largo,largo)
    for k=1:1:largo     % Calcula de v0 a vn
        for j=0:1:largo-k
            T(j+1,k+j)=v(largo+k-1);
        end
    end
    for k=2:1:largo     % Calcula de v-1 a v-n
        for j=0:1:largo-k
            T(j+k,1+j)=v(largo-k+1);
        end
    end
end
