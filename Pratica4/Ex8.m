%% Exercício 8
%considerar a variância 7?
sr = sqrt(7)*BoxMuller(30)+0;
sr
subplot(1,2,1)
histogram(sr,-7:1:7)
%axis([0 20 0 20])
title('Sem rejeição')
sr(sr<-5 | sr>5) = [];
subplot(1,2,2)
histogram(sr,-7:1:7)
title('Com rejeição')
%axis([0 20 0 20])
