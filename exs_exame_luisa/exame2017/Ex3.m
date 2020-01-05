%% Exercício 3
clc
clear
%% alínea a
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
 
 %% alínea b
 % condições iniciais
v = [1 0 0 0 0 0]';

Tr_10 = T^10*v;
fprintf('\nP[décimo caracter ser um "c"] = %f', Tr_10(3))

Tr_15 = T^15*v;
fprintf('\nP[décimo quinto caracter ser um "d"] = %f', Tr_15(4))

%% alínea c

Q = T(1:4,1:4);
F = inv(eye(4) - Q); % número médias de visitas A CADA ESTADO antes da absorção (? e .)
t = sum(F); % soma do número de visitas a TODOS OS ESTADOS antes da absorção (? e .)
% como a cadeia começa em c, vamos buscar a posição 3
fprintf('\nComprimento = %f\n', t(3))

