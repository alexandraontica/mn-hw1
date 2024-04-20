function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    
  % calcul numar de cuvinte si de k-secvente din set-uri:
  nr_wrds = length(words_set);
  nr_k_secv = length(k_secv_set);
  
  % determinare cuvant urmator dupa fiecare k-secventa:
  next_wrd = corpus_words((k + 1) : end);
  
  % determinare pozitii cuvinte urmatoare in setul de cuvinte distincte: 
  [~, next_wrd_idx] = ismember(next_wrd, words_set);
  
  % determinare pozitii k-secvente din corpus in setul de secvente distincte:
  [~, k_secv_idx] = ismember(k_secv_corpus, k_secv_set);
  
  % constructie matrice stochastica:
  retval = sparse(k_secv_idx, next_wrd_idx, 1, nr_k_secv, nr_wrds);
endfunction