function [y] = lcg(X0,a,c,m,N)
%LCG Fun��o que gera um vector de n�meros aleat�rios com base no m�todo da Congru�ncia
%    
    
    y(1,1) = X0;
    for i = 2:N
        y(1,i) = rem((a*y(i-1) + c),m);
    end
end

