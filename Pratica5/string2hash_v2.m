function [Y] = string2hash_v2(string,N)
%Fun��o hash v2 Nova fun��o de hash para a vers�o 3 do gui�o
% Fun��o baseada no algoritmo de Daniel J. Bernstein, consultada no sumario de MPEI de 2014 (Prof. Paulo Jorge Ferreira)
    string=double(string);
    hash = 5381*ones(size(string,1),1); 
    for i=1:size(string,2)
        hash = mod(hash * 31 + string(:,i), N); 
    end
end


