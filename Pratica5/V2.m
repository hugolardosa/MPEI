%% Segunda vers�o
%% Exerc�cio 1
% para testar a fun��o de hash:
chave_v2(10,5)

%% Exerc�cio 2
%inser��o de 1000 strings numa hash table
% guardar informa��o do n�mero de chaves que foram mapeadas
%numa determinada posi��o
N = 1000;
tamanho = round(N/0.8); %fator de carga 0.8
pos = zeros(1,N);
counter = zeros(1, tamanho);
for i = 1:N
    a = string2hash(chave_v2(10,5));
    hash = mod(a, tamanho) + 1; %posi��es
    counter(hash) = counter(hash) + 1; %incrementa o numero de strings que foram guardadas numa posi��o
    subplot(2,1,1)
    stem(counter)
    title('N�mero de strings em cada posi��o');
    drawnow
    subplot(2,1,2)
    hist(counter, 0:1:max(counter))
    title('N�mero de posi��es com x strings');
    drawnow
end

%% Exerc�cio 3
% X -> n�mero de chaves mapeadas para uma posi��o
%length(counter);
px = counter/tamanho; %vetor com as respetivas probabilidades
dist = cumsum(px);
stairs(dist); %gerar o grafico de fun��o de distribui��o acumulada
%X = [1:length(counter)];
%e = sum(X.*px');
%var = sum(((X.^2).*px)-e.^2);
fprintf('Esperan�a: %f\n', mean(counter));
fprintf('Variancia: %f\n', var(counter));

