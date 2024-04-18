function outliers = identify_outliers(X, yval)
  [mean_values variances] = estimate_gaussian(X);
  probabilities = multivariate_gaussian(X, mean_values, variances);
  [best_epsilon F1 precision recall] = optimal_threshold(yval, probabilities);
  
  % selectare outlieri pe baza epsilonului calculat anterior: 
  % (salvez pozitia elementelor pentru care probabilities < best_epsilon)
  outliers = find(probabilities < best_epsilon);
endfunction