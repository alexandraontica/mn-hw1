function pred = eval_value(x, X, f, f_param, a)
   # pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a
  
  # calcul dimensiune set de date X:
  n = size(X, 1);
  
  # initializare predictie:
  pred = 0;

  # calcul predictie in functie de parametrii stocati in a si de functia de kernel:
  for i = 1 : n
    pred = pred + a(i) * f(x, X(i, :), f_param);
  endfor
endfunction