%% Exercício 8
%considerar a variância 7?
var = 2;
media = 14;
sr = sqrt(var)*BoxMuller(30)+media; %%perguntar ao prof se podemos fazer round
sr
subplot(1,2,1)
histogram(sr,0:1:20)
%axis([0 20 0 20])
title('Sem rejeição')
sr(sr< -5*var+media | sr>5*var+media) = [];  % aplicar o método da gaussiana normalizada
subplot(1,2,2)
histogram(sr,0:1:20)
title('Com rejeição')
%axis([0 20 0 20])
max = sum(sr == mode(sr));
d1 = sprintf('Valor máximo: %d', max); %verificar
disp(d1)

