%% Exerc�cio 3
%% alinea a
T=zeros(20);
for i= 1:20
    for j=1:20
        T(j,i) = rand;
    end
    T(:,i)=T(:,i)./sum(T(:,i));
end

V=zeros(20,1);
V(1,1)=1; %pomos um 1 na primeira posi��o porque partimos do estado 1

Vr20=(T^20)*V; %20 transi��es
Vr20(20,1) %transi��o do 1 para o 20

Vr40=(T^40)*V; %40 transi��es
Vr40(20,1) %transi��o do 1 para o 20

Vr100=(T^100)*V; %100 transi��es
Vr100(20,1) %transi��o do 1 para o 20