function funs = funciones()
  funs.entradas = @entradas;
  funs.sigmoid = @sigmoid;
endfunction

function y = entradas(x)
  y = x;
endfunction

function y = sigmoid(x)
  y = 1 / (1 + e**(-x));
endfunction

