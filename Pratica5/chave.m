function [X] = chave(min, max)
%CHAVE Esta fun��o gera uma string
tamanho = round(rand()*(max-min)+min); %tamanho aleat�rio entre 3 e 20
alpha = ['A':'Z' 'a':'z' ]; %todos os caracteres que podem ser usados
%for i= 1:tamanho
%   X(i) = alpha(randi(length(alpha)));
%end
X = alpha(randi(length(alpha),1,tamanho));
end
