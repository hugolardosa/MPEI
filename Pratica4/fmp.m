function [y] = fmp(xi,pX, N)
%FMP funcão de massa de probabilidade
    p =  pX/sum(pX)
    y = zeros(1,N)
    for j=1:N
        U=rand()
        i = 1+sum(U>cumsum(p));
        y(i) = pX(i);
    end
end

