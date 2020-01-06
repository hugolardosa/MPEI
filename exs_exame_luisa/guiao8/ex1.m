%% Exercício 1
clc
clear
%% alínea a
% P F
T = [0.7 0.8;
     0.3 0.2];
 
v = [1 0]';
p = T^2*v;
p(1)
 
%% alínea b
v = [0 1]';
p = T^2*v;
p(2)

%% alínea c
v = [1 0]';
p = T^29*v;
p(1)

%% alínea d

v = [0.85 0.15]';
atual = v;
for i=1:29
    atual = T^i*v;
    resultado(:,i) = atual(2);
end
plot(resultado);