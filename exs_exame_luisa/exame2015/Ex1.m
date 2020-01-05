%% Exerc�cio 1
clc 
clear
%% al�nea a
% matriz de transi��es
T = [1-(0.09+0.01) 1-(0.4+0.1) 1-(0.4+0.1);
     0.09 0.4 0.4;
     0.01 0.1 0.1];
 
 % vetor inicial
 v = [0 0 1]';
 
 %% al�nea b
 X = T^4*v;
 fprintf('\nSem erros: %f \n', X(1))
 fprintf('\nUm erro: %f \n', X(2))
 fprintf('\nDois ou mais erros: %f \n', X(3))
 
 %% al�nea c
 d = 0.001;
 i = 0;
 while(true)
     atual = T^i*v;
     if(i > 1)
        anterior = T^(i-1)*v; 
         if(i > 1 && abs(atual(1) - anterior(1)) <= d && abs(atual(2) - anterior(2)) <= d && abs(atual(3) - anterior(3)) <= d)
             break;
         end
     end
     i = i + 1;
 end
 
 fprintf('\nProbabilidade de perder o pacote: %f \n', atual(3))
 fprintf('\nProbabilidade de perder o pacote sem o c�digo corretor de erros: %f \n', atual(2)+atual(3))
 
 