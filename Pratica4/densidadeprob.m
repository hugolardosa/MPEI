function [Y] = densidadeprob(X)
%GAUSSIANA NORMALIZADA Função densidade de probabilidade
Y = zeros(1,length(X));
for i = 1:length(X)
    Y(i) = 1/sqrt(2*pi)*exp((-(X(i))^2/2));
end

