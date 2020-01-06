%% Exercício 3
clc
clear
%% alínea a
T = zeros(20);
for i = 1:20
    for j = 1:20
        T(j,i) = rand;
    end
    T(:,i) = T (:,i)./sum(T(:,i)); % garante que vai ser estocástica
end
v= [1; zeros(19,1)];
p20 = (T^20)*v;
p20(20,1)
p40 = (T^40)*v;
p40(20,1)
p100 = (T^100)*v;
p100(20,1)