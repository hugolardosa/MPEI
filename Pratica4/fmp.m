function [y] = fmp(xi,pX, N)
%FMP funcão de massa de probabilidade
    p =  pX/sum(pX)
    y = zeros(1,N)
    for j=1:N
        i = 1+sum(rand()>cumsum(p));
        y(i) = xi(i);
    end
end

