function [y] = gbinomial(n,p,N)
%GBinomial Gera um vetor de numeros com uma distribuição binomial
%   Detailed explanation goes here
    for k = 0:N
        y(1,k+1) = factorial(n) / (factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)
    end
end

