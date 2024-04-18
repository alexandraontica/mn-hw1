function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % use strjoin 

  % calcul numar k-secvente:
  n = numel(A) - k;

  % initializare array de k-secvente:
  B = cell(n, 1);
    
  for i = 1 : n
    % initializare array in care salvez cuvintele unei k-secvente:
    aux = cell(1, k);
    for j = i : i + k - 1
      % adaugare cuvinte in aux:
      aux{j - i + 1} = A{j};
    endfor
    % creare k-secventa prin concatenare:
    B{i} = strjoin(aux);
  endfor
endfunction
