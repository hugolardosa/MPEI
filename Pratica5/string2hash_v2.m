function [Y] = string2hash_v2(string,N)
%Função hash v2 Nova função de hash para a versão 3 do guião
% Função baseada no algoritmo de Daniel J. Bernstein, consultada no sumario de MPEI de 2014 (Prof. Paulo Jorge Ferreira)
    string=double(string);
    hash = 5381*ones(size(string,1),1); 
    for i=1:size(string,2)
        hash = mod(hash * 31 + string(:,i), N); 
    end
end


