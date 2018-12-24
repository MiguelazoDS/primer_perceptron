%Definiciones de las funciones.
function y = funciones()
  y.entrada = @entrada;
  y.capa_oculta=@capa_oculta;
  y.salida = @salida;
  y.pesos = @pesos;
  y.feedforward = @feedforward;
  y.backpropagation = @backpropagation;
  y.sigmoid = @sigmoid;
  y.sigmoid_d = @sigmoid_d;
endfunction

%Define las entradas y le agrega un valor de bias.
function y = entrada(x)
  y = [x,1];
endfunction

%Define el tamaño de la capa oculta y lo completa con unos. 
%Le agrega un valor valor uno que es el valor de bias.
function y = capa_oculta(x)
  y = ones(1,x+1);
endfunction

%Define las salidas
function y = salida(x)
  y = x;
endfunction

%Pesos aleatorios entre 0 y 1. Son dos vectores de pesos.
%El primer vector para los pesos entre la entrada y la capa oculta.
%El segundo vector para los pesos entre la capa oculta y la salida.
function [y1,y2] = pesos(x1,x2,x3)
  aux1 = size(x1,2)*size(x2,2)
  aux2 = size(x2,2)*size(x3,2)
  y1 = rand(1,aux1);
  y2 = rand(1,aux2);
endfunction

%Se define la función de activación sigmoid.
function y = sigmoid(x)
  y = 1 / (1 + e**(-x));
endfunction

%Se define la derivada de la función de activación.
function y = sigmoid_d(x)
  aux = sigmoid(x);
  y = -aux**2;
endfunction

function feedforward
  disp('Función feedforward')
endfunction

function backpropagation
  disp('Función backpropagation')
endfunction

