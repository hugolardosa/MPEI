%% Exerc�cio 2018-2019
%% al�nea a
clear 
clc
T = [0.7 0.1 0   0   0  0;
     0.2 0   0.3 0   0  0;
     0   0.6 0.1 0   0  0;
     0.1 0.3 0.4 0.1 0  0;
     0   0   0   0.5 1  0;
     0   0   0.2 0   0  1];
 
X0 = [0 0.5 0.5 0 0 0]'; 


%% al�nea b

Q = T(1:4,1:4);
F = inv(eye(4)-Q);
t = sum(F); %tempo m�dio at� � absor��o
%como estava inicialmente no iraque vamos buscar o indice 1
fprintf('\nTempo m�dio: %f meses\n', t(1))



%% al�nea c

X0 = [1 0 0 0 0 0]'; %parte do Iraque

P_5meses = (T^5*X0);
P_EUA = P_5meses(6);
fprintf('\nP[Iraque -> EUA, em 5 meses]= %f \n',P_EUA)

X0 = [0 0 0 1 0 0]'; %parte do Brasil
P_50meses = (T^50*X0);
P_Israel = P_50meses(5);
fprintf('\nP[Brasil -> Israel, em 50 meses]= %f \n',P_Israel)
