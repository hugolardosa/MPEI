%% Exerc�cio 3
clc
clear
%% al�nea a
%%%%%%%%%%
% a -> 1 %
% b -> 2 %
% c -> 3 %
% d -> 4 %
% ? -> 5 %
% . -> 6 %
%%%%%%%%%%

T = [0.7 0.2 0   0   0  0;
     0.2 0   0.3 0   0  0;
     0   0.6 0.3 0   0  0;
     0.1 0.2 0.3 0.1 0  0;
     0   0   0   0.4 1  0;
     0   0   0.1 0.5 0  1];
 
 %% al�nea b
 % condi��es iniciais
v = [1 0 0 0 0 0]';

Tr_10 = T^10*v;
fprintf('\nP[d�cimo caracter ser um "c"] = %f', Tr_10(3))

Tr_15 = T^15*v;
fprintf('\nP[d�cimo quinto caracter ser um "d"] = %f', Tr_15(4))

%% al�nea c

Q = T(1:4,1:4);
F = inv(eye(4) - Q); % n�mero m�dias de visitas A CADA ESTADO antes da absor��o (? e .)
t = sum(F); % soma do n�mero de visitas a TODOS OS ESTADOS antes da absor��o (? e .)
% como a cadeia come�a em c, vamos buscar a posi��o 3
fprintf('\nComprimento = %f\n', t(3))

