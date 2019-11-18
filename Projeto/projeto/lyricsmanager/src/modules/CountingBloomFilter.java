//MPEI- 2019 - UA
//Projeto Final
//Hugo Leal (93059)
//Luísa Amaral (93001)

package modules;

public class CountingBloomFilter {
	private final int n; // Numero de elementos do filtro
	private final int m; // numero de elementos de um conjunto
	private final int k; // numero de funções de dispersão
	private int vetorbloom[]; // bloom vector
	private final HashFunction h = new HashFunction();

	// contrutores
	public CountingBloomFilter(final int m, final double fatordecarga) {

		this.m = m;
		this.n = (int) Math.round(m / fatordecarga);
		this.k = (int) Math.floor((n * Math.log(2) / m)));
		vetorbloom = new int[k];
	}

	public CountingBloomFilter(final double fatordecarga, final int m, final int k) {
		this.k = k;
		this.m = m;
		this.n = (int) Math.round(m / fatordecarga);
		vetorbloom = new int[k];
	}

	public CountingBloomFilter(final int m, final int k, final int n) {
		this.k = k;
		this.m = m;
		this.n = n;
	}

	// inicialização
	public void init() {
		if (vetorbloom == null)
			vetorbloom = new int[this.k];
		for (int i = 0; i < vetorbloom.length; i++) {
			vetorbloom[i] = 0;
		}
	}

	// Adiciona elemento
	public void adiciona(final String elemento) {
		for (int i = 0; i < k; i++) {
			final int hash = (int) h.hash(elemento + i); // Desenvolver hash(String) HashFunction (perguntar se fazemos assim ou temos que usar mais hashfunctions)
			vetorbloom[hash]++;
		}
	}

	// verfica se é membro
	public boolean membro(final String elemento) {
		int y = true;
		int h = 0;
		for (int i = 0; i < k; i++) { // percorrer todas as funções de dispersão
			h = h.hash(elemento + i);
			h = h % vetorbloom.length; // h = rem(h,length(F));
			if (vetorbloom[h] == 0) {
				y = false;
				break;
			}
		}
		return y;
	}

	// Remove elemento
	public void remove(final String elemento) {
		if(!membro(elemento))return;

		int[] hs = new int[k];
		for (int i = 0; i < k; i++) {
			int hash = (int) h.hash(elemento + i); // Desenvolver hash(String) HashFunction no
			hs[i] = hash;
		}
		
		for (int j = 0; j < hs.length; j++) {
			vetorbloom[hs[j]]--;
		}
		
	}

	//Contagem tem que se obter o valor minimo
	public int contagem(String elemento) {
		int h = 0;
		int min = 1000000;
		for (int i = 0; i < k; i++) { // percorrer todas as funções de dispersão
			h = h.hash(elemento + i);
			h = h % vetorbloom.length; // h = rem(h,length(F));
			if (vetorbloom[h] < min) {
				min = vetorbloom[h];
			}
		}
		return min;
	}

}
