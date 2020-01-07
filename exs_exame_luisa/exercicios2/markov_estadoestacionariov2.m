function [u] = markov_estadoestacionariov2(T,X0,d)
%ESTADOESTACION�RIOv2 Calcula a matriz das probabilidades ap�s cada itera��o
%at� estabilizar, ou seja, at� a diferen�a de uma intera��o para  aoutra
%ser inferior a um limite estabelecido
i = 1;
while(true)
    X0 = T*X0;
    valores(i) = X0(2);
    if(i > length(T))
        break;
    end
    if(i>1 && i<=length(T))
        if( abs(X0 - anterior) < d) %se o m�ximo da diferen�a for inferior a d ent�o a matriz estabilizou
            break;
        end
    end
    anterior = X0;
    i = i+1;
end
plot(valores);
u = X0;
end

