paises_test = {'Portugal', 'Suíça'};
paises = {'Alemanha', 'Espanha','Portugal'};
n = 100; %length of bloom filter
k = 3; %number of hash functions
F = inicializar(n);
for i=1:length(paises)
    F = adicionarElemento(paises{i}, F, k);
end

for i = 1:length(paises_test)
    aux = membro(paises_test{i},F,k);
    if aux == 1
        fprintf('%s is an element\n', paises_test{i});
    else
        fprintf('%s is not an element\n', paises_test{i});
    end
end