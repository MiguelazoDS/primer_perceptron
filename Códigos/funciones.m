%Definiciones de las funciones.
function y = funciones()
  y.entrada = @entrada;
  y.capa_oculta=@capa_oculta;
  y.salida = @salida;
  y.salida_real = @salida_real;
  y.pesos = @pesos;
  y.a = @a;
  y.act_nodos = @act_nodos;
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

%Define los nodos de salidas
function y = salida(x)
  y = ones(1,x);
endfunction

%Guarda los valores reales de salida.
function y = salida_real(x)
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

%Recibe el vector de entrada y una matriz de pesos.
%Devuelve un valor. El parámetro ind si es 0 guarda los valores 
%para ser usados por la capa oculta, si es 1 en la capa de salida.
function y = a(x1,x2)
  aux = x1*x2;
  y = sigmoid(aux);
endfunction

%Mando la salida de la función de activación y el vector de nodos que deseo actualizar
%Puede ser el oculto o el de salida.
function y = act_nodos(x1,x2)
  for i=1:size(x1,2)
    x2(i) = x1(i);
  endfor
  y = x2;
endfunction

%Se define la función de activación sigmoid.
function y = sigmoid(x)
  aux = (1 / (1 + e**(-x(1))));
  for i=2:size(x,2)
    y = [aux,(1 / (1 + e**(-x(i))))];
  endfor
endfunction

%Se define la derivada de la función de activación.
function y = sigmoid_d(x)
  aux = sigmoid(x);
  y = -aux**2;
endfunction