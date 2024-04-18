function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    
  % calculare numar de cuvinte si de k-secvente din set-uri:
  nr_wrds = length(words_set);
  nr_k_secv = length(k_secv_set);
  
  % initializare matrice stochastica:
  retval = zeros(nr_k_secv, nr_wrds);
  
  for i = 1 : length(k_secv_corpus)
    % salvare secventa curenta:
    k_secv_curr = k_secv_corpus{i};
    
    % determinare pozitie secventa curenta in set:
    k_secv_idx = find(strcmp(k_secv_set, k_secv_curr));
    
    % salvare cuvant ce urmeaza dupa secventa curenta:
    next_word = corpus_words{i + k};
    
    % determinare pozitie cuvant in set ce urmeaza dupa secvena curenta:
    next_word_idx = find(strcmp(words_set, next_word));
    
    % incrementare valoare in matricea stochastica:
    retval(k_secv_idx, next_word_idx) = retval(k_secv_idx, next_word_idx) + 1;
  endfor
endfunction