function [a] = get_prediction_params (K, y, lambda)
  # folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);
  A = lambda * eye(m) + K;
  L = cholesky(A);
  # daca folosesc functia de inversare primesc TIMEOUT la teste
  a = L' \ (L \ y);
endfunction
