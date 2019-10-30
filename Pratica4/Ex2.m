%% Exerc�cio 2 a)
p = 0.5; %vamos considerar que a probabilidade de sucesso � 0.5
exp = rand(1,10) < p;
sprintf('N�mero de sucessos: %d', sum(exp == 1))

%% Exerc�cio 2 b)
p = ones(1,6)*(1/6);
psum = cumsum(p);

for i=1:15
    %quando o valor gerado for maior que a probabilidade de sair um certo
    %n�mero, saiu o n�mero seguinte no dado
   lanc(i) = 1 + sum(rand(1,1)>psum) 
end

lanc

%% Exerc�cio 2 c)
%conjunto de 20 numeros reais igualmente distribu�dos entre -4 e 10
n = 20;
%rand vai gerar 20 valores de 0 a 1 que v�o ser multiplicados por 10-(-4)=14 e ao qual somamos o valor inicial -4
a = (rand(1,n)*14)-4; 
hist(a)
title('Gera��o de n�meros entre -4 e 10')
axis([-4 10 0 10])


