%% Exercício 2015-2016
%% alínea a
clear
clc
T= [0    0   0.5 0   0.5 0.2;
    0.25 1/3 0.5 0.5 0.5 0.2;
    0.25 0   0   0   0   0.2;
    0.25 1/3 0   0   0   0.2;
    0.25 0   0   0.5 0   0.2;
    0    1/3 0   0   0   0];

X0 = (ones(1,6)/6)';
R = T^3 * X0;

fprintf('Pagerank A: %f \n' , R(1))
fprintf('Pagerank B: %f \n' , R(2))
fprintf('Pagerank C: %f \n' , R(3))
fprintf('Pagerank D: %f \n' , R(4))
fprintf('Pagerank E: %f \n' , R(5))
fprintf('Pagerank F: %f \n' , R(6))
%% alínea b
atual = X0;
N = 100;
for i= 1:N
    atual = T*atual;
    resultado(:,i) = atual; %está a guardar todos os vetores obtidos numa unica matriz
    plotA(i) = atual(1);
    plotB(i) = atual(2);
    plotC(i) = atual(3);
    plotD(i) = atual(4);
    plotE(i) = atual(5);
    plotF(i) = atual(6);
end
%%%%%%%%%%%%%%% maneira alternativa de fazer o gráfico %%%%%%%%%%%%%%%%%%%
%scale = [1:100, 1:100, 1:100, 1:100, 1:100,1:100];
%graf = [resultado(1, 1:100), resultado(2, 1:100), resultado(3, 1:100), resultado(4, 1:100), resultado(5, 1:100), resultado(6, 1:100)];
%stem(scale, graf);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,2,1)
stem(1:6, resultado)
title('evolução do pagerank');
n = (1:100);
subplot(1,2,2)
hold on
plot(n,plotA);
plot(n,plotB);
plot(n,plotC);
plot(n,plotD);
plot(n,plotE);
plot(n,plotF);
title('evolução do pagerank');

%% alínea c

size = length(T);
M = [T-eye(size);ones(1,size)];
X = [zeros(1,size) 1]';
u = M\X
[x,y] = max(u);
pages = ['A' 'B' 'C' 'D' 'E' 'F'];
fprintf('\nPágina com maior valor de pagerank (%f): %s\n', x, pages(y))

%find(u == max(u)) %outra maneira de ter o indice do valor máximo
