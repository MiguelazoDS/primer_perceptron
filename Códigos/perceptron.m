disp('Implementación de un perceptron multicapa - ingrese el vector de entrada')
F = funciones();
e = F.entrada([1,1])
[c,s] = F.oculta_salida(2)
[p1,p2] = F.pesos(e,c,s)
a1 = F.a(e,p1)
a2 = F.a(c,p2)
c = F.act_nodos(a1,c)
s = F.act_nodos(a2,s)


