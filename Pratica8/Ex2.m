%% Exerc�cio 2
%% al�nea a

T = [1/3 1/4 0; 1/3 1-(1/4+1/5) 1/2; 1/3 1/5 1/2];
if(sum(T) == 1) 
    disp("� uma matriz estoc�stica");
else
    disp("N�o � uma matriz estoc�stica");
end

%% al�nea b
syms n;
x = double(solve( 2*(n+n)+n+n == 90));
V = [2*(x+x);x;x]; % vetor inicial

%% al�nea c
Vr = T^29 * V

%% al�nea d
V2 = [30; 30; 30];
Vr2 = T^29 * V2
%d� o mesmo n�mero de alunos por grupo comparativamente � alinea c