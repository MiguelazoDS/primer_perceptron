disp('Implementación de un perceptron multicapa - ingrese el vector de entrada');
F = funciones();
disp('Entrada, nodos oculto y salida');
[e,c,s] = F.nodos([0,1],2,2)
disp('Matrices de pesos');
[p1,p2] = F.pesos(e,c,s)
ah = F.act(e,p1)
ao = F.act(c,p2)
c = F.act_nodos(ah,c)
s = F.act_nodos(ao,s)
real = [1,1]
ecm = F.costo(real,s)

