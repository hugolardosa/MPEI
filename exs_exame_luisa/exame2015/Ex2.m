%% Exercício 2
clc
clear
%% alínea a
% matriz de hyperlinks (necessita de estar na forma canónica?)
H = [0   1/2 1/3 1/4 0;
     1/2 0   0   1/4 1/2;
     1/2 1/2 1/3 1/4 0;
     0   0   0   0   1/2;
     0   0   1/3 1/4 0];
 
 %[1/N], com N = 5 pois há 5 páginas
 N = ones(5,5)/5;
 
 B = 0.8;
 % matriz da Google
 A = B*H + (1-B)*N
 
 %% alínea b
 
 v = ones(5,1)/5;
 Pr = A^10*v;
 fprintf('\nC = %f', Pr(1))
 fprintf('\nD = %f', Pr(2))
 fprintf('\nE = %f', Pr(3))
 fprintf('\nF = %f', Pr(4))
 fprintf('\nG = %f\n', Pr(5))
 