function [F] = adicionarElemento(elemento, F, k)
%ADIÇÃO DE ELEMENTO Summary of this function goes here
    for i = 1:k   %percorrer todas as funções de dispersão
        h = string2hash([elemento , num2str(i)]);
        h = rem(h,length(F));
        F(h+1) = 1;
    end
end

