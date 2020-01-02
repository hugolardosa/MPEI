%% Problema 1

T = [7 8; 3 2]/10;
X0 = [0.5 0.5]';
d = 1e-5;
u_teorico = markov_estadoestacionario(T)
u_obtido = markov_estadoestacionariov2(T, X0,d)
%% Problema 2

T = [0 0.5 0   0; 
     1 0   0.6 0.6; 
     0 0   0   0.4; 
     0 0.5 0.4 0];
 X0 = [0.25 0.25 0.25 0.25]';
 %%%% problema 3 %%%%
 %X0 = [1 0 0 0]';
 %X0 = [0 1 0 0]';
 % como seria de esperar, continua a convergir para o mesmo vetor, pois o
 % vetor estacionário é único
 %%%% fim do problema 3 %%%%
 d = 1e-5;
 U_teorico = markov_estadoestacionario(T)
 U_obtido = markov_estadoestacionariov2(T, X0, d)