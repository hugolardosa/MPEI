%% Exerc�cio 6
%% al�nea a
% matriz de transi��o

H = [0.8   0     0.3   0 ; 
     0.2   0.9   0.2   0; 
     0     0.1   0.4   0;
     0     0     0.1   1];
 
 %% al�nea b
 
 X = [1; 0; 0; 0];
 Hfinal = (H^1000)*X;
 Hfinal(2) %probabilidade de ao fim de 1000 passos estar na p�gina 2
 
 
 %% al�nea c
 %em 1 passo
 H;
 % em 2 passos
 H^2;
 % em 10 passos
 H^10;
 % em 100 passos
 H^100;
 
 %% al�nea d
 
 Q = H(1:3,1:3);
 
 %% al�nea e
 %F = (1 - Q)^(-1)
 I = eye(3);
 F = (I - Q)^(-1)
 
 %% al�neas f e g
 
 sum(F) % d� o numero de saltos m�dios come�ando em cada p�gina
        % (1, 2, 3)
        
%% al�nea h

Hv2 = [ 0.7 0.39 0.5 0;
        0.1 0.1 0.39 0;
        0.2 0.6 0.01 0;
        0 0 0.01 1];
Q = Hv2(1:3,1:3);
F = (I-Q)^(-1);
sum(F)
 
 