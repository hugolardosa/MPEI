function [y] = membro(elemento, F, k)
%UNTITLED4 Summary of this function goes here
y = 1;
for i = 1:k   %percorrer todas as funções de dispersão
        h = string2hash([elemento , num2str(i)]);
        h = rem(h,length(F));
        if F(h+1) == 0
            y = 0;
            break;
        end
end
end
