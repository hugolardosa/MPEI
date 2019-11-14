%% Terceira versão
%% Exercício 1
% para testar a função de hash:
chave_v2(10,5)

%% Exercício 2
%inserção de 1000 strings numa hash table
% guardar informação do número de chaves que foram mapeadas
%numa determinada posição
N = 1000;
tamanho = round(N/0.8); %fator de carga 0.8
pos = zeros(1,N);
counter = zeros(1, tamanho);
for i = 1:N
    a = string2hash_v2(chave_v2(10,5));
    hash = mod(a, tamanho) + 1; %posições
    counter(hash) = counter(hash) + 1; %incrementa o numero de strings que foram guardadas numa posição
    subplot(2,1,1)
    stem(counter)
    title('Número de strings em cada posição');
    drawnow
    subplot(2,1,2)
    hist(counter, 0:1:max(counter))
    title('Número de posições com x strings');
    drawnow
end

%% Exercício 3
% X -> número de chaves mapeadas para uma posição
%length(counter);
px = counter/tamanho; %vetor com as respetivas probabilidades
dist = cumsum(px);
stairs(dist); %gerar o grafico de função de distribuição acumulada
%X = [1:length(counter)];
%e = sum(X.*px');
%var = sum(((X.^2).*px)-e.^2);
fprintf('Esperança: %f\n', mean(counter));
fprintf('Variancia: %f\n', var(counter));

%% Resposta às perguntas finais
%A função de hash conseguiu o objetivo de espalhar as chaves/strings pela hashtable,
%como podemos verificar pelos gráficos obtidos. Através da análise
%destes, concluímos que há poucas colisões na mesma posição entre mais do
%que duas strings, e as colisões entre duas strings são igualmente
%reduzidas.
%A média obtida foi de 0.8 o que indica que é guardada aproximadamente uma
%string em cada posição da hashtable e o valor de variância de 0.7 mostra
%que a quantidade de strings por posição é próxima do valor da média.
%Assim, temos uma distribuição uniforme das chaves pelas posições da
%hashtable.

