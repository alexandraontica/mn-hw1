function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # împarte setul de date în 2 seturi: 
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1
  
  # Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  # linia coloanei y reprezinta y^{(i)}
  
  nr_rows = size(X, 1);
  
  # calculare numar de perechi (X, y) din seturile de antrenament, respectiv de test:
  nr_train = round(percentage * nr_rows);
  nr_test = nr_rows - nr_train;
  
  # selectare valori pentru setul de antrenament:
  X_train = X(1 : nr_train, :);
  y_train = y(1 : nr_train);
    
  # selectare valori pentru setul de testare:
  X_pred = X(nr_train + 1 : end, :);
  y_pred = y(nr_train + 1 : end);
endfunction
