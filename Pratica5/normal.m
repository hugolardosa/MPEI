function [Y] = normal(X,m,v)
Y = zeros(1,length(X));
    for i = 1:length(X)
        Y(i) = 1/(v*sqrt(2*pi))*exp((-(((X(i)-m)/v))^2/2));
    end
end

