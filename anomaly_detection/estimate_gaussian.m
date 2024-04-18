% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
  % am implementat formulele din PDF

  % determinare dimensiuni matrice X:
  [m n] = size(X);

  % initializare mean_values:
  mean_values = zeros(1, n);

  % aplicare formula pentru mean_values:
  for j = 1 : n
    sum = 0;
    for i = 1 : m
      sum = sum + X(i, j);
    endfor
    mean_values(1, j) = sum / m;
  endfor
    
  % initializare variances:
  variances = zeros(n, n);
  aux = zeros(m, n);

  % aplicare formula matrice de varianta:
  for i = 1 : m
    aux(i, :) = X(i, :) - mean_values;
  endfor

  for i = 1 : m
    variances = variances + aux(i, :)' * aux(i, :);
  endfor
  variances = variances / m;
endfunction
