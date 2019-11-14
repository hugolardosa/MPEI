function [Y] = chave_v2(media, var)
    alpha = ['A':'Z' 'a':'z' ]; %todos os caracteres que podem ser usados
    tamanho = abs(floor(media+randn(1,1)*sqrt(var))); %tamanho aleatório
    pmfPT = pmfLetrasPT({'pg21209.txt','pg26017.txt'},alpha);
    for i=1:tamanho
        idx=1+sum(rand(1,1)>cumsum(pmfPT));
        Y(i)=alpha(idx);
    end
end

