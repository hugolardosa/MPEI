%% Exerc�cio 8
%considerar a vari�ncia 7?
sr = round(sqrt(10)*BoxMuller(30)+0); %%perguntar ao prof se podemos fazer round
sr
subplot(1,2,1)
histogram(sr,-7:1:7)
%axis([0 20 0 20])
title('Sem rejei��o')
sr(sr<-5 | sr>5) = [];
subplot(1,2,2)
histogram(sr,-7:1:7)
title('Com rejei��o')
%axis([0 20 0 20])
max = sum(sr == mode(sr));
d1 = sprintf('Valor m�ximo: %d', max); %verificar
disp(d1)

