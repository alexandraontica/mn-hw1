function [false_pozitives false_negatives true_pozitives] = check_predictions(predictions, truths)
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
endfunction