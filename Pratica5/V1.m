%% Primeira versão
%% Exercício 1
% para testar a função de hash:
chave(3,20)

%% Exercício 2
hash1 = string2hash('MPEI é uma cadeira do segundo ano');
fprintf('Primeiro hashcode (algoritmo djb2) : %d\n', hash1);
hash2 = string2hash('MPEI é uma cadeira do segundo ano','sdbm');
fprintf('Segundo hashcode (algoritmo sbdm) : %d\n', hash2);

%% Exercício 3
%inserção de 1000 strings numa hash table
% guardar informação do número de chaves que foram mapeadas
%numa determinada posição
N = 1000;
tamanho = round(N/0.8); %fator de carga 0.8
pos = zeros(1,N);
counter = zeros(1, tamanho);
for i = 1:N
    a = string2hash(chave(3,20));
    hash = mod(a, tamanho) + 1; %posições
    %pos(i+1) = pos(i+1)+1; %porque é que incrementamos a posição seguinte?
    counter(hash) = counter(hash) + 1; %incrementa o numero de strings que foram guardadas numa posição
    subplot(2,1,1)
    plot(counter)
    title('Número de strings em cada posição');
    drawnow
    subplot(2,1,2)
    %hist(unique(pos),0:1:max((unique(pos))))
    hist(counter, 0:1:max(counter))
    title('Número de posições com x strings');
    drawnow
end

%% Exercício 4
% X -> número de chaves mapeadas para uma posição
%max = max(counter);
px = counter./1250; %vetor com as respetivas probabilidades
stem(px); %gerar o grafico massa de probabilidade
fprintf('Média : %f\n', mean(counter)); %não temos certeza desta função de matlab
fprintf('Variancia : %f\n', var(counter)); %não temos a certeza desta função de matlab


