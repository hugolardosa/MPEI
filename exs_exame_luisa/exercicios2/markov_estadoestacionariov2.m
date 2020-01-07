function [u] = markov_estadoestacionariov2(T,X0,d)
%ESTADOESTACIONÁRIOv2 Calcula a matriz das probabilidades após cada iteração
%até estabilizar, ou seja, até a diferença de uma interação para  aoutra
%ser inferior a um limite estabelecido
i = 1;
while(true)
    X0 = T*X0;
    valores(i) = X0(2);
    if(i > length(T))
        break;
    end
    if(i>1 && i<=length(T))
        if( abs(X0 - anterior) < d) %se o máximo da diferença for inferior a d então a matriz estabilizou
            break;
        end
    end
    anterior = X0;
    i = i+1;
end
plot(valores);
u = X0;
end

