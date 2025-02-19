%% alinea a 
%Defina, em Matlab, a matriz de transi�ao T. Assuma p = 0.4 e q = 0.6;

p = 0.4; 
q=0.6;

%   A        B C D
T=[p^2 		 0 0 q^2;  		%A
   ((1-p)^2) 0 0 (q*(1-q)); %B
   (p*(1-p)) 0 0 (q*(1-q)); %C
   (p*(1-p)) 1 1 ((1-q)^2)] %D
   
%% alinea b
%Qual a probabilidade de o sistema chegar ao estado B apos 10 transi��es adicionais caso inicial-
%mente se encontre no estado A ?
%E de chegar a cada um dos outros estados para as mesmas condi��es ?
X0 = [1 ; 0; 0; 0];
X10 = T^10 * X0;
%resposta 1
fprintf('Probabilidade de chegar ao estado:\nB %f \n \n', X10(2))
%resposta 2 (tendo em conta que as mesmas condi��es s�o as mesmas da alinea anterior)
fprintf('Probabilidade de chegar aos outros estados:\nA %f \nC %f \nD %f \n', X10(1),X10(3),X10(4))

