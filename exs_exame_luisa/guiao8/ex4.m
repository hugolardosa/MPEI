%% Exerc�cio 4
clc
clear
%% al�nea a
p = 0.4;
q = 0.6;
T = [p^2     0 0 q^2;
     (1-p)^2 0 0 q*(1-q);
     p*(1-p) 0 0 q*(1-q);
     p*(1-p) 1 1 (1-q)^2]
 
 %% al�nea b
 
 v = [1 0 0 0]';
 Tr = T^10*v;
 Tr(2)