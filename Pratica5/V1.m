%% Primeira vers�o
%% Exerc�cio 1
% para testar a fun��o de hash:
chave(3,20)

%% Exerc�cio 2
hash1 = string2hash('MPEI � uma cadeira do segundo ano');
fprintf('Primeiro hashcode (algoritmo djb2) : %d\n', hash1);
hash2 = string2hash('MPEI � uma cadeira do segundo ano','sdbm');
fprintf('Segundo hashcode (algoritmo sbdm) : %d\n', hash2);

%% Exerc�cio 3
%inser��o de 1000 strings numa hash table
% guardar informa��o do n�mero de chaves que foram mapeadas
%numa determinada posi��o
N = 1000;
tamanho = round(N/0.8); %fator de carga 0.8
pos = zeros(1,N);
counter = zeros(1, tamanho);
for i = 1:N
    a = string2hash(chave(3,20));
    hash = mod(a, tamanho) + 1; %posi��es
    %pos(i+1) = pos(i+1)+1; %porque � que incrementamos a posi��o seguinte?
    counter(hash) = counter(hash) + 1; %incrementa o numero de strings que foram guardadas numa posi��o
    subplot(2,1,1)
    plot(counter)
    title('N�mero de strings em cada posi��o');
    drawnow
    subplot(2,1,2)
    %hist(unique(pos),0:1:max((unique(pos))))
    hist(counter, 0:1:max(counter))
    title('N�mero de posi��es com x strings');
    drawnow
end

%% Exerc�cio 4
% X -> n�mero de chaves mapeadas para uma posi��o
%max = max(counter);
px = counter./1250; %vetor com as respetivas probabilidades
stem(px); %gerar o grafico massa de probabilidade
fprintf('M�dia : %f\n', mean(counter)); %n�o temos certeza desta fun��o de matlab
fprintf('Variancia : %f\n', var(counter)); %n�o temos a certeza desta fun��o de matlab


