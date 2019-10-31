function [y] = gbinomial(n,p,N)
%GBinomial Gera um vetor de numeros com uma distribuição binomial
%   Detailed explanation goes here
    Bern=rand(n,N)<=p; % n Bernoulli(p)
    y=sum(Bern);
end

