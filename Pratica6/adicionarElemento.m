function [F] = adicionarElemento(elemento, F, k)
%ADI��O DE ELEMENTO Summary of this function goes here
    for i = 1:k   %percorrer todas as fun��es de dispers�o
        h = string2hash([elemento , num2str(i)]);
        h = rem(h,length(F));
        F(h+1) = 1;
    end
end

