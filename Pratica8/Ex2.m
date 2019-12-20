%% Exercício 2
%% alínea a

T = [1/3 1/4 0; 1/3 1-(1/4+1/5) 1/2; 1/3 1/5 1/2];
if(sum(T) == 1) 
    disp("É uma matriz estocástica");
else
    disp("Não é uma matriz estocástica");
end

%% alínea b
syms n;
x = double(solve( 2*(n+n)+n+n == 90));
V = [2*(x+x);x;x]; % vetor inicial

%% alínea c
Vr = T^29 * V

%% alínea d
V2 = [30; 30; 30];
Vr2 = T^29 * V2
%dá o mesmo número de alunos por grupo comparativamente à alinea c