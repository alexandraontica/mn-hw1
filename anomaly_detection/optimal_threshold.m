% Finds the best threshold to use for selecting outliers.
function [best_epsilon best_F1 associated_precision associated_recall] = optimal_threshold(truths, probabilities)
  % initializare valori:
  best_epsilon = 0;
  best_F1 = 0;
  associated_precision = 0;
  associated_recall = 0;

  % generare valori posibile pentru epsilon intre minimul si maximul probabilitatilor:
  epsilon_pos = linspace(min(probabilities), max(probabilities), 1001);
  
  % parcurgere valori posibile pentru epsilon:
  for epsilon = epsilon_pos
    % calcul predictii pentru valoarea curenta a lui epsilon:
    predictions = probabilities < epsilon;

    % cacul false_pozitives, false_negatives, true_pozitives:
    % [false_pozitives false_negatives true_pozitives] = check_predictions(predictions, truths);
    
    % initializare valori:
    true_positives = 0;
    false_positives = 0;
    false_negatives = 0;

    % parcurgerea vectorului de predictii si compararea valorilor cu cele din vectorul de adevaruri (truths):
    for i = 1 : length(predictions)
      if predictions(i) && truths(i)
        true_positives = true_positives + 1;
      elseif predictions(i) && ~truths(i)
        false_positives = false_positives + 1;
      elseif ~predictions(i) && truths(i)
        false_negatives = false_negatives + 1;
      endif
    endfor

    % calcul precision recall F1:
    % [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives);
    
    % calcul procentaj outlieri adevarati si deteminati din outlierii determinati:
    precision = true_positives / (true_positives + false_positives);
  
    % calcul procentaj outlieri adevarati si determinati din totalul outlierilor reali:
    recall = true_positives / (true_positives + false_negatives);
  
    F1 = 2 * precision * recall / (precision + recall);

    % daca F1 este maxim:
    if F1 > best_F1
      % actualizare best_F1, best_epsilon, associated_precision, associated_recall:
      best_F1 = F1
      best_epsilon = epsilon
      associated_precision = precision
      associated_recall = recall
    endif
  endfor
endfunction
