%% Exercicio 1a)
v1 = lcg(1,2,32,111,1000);
histogram(v1,0:1:111)
%numero de valores diferentes gerados
u1 = length(unique(v1));
s1 = sprintf('Número de valores diferentes usados %d', u1);
disp(s1)

%% Exercicio 1b)
v2 = v1/111;  %divisão pelo valor de m
histogram(v2,0.05:0.1:0.95);
%numero de valores diferentes gerados
u2 = length(unique(v1));
s2 = sprintf('Número de valores diferentes usados %d', u2);
disp(s2)

%% Exercício 1c)
%...