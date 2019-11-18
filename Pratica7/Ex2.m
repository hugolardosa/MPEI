%% Exercício 1
% Código base para gui˜ ao PL07 MPEI 2018-2019
udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % Número de utilizadores
% Constrói a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa células
for n = 1:Nu, % Para cada utilizador
% Obtém os filmes de cada um
ind = find(u(:,1) == users(n));
% E guarda num array. Usa células porque utilizador tem um número
% diferente de filmes. Se fossem iguais podia ser um array
Set{n} = [Set{n} u(ind,2)];
end
%usa as primeiras 100 entradas (linha temporária)
n1 = 100;
%% Calcula a distância de Jaccard entre todos os pares pelo método de minhash.
tic;
J=zeros(Nu); % array para guardar distâncias (matriz quadrada)
h= waitbar(0,'Calculating');
for n1= 1:Nu,  % para cada utilizador
tstart = tic;
waitbar(n1/Nu,h);
for n2= n1+1:Nu, %comparamos com os outros utilizadores
%% Adicionar código aqui
k = 1;
a1 = Set{n1};
a2 = Set{n2};
a = minHash(a1,k);
b = minHash(a2,k);
J(n1,n2) = min(a,b);
end
telapsed = toc(tstart);
%minTime = min(telapsed,minTime);
end
averageTime= toc/Nu
delete (h)
%% Com base na distância, determina pares com
%% distância inferior a um limiar pré-definido
threshold =0.4 % limiar de decisão
% Array para guardar pares similares (user1, user2, distância)
SimilarUsers= zeros(1,3);
k= 1;
tic;
for n1= 1:Nu,
    tstart = tic;
for n2= n1+1:Nu,
if  J(n1,n2) <= threshold
SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)];
k= k+1;
end
telapsed = toc(tstart);
%minTime2 = min(telapsed, minTime2);
end
end
averageTime2 = toc/Nu;
SimilarUsers
sprintf('Número de pares de utilizadores com distâncias inferiores ao limiar: %d', length(SimilarUsers))