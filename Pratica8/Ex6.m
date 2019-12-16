%% exercicio 6
%% alinea a
% matriz de transi��o

H = [0.8   0     0.3   0 ; 
     0.2   0.9   0.2   0; 
     0     0.1   0.4   0;
     0     0     0.1   1];
 
 %% alinea b
 
 X = [1; 0; 0; 0];
 Hfinal = (H^1000)*X;
 Hfinal(2) %probabilidade de ao fim de 1000 passos estar na p�gina 2
 
 
 %% alinea c
 %em 1 passo
 H;
 % em 2 passos
 H^2;
 % em 10 passos
 H^10;
 % em 100 passos
 H^100;
 
 %% alinea d
 
 Q = H(1:3,1:3);
 
 %% alinea e
 %F = (1 - Q)^(-1)
 I = eye(3);
 F = (I - Q)^(-1)
 
 %% alinea f e g
 
 sum(F) % d� o numero de saltos m�dios come�ando em cada p�gina
        % (1, 2, 3)
        
%% alinea h

Hv2 = [ 0.7 0.39 0.5 0;
        0.1 0.1 0.39 0;
        0.2 0.6 0.01 0;
        0 0 0.01 1];
Q = Hv2(1:3,1:3);
F = (I-Q)^(-1);
sum(F)


 
 
 
 
 
 
 
 
 