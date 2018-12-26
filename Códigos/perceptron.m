disp('Implementación de un perceptron multicapa - ingrese el vector de entrada.');
F = funciones();
disp('Entrada, nodos oculto y salida.');
[e,c,s] = F.nodos([0,1],2,2)
disp('Matrices de pesos');
[p1,p2] = F.pesos(e,c,s)
disp('Se calculan los valores de regresión lineal.');
r1 = F.regresion(e,p1)
r2 = F.regresion(c,p2)
disp('Salidas de la función de activación.');
ah = F.act(r1)
ao = F.act(r2)
disp('Se actualizan los nodos ocultos y de salida.');
c = F.act_nodos(ah,c)
s = F.act_nodos(ao,s)
disp('Valor real de salida.');
real = [1,1]
disp('Cálculo del error cuadrático medio');
ecm = F.costo(real,s)
disp('Cálculo de la derivada parcial del error respecto de la función de activación.')
parc_Et_ao = F.parc_Et_ao(real, s)
disp('Cálculo de la derivada parcial de la función de activación respecto de la regresión.');
parc_ao1_zo1 = F.parc_ao_zo(r1)
parc_ao2_zo2 = F.parc_ao_zo(r2)
