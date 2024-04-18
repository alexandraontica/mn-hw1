function [precision recall F1] = metrics(true_pozitives, false_pozitives, false_negatives)
    % precision = 0;
    % recall = 0;
    % F1 = 0;
   
  % am implementat formulele din PDF
    
  % calcul procentaj outlieri adevarati si deteminati din outlierii determinati:
  precision = true_positives / (true_positives + false_positives);
  
  % calcul procentaj outlieri adevarati si determinati din totalul outlierilor reali:
  recall = true_positives / (true_positives + false_negatives);
  
  F1 = 2 * precision * recall / (precision + recall);
endfunction