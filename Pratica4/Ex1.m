%% Exercicio 1a)
v1 = lcg(1,2,32,111,1000);
histogram(v1,0:1:111)
%quantos valores diferentes gerados
u1 = length(unique(v1));
sprintf('Numero de valores diferes usados %d', u)

%% Exercicio 1b)
v2 = v1/111;
histogram(v2,0.05:0.1:0.95);
%quantos valores diferentes gerados
u2 = length(unique(v1));
sprintf('Numero de valores diferes usados %d', u)
%% Execricio 1c)
%...