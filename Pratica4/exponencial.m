function [y] = exponencial(N,m)
%Exponecial Summary of this function goes here
%   Detailed explanation goes here
    U = rand(1,N);
    y = -m*log(U);
end

