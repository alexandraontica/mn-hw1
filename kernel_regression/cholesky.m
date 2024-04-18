function [L] = cholesky (A)
    # realizati descompunerea cholesky pentru o matrice
    # positiv definita
  
  # determinare dimensiune pentru matricea A:
  n = size(A, 1);
  
  # initializare matrice (va fi inferior triunghiulara):
  L = zeros(n);

  # parcurgere pe coloane a matricei L:
  for j = 1 : n
    # calcul element de pe diagonala principala conform formulei din laborator:
    L(j, j) = sqrt(A(j, j) - sum(L(j, 1 : j - 1).^2));

    # parcurgere elemente de pe liniile de sub diagonala principala:
    for i = j + 1 : n
      # calcul element conform formulei din laborator:
      L(i, j) = (1 / L(j, j)) * (A(i, j) - sum(L(i, 1 : j - 1) .* L(j, 1 : j - 1)));
    endfor
  endfor
endfunction
