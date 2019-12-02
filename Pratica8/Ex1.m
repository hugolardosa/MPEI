%% Exercício 1
%% alinea a
T = [0.2 0.3; 0.8 0.7];
V = [0; 1];  %faltar, não faltar

Vr = T^2 * V;

disp(Vr(2))
%% alinea b
V = [1; 0];  %faltar, não faltar

Vr = T^2 * V;

disp(Vr(2))

%% alinea c

V = [0; 1];  %faltar, não faltar
Vr = T^(15*2-1) * V; %cada semana tem duas aulas
disp(Vr(2))

%% alinea d
%faltar, não faltar
V = [0.15;0.85]; %probabilidade de estar presente na primeira aula é de 85%

for i = 1:29
    Vr = T^i * V;
    F(i) = Vr(1);
end

plot(F)