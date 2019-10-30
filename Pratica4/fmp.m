function [y] = fmp(x,px, N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    p =  px/sum(px)
    y = zeros(1,N)
    for j=1:N
        U=rand()
        i = 1+sum(U>cumsum(p));
        y(i) = px(i);
    end
end

