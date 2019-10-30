%% Exercício 8

sr = sqrt(2)*BoxMuller(30)+14;
sr
subplot(1,2,1)
histogram(sr)
axis([0 20 0 20])
title('Sem rejeição')
sr(sr<9 | sr>19) = [];
subplot(1,2,2)
histogram(sr)
title('Com rejeição')
axis([0 20 0 20])
