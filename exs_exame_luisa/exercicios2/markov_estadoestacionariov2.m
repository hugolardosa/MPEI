function [u] = markov_estadoestacionariov2(T,X0,d)
%ESTADOESTACION�RIOv2 Calcula a matriz das probabilidades ap�s cada itera��o
%at� estabilizar, ou seja, at� a diferen�a de uma intera��o para  aoutra
%ser inferior a um limite estabelecido
i = 1;
while(true)
    tr = T^i*X0;
    if(i > length(T))
        break;
    end
    if(i>1 && i<=length(T))
        if( abs(tr(i) - tr(i-1)) < d) %se o m�ximo da diferen�a for inferior a d ent�o a matriz estabilizou
            break;
        end
    end
    i = i+1;
end
u = tr;
end

