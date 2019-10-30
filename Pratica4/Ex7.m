%% Exercício 7
%classificacações de uma turma de 30 alunos por forma a terem média 14 e variância 2
for i=1:3
    subplot(3,2,i)
    histogram(sqrt(2)*BoxMuller(30)+14)
    title('Box-Muller')
    axis([10 20 0 15])
    
    %comparação
    subplot(3,2,i+3)
    histogram(randn(1,30)*sqrt(2)+14)
    title('RandN')
    axis([10 20 0 15])
end