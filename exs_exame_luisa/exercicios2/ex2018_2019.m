%% Exercício 2018-2019
%% alínea a
clear 
clc
T = [0.7 0.1 0   0   0  0;
     0.2 0   0.3 0   0  0;
     0   0.6 0.1 0   0  0;
     0.1 0.3 0.4 0.1 0  0;
     0   0   0   0.5 1  0;
     0   0   0.2 0   0  1];
 
X0 = [0 0.5 0.5 0 0 0]'; 


%% alínea b

Q = T(1:4,1:4);
F = inv(eye(4)-Q);
t = sum(F); %tempo médio até à absorção
%como estava inicialmente no iraque vamos buscar o indice 1
fprintf('\nTempo médio: %f meses\n', t(1))



%% alínea c

X0 = [1 0 0 0 0 0]'; %parte do Iraque

P_5meses = (T^5*X0);
P_EUA = P_5meses(6);
fprintf('\nP[Iraque -> EUA, em 5 meses]= %f \n',P_EUA)

X0 = [0 0 0 1 0 0]'; %parte do Brasil
P_50meses = (T^50*X0);
P_Israel = P_50meses(5);
fprintf('\nP[Brasil -> Israel, em 50 meses]= %f \n',P_Israel)
