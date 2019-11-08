%% Exercicio 8

N = 100;
%geramos valores entre -5 e 5
%X = U(-5,5)
a = -5;
b = 5;
X = rand(1, N)*(b-a) + a;

% Y = U(0,1/sqrt(2pi)
a = 0;
b = 1/sqrt(2*pi);
Y = rand(1, N)*(b-a) + a;

j = 1;
for i = -5:5
    func(j) = densidadeprob(i); %gráfico da função gaussiana normalizada
    j = j + 1;
end

%tudo o que estiver acima da curva do gráfico é rejeitado
Z=X(Y<=densidadeprob(X));
% gráfico
Y2= Y(Y<=densidadeprob(X));
plot(Z,Y2,'.')
hold on
plot(-5:5, func)



