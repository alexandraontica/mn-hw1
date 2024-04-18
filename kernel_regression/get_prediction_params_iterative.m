function [a] = get_prediction_params_iterative (K, y, lambda)
  # folosind metode iterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = size(K, 1);
  A = lambda * eye(m) + K;
  
  # initializare parametrii pentru metoda gradientului conjugat:
  a0 = zeros(m, 1);
  tol = 1e-8;  # toleranța pentru oprirea algoritmului
  max_iter = 1000;  # numărul maxim de iterații

  a = conjugate_gradient(A, y, a0, tol, max_iter);
endfunction
