%% Exercício 7
%    A   B   C
T = [0.8 0.1 0.05;	%A
     0.2 0.6 0.2;   %B
     0   0.3 0.75]; %C

 %% alínea a
 X0=[100; 200; 30];
 XA = T^3 * X0;
 fprintf('alínea a\n')
 fprintf('\nAna: %f €\nBernardo: %f €\nCatarina: %f €\n' , XA(1), XA(2), XA(3))
 
 %% alínea b
 XB = T^365 * X0;
 fprintf('\nalínea b\n')
 fprintf('\nAna: %f €\nBernardo: %f €\nCatarina: %f €\n' , XB(1), XB(2), XB(3))

 %% alínea c
for i = 0:400
    tester = T^i * X0;
    if(tester(3) >= 130)
        n=i;
        break;
    end 
end
fprintf('\nDia %d de %s\n', 1+n, 'janeiro')
%XC = T^9 * X0;
%XC(3)