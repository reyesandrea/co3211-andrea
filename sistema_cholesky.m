function x=sistema_cholesky(A,b)
  L=cholesky(A);
  U=transpose(L);
  y=sust_adel(L,b);
  x=sust_atras(U,y);
endfunction