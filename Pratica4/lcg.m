function [y] = lcg(X0,a,c,m,N)
%LCG Função que gera um vector de números aleatórios com base no método da Congruência
%    
    
    y(1,1) = X0;
    for i = 2:N
        y(1,i) = rem((a*y(i-1) + c),m);
    end
end

