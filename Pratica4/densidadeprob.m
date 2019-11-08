function [Y] = densidadeprob(X)
%GAUSSIANA NORMALIZADA Fun��o densidade de probabilidade
Y = 1/sqrt(2*pi)*exp((-(X)^2/2));
end

