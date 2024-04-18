function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  
  # am transformat pseudocodul din PDF in cod Octave:
  r = b - A * x0;
  v = r;
  x = x0;
  tol_squared = tol^2;
  k = 1;

  while (k <= max_iter) && (r' * r > tol_squared)
    tk = (r' * r) / (v' * A * v);
    x = x + tk * v;
    rk = r - tk * A * v;  # pentru sk imi trebuie atat r la pasul k, cat si r la pasul k - 1
    sk = (rk' * rk) / (r' * r);
    r = rk;
    v = r + sk * v;
    k = k + 1;
  endwhile
endfunction