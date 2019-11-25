function [Y] = minHash(a,k)
%MINHASH Summary of this function goes here
Y = zeros(1,length(a));
for n = 1:length(a)    
    for i=1:k
        set = a{n};
        str = num2str(set);
        hashcode = string2hash([str, num2str(k)]);
        hashcode = rem(hashcode, length(a));
        if hashcode < Y(n)
            Y(n) = hashcode;
        end
    end
end
end
