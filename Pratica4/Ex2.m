%% Exercício 2 a)
p = 0.5; %vamos considerar que a probabilidade de sucesso é 0.5
exp = rand(1,10) < p;
sprintf('Número de sucessos: %d', sum(exp == 1))

%% Exercício 2 b)
p = ones(1,6)*(1/6);
psum = cumsum(p);

for i=1:15
    %quando o valor gerado for maior que a probabilidade de sair um certo
    %número, saiu o número seguinte no dado
   lanc(i) = 1 + sum(rand(1,1)>psum) 
end

lanc

%% Exercício 2 c)
%conjunto de 20 numeros reais igualmente distribuídos entre -4 e 10
n = 20;
%rand vai gerar 20 valores de 0 a 1 que vão ser multiplicados por 10-(-4)=14 e ao qual somamos o valor inicial -4
a = (rand(1,n)*14)-4; 
hist(a)
title('Geração de números entre -4 e 10')
axis([-4 10 0 10])


