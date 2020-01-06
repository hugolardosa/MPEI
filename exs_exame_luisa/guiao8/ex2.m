%% Exerc�cio 2
clc
clear
%% al�nea a
T = [1/3 1/4         0;
     1/3 1-(1/4+1/5) 1/2;
     1/3 1/5         1/2];
 
 nNegativas = (T < 0);
 if(nNegativas == 0 & sum(T) == 1)
     fprintf('A matriz � estoc�stica\n')
 end
 
 %% al�nea b
 syms n;
 x = double(solve( 2*(n+n) + n + n == 90));
 v = [2*(x+x) x x]';
 
 %% al�nea c
 p = T^29*v
 
 %% al�nea d
 v = [30 30 30]';
 p = T^29*v