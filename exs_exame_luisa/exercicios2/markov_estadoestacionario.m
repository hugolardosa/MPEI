function [u] = markov_estadoestacionario(T)
%ESTADOESTACION�RIO Utiliza o m�todo das pot�ncias para calcular as
%probabilidades em estado estacion�rio para uma cadeia de Markov
n = length(T);
X = [zeros(1,n) 1]'; %u1 + u2 = 1 -> tem que estar um 1 na �ltima linha
M = [T-eye(n); ones(1,n)]; %(T-I)u aumentado com u1+u2
u = M\X;  % u = M\X resolve o sistema de equa��es lineares M*u = X

end
