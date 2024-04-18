function retval = gaussian_kernel (x, y, sigma)
  # implement gaussian kernel function
  retval = exp(-((norm(x - y))^2 / (2 * sigma^2)));
endfunction
