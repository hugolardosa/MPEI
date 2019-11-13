% nr string = 1000;
% fator de carga = 0.8 -> 1000/N
% N é um número primo -> N = 1259 neste caso
n = 1000;
f = 0.8;
N = n/f;
array = zeros(1, N);
for i = 1 : n
    string = stringGenerator_v1(3, 20);
    hash = myHash(string, N) + 1;
    array(hash) = array(hash) + 1;
end
figure(1)
subplot(2,1,2)
xbins=0:max(array);
[colisoes indicies] = hist(array,xbins);
hist(array,xbins)
title('Histograma do num de strings que foram mapeadas pela hash function para cada pos');
subplot(2,1,1)
stem(array)
title('Num de strings que foram mapeadas pela hash function para cada pos');


%%Exercicio 4
%%num de colisoes = num listas ligadas
pColisoes = colisoes/N
figure(2)
stem(pColisoes)
dist = cumsum(pColisoes)
stairs(dist)
E = [0:max(array)]*pColisoes'
Var = (([0:max(array)]-E).^2)*pColisoes'


function chave = stringGenerator_v1(a,b)
    strLength = randi([a b]);
    letras = ['A':'Z' 'a':'z'];
    chaveN = zeros(1,strLength);
    for k = 1 : strLength
        i = randi([1 length(letras)]);
        chaveN(k) = letras(i);
    end
    chave = char(chaveN);
end

function hash=myHash(str,N)
    str=double(str);
    hash = 5381*ones(size(str,1),1); 
    for i=1:size(str,2)
        hash = mod(hash * 33 + str(:,i), N); 
    end
end
