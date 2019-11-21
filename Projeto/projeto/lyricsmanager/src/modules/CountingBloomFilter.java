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
		this.k = (int) Math.round((m * Math.log(2) / n)); //isto está a fazer com que k = 0
		//this.k = 3;
		System.out.println(k);
		vetorbloom = new int[n];
	}

	public CountingBloomFilter(final double fatordecarga, final int m, final int k) {
		this.k = k;
		this.m = m;
		this.n = (int) Math.round(m / fatordecarga);
		vetorbloom = new int[n]; //aqui estava [k] antes, isso não faz sentido
	}

	public CountingBloomFilter(final int m, final int k, final int n) {
		this.k = k;
		this.m = m;
		this.n = n;
	}

	// inicialização
	public void init() {
		if (vetorbloom == null)
			vetorbloom = new int[this.n];
		for (int i = 0; i < vetorbloom.length; i++) {
			vetorbloom[i] = 0;
		}
	}

	// Adiciona elemento
	public void adiciona(final String elemento) {
		for (int i = 0; i < k; i++) {
			final int hash = (int) hash(elemento + i); // Desenvolver hash(String) HashFunction (perguntar se fazemos assim ou temos que usar mais hashfunctions)
			System.out.println(hash);
			vetorbloom[hash]++;
		}
	}

	// verfica se é membro
	public boolean membro(final String elemento) {
		boolean y = true;
		int h = 0;
		for (int i = 0; i < k; i++) { // percorrer todas as funções de dispersão
			h = (int) hash(elemento + i);
			//h = h % vetorbloom.length; // h = rem(h,length(F));
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
			int hash = (int) hash(elemento + i); // Desenvolver hash(String) HashFunction no
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
			h = hash(elemento + i);
			h = h % vetorbloom.length; // h = rem(h,length(F));
			if (vetorbloom[h] < min) {
				min = vetorbloom[h];
			}
		}
		return min;
	}
	
	public String show() {
		String s = "";
		for (int i : vetorbloom) {
			System.out.println(vetorbloom[i]);
			s = s + String.format("%d", i) + "\n";
		}
		
		return s;
	}
	
	//Hash Function (retirada de um guião de p2)
	public int hash(String str) {
		
		int len = str.length();
		long hash = 0;
		char[] buffer = str.toCharArray();
		
		int c = 0;
		for (int i = 0; i < len; i++) {
			c = buffer[i]+33;
			hash = ((hash <<3) + ( hash>>28) + c);
		}
		
		hash = hash % n;
		return (int) (hash>=0 ? hash : hash + n);
	}
}
