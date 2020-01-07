function [u] = markov_estadoestacionario(T)
%ESTADOESTACIONÁRIO Utiliza o método das potências para calcular as
%probabilidades em estado estacionário para uma cadeia de Markov
n = length(T);
X = [zeros(1,n) 1]'; %u1 + u2 = 1 -> tem que estar um 1 na última linha
M = [T-eye(n); ones(1,n)]; %(T-I)u aumentado com u1+u2
u = M\X;  % u = M\X resolve o sistema de equações lineares M*u = X

end
