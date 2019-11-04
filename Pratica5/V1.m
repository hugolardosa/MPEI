%% Primeira versão
%% Exercício 1
% para testar a função de hash:
chave()

%% Exercício 2
hash1 = string2hash('MPEI é uma disciplina do segundo ano');
disp(hash1)
hash2 = string2hash('MPEI é uma disciplina do segundo ano','sdbm');
disp(hash2)

%% Exercício 3
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
    
    