%% Exerc�cio 7
%classifica��es de uma turma de 30 alunos por forma a terem m�dia 14 e vari�ncia 2
subplot(1,2,1)
histogram(sqrt(2)*BoxMuller(30)+14)
title('Box-Muller')
axis([0 20 0 20])
    
%compara��o
subplot(1,2,2)
histogram(randn(1,30)*sqrt(2)+14)
title('RandN')
axis([0 20 0 20])