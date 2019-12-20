%% Exercício 4
%% alínea a
p = 0.4;
q = 0.6;
T = [p^2     0  0  q^2;
    (1-p)^2  0  0  q*(1-q);
    p*(1-p)   0  0  q*(1-q);
    p*(1-p)   1  1  (1-q)^2];

%% alínea b

V = [1 0 0 0]';
Vr = T^10 * V;
fprintf('Probabilidade de chegar ao estado B: %f \n' , Vr(2))
% restantes estados
fprintf('Probabilidade de chegar ao estado A: %f \n' , Vr(1))
fprintf('Probabilidade de chegar ao estado C: %f \n' , Vr(3))
fprintf('Probabilidade de chegar ao estado D: %f \n' , Vr(4))

