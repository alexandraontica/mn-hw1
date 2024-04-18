function probabilities = multivariate_gaussian(X, mean_values, variances)
  % am implementat formula din PDF
  
  % determinare valori necesare in formula:
  n = size(X, 2);
  inv_mat = inv(variances);
  det_mat = det(variances);

  % calcul exponent:
  exponent = -0.5 * sum(((X - mean_values) * inv_mat) .* (X - mean_values), 2);

  % calcul probabilitati:
  probabilities = (1 / ((2 * pi)^(n/2) * sqrt(det_mat))) * exp(exponent);
endfunction
