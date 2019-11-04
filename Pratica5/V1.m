%% Primeira vers�o
%% Exerc�cio 1
% para testar a fun��o de hash:
chave()

%% Exerc�cio 2
hash1 = string2hash('MPEI � uma disciplina do segundo ano');
disp(hash1)
hash2 = string2hash('MPEI � uma disciplina do segundo ano','sdbm');
disp(hash2)

%% Exerc�cio 3
tamanho = round(1000/0.8); %fator de carga 0.8
res = zeros(1,tamanho);
for i = 1:tamanho
    hash = string2hash(chave());
    res(i) = mod(hash, tamanho);
    res(i+1) = res(i+1)+1;
    subplot(1,2,1)
    hist(res, 0:tamanho)
    drawnow
    subplot(1,2,2)
    hist(unique(i),0:1:max((unique(i))))
    drawnow
end
    
    