function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec 
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible

  % initializare dictionar:
  values_cell = cell(1, numel(distinct_k_sec));
  
  % salvare indecsi intr-un cell-array:
  for i = 1 : numel(distinct_k_sec)
    values_cell{i} = i;
  endfor

  % atribuire index fiecarui cuvant:
  retval = containers.Map(distinct_k_sec, values_cell);
endfunction