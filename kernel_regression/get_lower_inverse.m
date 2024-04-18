function [P] = get_lower_inverse (L)
  # Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  
  # calcul dimensiune matrice L:
  n = size(L, 1);
  
  # initializare inversa:
  P = zeros(n);
  
  # aplicare formula (dedusa cu pixul pe foaie aplicand algoritmul invatat la ALGAED):
  # am aplicat eliminare gaussiana pe matricea [L|In] pana am ajuns la ceva de forma [In|P]
  for i = 1 : n
    P(i, i) = 1 / L(i, i);
    # calcul elemente pe coloana:
    for j = i + 1 : n
      for k = i : j - 1
        P(j, i) = P(j, i) - L(j, k) * P(k, i);
      endfor
      P(j, i) = P(j, i) / L(j, j);
    endfor
  endfor
endfunction
