%% Exerc�cio 1
% C�digo base para gui� ao PL07 MPEI 2018-2019
udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % N�mero de utilizadores
% Constr�i a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa c�lulas
for n = 1:Nu, % Para cada utilizador
% Obt�m os filmes de cada um
ind = find(u(:,1) == users(n));
% E guarda num array. Usa c�lulas porque utilizador tem um n�mero
% diferente de filmes. Se fossem iguais podia ser um array
Set{n} = [Set{n} u(ind,2)];
end
%usa as primeiras 100 entradas (linha tempor�ria)
n1 = 100;
%% Calcula a dist�ncia de Jaccard entre todos os pares pelo m�todo de minhash.
tic;
J=zeros(Nu); % array para guardar dist�ncias (matriz quadrada)
h= waitbar(0,'Calculating');
for n1= 1:Nu,  % para cada utilizador
tstart = tic;
waitbar(n1/Nu,h);
for n2= n1+1:Nu, %comparamos com os outros utilizadores
%% Adicionar c�digo aqui
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
%% Com base na dist�ncia, determina pares com
%% dist�ncia inferior a um limiar pr�-definido
threshold =0.4 % limiar de decis�o
% Array para guardar pares similares (user1, user2, dist�ncia)
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
sprintf('N�mero de pares de utilizadores com dist�ncias inferiores ao limiar: %d', length(SimilarUsers))