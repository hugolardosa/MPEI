function [y] = totoloto(subconjunto,nBolas)
%TOTOLOTO função que simula a retirada aleatória de um subconjunto de bolas

bolas = (1:nBolas);
retiradas = zeros(1,subconjunto);
for i = 1:subconjunto
    retiradas(i) = floor(rand(1,1)*nBolas + 1);
    bolas(retiradas(i)) = [];
    nBolas = nBolas -1;
end

y = retiradas
end


