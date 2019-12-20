%% Exerc�cio 1
%% alinea a
T = [0.2 0.3; 0.8 0.7];
V = [0; 1];  %[faltar; n�o faltar] est� presente na primeira

Vr = T^2 * V; %elevado a 2 porque passaram duas aulas

disp(Vr(2)) %vamos buscar o segundo valor porque corresponde a estar presente
%% alinea b
V = [1; 0];  %[faltar, n�o faltar] falta na primeira

Vr = T^2 * V; %elevado a 2 porque passaram duas aulas

disp(Vr(2)) %vamos buscar o segundo valor porque corresponde a estar presente

%% alinea c

V = [0; 1];  %[faltar, n�o faltar]
Vr = T^(15*2-1) * V; %cada semana tem duas aulas e tiramos a �ltima de todas
disp(Vr(2)) %vamos buscar o segundo valor porque corresponde a estar presente

%% alinea d
%faltar, n�o faltar
V = [0.15;0.85]; %probabilidade de estar presente na primeira aula � de 85%

for i = 1:29
    Vr = T^i * V;
    F(i) = Vr(1); %vamos buscar o segundo valor porque corresponde a faltar
end

plot(F)