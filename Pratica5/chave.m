function [X] = chave()
%UNTITLED2 This function generates a hash value from a text string
tamanho = round(rand()*17+3); %aleatório entre 3 e 20
alpha = ['A':'Z' 'a':'z' ];
%for i= 1:tamanho
%   X(i) = alpha(randi(length(alpha)));
%end
X = alpha(randi(length(alpha),1,tamanho));
end
