%% Exercício 4
%% alínea a
p = 0.4;
q = 0.6;
T = [p^2     0  0  q^2;
    (1-p)^2  0  0  q(1-q);
    p(1-p)   0  0  q(1-q);
    p(1-p)   1  1  (1-q)^2];

%% alínea b

V = [1 0 0 0]';
Vr = T^10 * V;
Vr(2) % B
Vr(1) % A
Vr(3) % C
Vr(4) % D

%% alínea c

