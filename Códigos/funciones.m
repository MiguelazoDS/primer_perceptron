%Definiciones de las funciones.
function y = funciones()
  y.nodos = @nodos;
  y.pesos = @pesos;
  y.act = @act;
  y.sigmoid = @sigmoid;
  y.act_nodos = @act_nodos;
  y.costo = @costo;
  y.sigmoid_d = @sigmoid_d;
endfunction

%Guarda los valores de entrada y le agrega un valor de bias igual a 1.
%para los nodos ocultos y de salida los inicializa en 1, agregando
%también, para los nodos ocultos un valor de bias igual a 1.
function [y1, y2, y3] = nodos(x1,x2,x3)
  y1 = [x1,1];
  y2 = ones(1,x2+1);
  y3 = ones(1,x3);
endfunction

%Pesos aleatorios entre 0 y 1. Son dos matrices de pesos.
%La primera para los pesos entre la entrada y la capa oculta,
%la segunda para los pesos entre la capa oculta y la salida.
%Los parámetros que se reciben son el vector de entradas, ocultos y salida.
%En b se resta 1 por que en la capa oculta también hay un valor de bias 
%que funciona como entrada a la capa de salida, pero no es destino de la capa de 
%entrada.
function [y1,y2] = pesos(x1,x2,x3)
  a = size(x1,2);
  b = (size(x2,2)-1);
  c = size(x3,2);
  y1 = rand(a,b);
  y2 = rand(b+1,c);
endfunction

%Recibe un vector de entrada y una matriz de pesos.
%Devuelve un vector.
function y = act(x1,x2)
  aux = x1*x2;
  y = [];
  for i=1:size(aux,2)
    y = [y,sigmoid(aux(i))];
  endfor
endfunction

%Se define la función de activación sigmoid.
function y = sigmoid(x)
  y = 1 + e**(-x);
endfunction

%Mando la salida de la función de activación y el vector de nodos que deseo actualizar
%Puede ser el oculto o el de salida.
function y = act_nodos(x1,x2)
  for i=1:size(x1,2)
    x2(i) = x1(i);
  endfor
  y = x2;
endfunction

%Calcula el error cuadrático medio.
function y = costo(x1,x2)
  y = 0;
  for i=1:size(x1,2)
    y += (x1(i)-x2(i))**2;
  endfor
  y = y/2;
endfunction

%Se define la derivada de la función de activación.
function y = sigmoid_d(x)
  aux = sigmoid(x);
  y = -aux**2;
endfunction