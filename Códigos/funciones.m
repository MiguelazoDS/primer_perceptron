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

%Pesos aleatorios entre 0 y 1. Son dos matrices de pesos.
%La primera para los pesos entre la entrada y la capa oculta,
%la segunda para los pesos entre la capa oculta y la salida.
%Los parámetros que se reciben son el vector de entradas, ocultos y salida.
%En b se resta 1 por que en la capa oculta también hay un valor de bias 
%que funciona como entrada a la capa de salida, pero no es destino de la capa de 
%entrada.
function [y1,y2] = pesos(x1,x2,x3)
  a = size(x1,2)
  b = (size(x2,2)-1)
  c = size(x3,2)
  y1 = rand(a,b);
  y2 = rand(b+1,c);
endfunction

%Recibe el vector de entrada y el primer vector de pesos.
%Devuelve un valor.
function y = z(x1,x2)
    
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

