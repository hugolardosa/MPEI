%% Exercicio 7
%    A   B   C
T = [0.8 0.1 0.05;	%A
     0.2 0.6 0.2;   %B
     0   0.3 0.75]; %C

 %% Alinea A
 X0=[100; 200; 30];
 XA= T^3 * X0
 
 %% Alinea B
 
 XB = T^365 * X0
 %% Alina C
for i = 0:400
    tester = T^i * X0;
    if(tester(3) >= 130)
        n=i;
        break;
    end 
end
XC = T^9 * X0;
XC(3)