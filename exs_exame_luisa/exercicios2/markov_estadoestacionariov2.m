function [u] = markov_estadoestacionariov2(T,X0,d)
%ESTADOESTACIONÁRIOv2 Calcula a matriz das probabilidades após cada iteração
%até estabilizar, ou seja, até a diferença de uma interação para  aoutra
%ser inferior a um limite estabelecido
i = 1;
while(true)
    tr = T^i*X0;
    if(i > length(T))
        break;
    end
    if(i>1 && i<=length(T))
        if( abs(tr(i) - tr(i-1)) < d) %se o máximo da diferença for inferior a d então a matriz estabilizou
            break;
        end
    end
    i = i+1;
end
u = tr;
end

