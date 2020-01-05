%% Exercício 2
clc
clear
%% alínea a 

T = [0    0.1 0   0.5;
     0.1  0   0   0.1;
     0.05 0.1 0   0.1;
     0.01 0.1 0.1 0];
 
 v = ([1 2 10 5]*10e6)';
 
 Tr = T^7*v;
 fprintf('Angola: %f toneladas', Tr(1))
 fprintf('\nBrasil: %f toneladas', Tr(2))
 fprintf('\nChile: %f toneladas', Tr(3))
 fprintf('\nDinamarca: %f toneladas\n', Tr(4))
 
 %% alínea b
 A = 0;
 B = 0;
 C = 0;
 D = 0;
 i = 1;
 while(true)
     atual = T^i*v;
     A = [A atual(1)];
     B = [B atual(2)];
     C = [C atual(3)];
     D = [D atual(4)];
     if(i > 1) 
         anterior = T^(i-1)*v;
         if(abs(atual - anterior) < 0.01)
             break;
         end
     end
     i = i + 1;
 end
 fprintf('\nAngola: %.1f toneladas', max(A))
 fprintf('\nBrasil: %.1f toneladas', max(B))
 fprintf('\nChile: %.1f toneladas', max(C))
 fprintf('\nDinamarca: %.1f toneladas\n', max(D))
 
 %% alínea c
 j = 1;
 while(true)
     q = T^j*v;
     if(q(4) < 2*10e6)
         break;
     end
     j = j + 1;
 end
 
 fprintf('\nMês %d\n', j)