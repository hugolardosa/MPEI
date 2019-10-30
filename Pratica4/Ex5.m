%% Exercicio 5
p6 = 0.5;
px = [(1-p6)/5 + zeros(1,5),p6];
x = [1 2 3 4 5 6];
N = 10000;

histogram(fmp(x,px,N),1:1:10)