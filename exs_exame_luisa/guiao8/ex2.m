%% Exercício 2
clc
clear
%% alínea a
T = [1/3 1/4         0;
     1/3 1-(1/4+1/5) 1/2;
     1/3 1/5         1/2];
 
 nNegativas = (T < 0);
 if(nNegativas == 0 & sum(T) == 1)
     fprintf('A matriz é estocástica\n')
 end
 
 %% alínea b
 syms n;
 x = double(solve( 2*(n+n) + n + n == 90));
 v = [2*(x+x) x x]';
 
 %% alínea c
 p = T^29*v
 
 %% alínea d
 v = [30 30 30]';
 p = T^29*v