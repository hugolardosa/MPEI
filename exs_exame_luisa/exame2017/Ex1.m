%% Exercício 1
clc 
clear
%% alínea a
% matriz de transições
T = [1-(0.09+0.01) 1-(0.4+0.1) 1-(0.4+0.1);
     0.09 0.4 0.4;
     0.01 0.1 0.1];
 
 % vetor inicial
 v = [0 0 1]';
 
 %% alínea b
 X = T^4*v;
 fprintf('\nSem erros: %f \n', X(1))
 fprintf('\nUm erro: %f \n', X(2))
 fprintf('\nDois ou mais erros: %f \n', X(3))
 
 %% alínea c
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
 fprintf('\nProbabilidade de perder o pacote sem o código corretor de erros: %f \n', atual(2)+atual(3))
 
 