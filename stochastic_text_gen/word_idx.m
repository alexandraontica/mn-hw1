function retval = word_idx (distinct_wds)
  % return the word_idx dictionary HINT: containers.Map
    
  % initializare dictionar:
  retval = containers.Map;

  for i = 1 : numel(distinct_wds)
    % salvare cuvant curent din array-ul de cuvinte:
    word = distinct_wds{i};
    
    % atribuirea unui indice cuvantului curent:
    retval(word) = i;
  endfor
endfunction
