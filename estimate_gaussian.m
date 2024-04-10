% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
  [m n] = size(X);

  mean_values = zeros(1, n);

  for j = 1:n
    sum = 0;
    for i = 1:m
      sum = sum + X(i, j);
    end
    mean_values(1, j) = sum / m;
  end
    
  variances = zeros(n, n);
  aux = zeros(m, n);

  for i = 1 : m
    aux(i, :) = X(i, :) - mean_values;
  end

  for i = 1 : m
  variances = variances + aux(i, :)' * aux(i, :);
  end
  variances = variances / m;
endfunction
