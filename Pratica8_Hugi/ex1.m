%% alinea a
% 0.2[f]-(>0.8)(0.3<)-[nf]0.7
%       F   NF
%T=  F[0.2 0.3]
%   NF[0.8 0.7]
%V=F [0]          V1= T*V
%  NF[1]          Vr = T^2*V;

T = [0.2 0.3;0.8 0.7];
V=[0;1];%%[faltar,naoFaltar]
Vr=T^2*V;
resposta = Vr(2);
disp(resposta);
%% alinea b
T = [0.2 0.3;0.8 0.7];
V=[1;0]; %%[faltar;naoFaltar]
Vr=T^2*V;
resposta = Vr(2);
disp(resposta);
%% aliena c
T = [0.2 0.3;0.8 0.7];
V=[0;1]; %%[faltar;naoFaltar]
Vr=T^(15*2 - 1)*V;%duas aulas por semana menos a primeira aula 
resposta = Vr(2);
disp(resposta);
%% alinea d
V= [0.15;0.85];
for i=1:29
    Vr=T^i*V;
    F(i) = Vr(1);
end
plot(F);

