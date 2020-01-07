%% Exerc�cio 5
clc
clear
%% al�nea a
% sol nuvens chuva
T = [0.7 0.2 0.1;
     0.2 0.3 0.5;
     0.3 0.3 0.4]';
 
 %% al�nea b
 v = [1 0 0]';
 Tr = T^2*v;
 Tr(3)
 
 %% al�nea c
 atual = v;
 for i = 1:20
     atual = T*atual;
     sol(i) = atual(1);
     nuvens(i) = atual(2);
     chuva(i) = atual(3);
 end
 subplot(1,2,1)
 hold on
 plot(sol);
 plot(nuvens);
 plot(chuva);
 
 %% al�nea d
 i = 1;
 atual = v;
 while(true)
     atual = T*atual;
     if(i > 1)
         if(abs(atual - anterior) < 10^(-4))
             break;
         end
     end
     sol2(i) = atual(1);
     nuvens2(i) = atual(2);
     chuva2(i) = atual(3);
     anterior = atual;
     i = i + 1;
 end
 subplot(1,2,2)
 hold on
 plot(1:i-1,sol2);
 plot(1:i-1,nuvens2)
 plot(1:i-1,chuva2)