function [Y] = minHash(a,k)
%MINHASH Summary of this function goes here
Y = zeros();
for n = 1:length(a)    
    for i=1:k
        str = num2str(a(1));
        hashcode = string2hash([str, num2str(k)]);
        hashcode = rem(hashcode, length(a));
        if hashcode < Y(k)
            Y(k) = hashcode;
        end
    end
end
end
