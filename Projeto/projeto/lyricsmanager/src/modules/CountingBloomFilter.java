//MPEI- 2019 - UA
//Projeto Final
//Luísa Amaral (93001)
//Hugo Leal (93059)
package modules;

public class CountingBloomFilter {
	private final int n; // Numero de bits do filtro
	private final int m; // numero de elementos de um conjunto
	private final int k; // numero de funções de dispersão
	private int BloomVector[]; // bloom vector
	private final HashFunction h = new HashFunction();
	private String element;

	// contrutores
	public CountingBloomFilter(final int m, final double fatordecarga) {

		this.m = m;
		this.n = (int) Math.round(m / fatordecarga);
		this.k = (int) Math.floor((n * Math.round(m / fatordecarga)));
		BloomVector = new int[k];
	}

	public CountingBloomFilter(final double fatordecarga, final int m, final int k) {
		this.k = k;
		this.m = m;
		this.n = (int) Math.round(m / fatordecarga);
		BloomVector = new int[k];
	}

	public CountingBloomFilter(final int m, final int k, final int n) {
		this.k = k;
		this.m = m;
		this.n = n;
	}

	// inicialização
	public void init(final int k) {
		if (BloomVector == null)
			BloomVector = new int[k];
		for (int i = 0; i < BloomVector.length; i++) {
			BloomVector[i] = 0;
		}
	}

	// Adiciona Elemento
	public void addElement(final String Element) {
		for (int i = 0; i < k; i++) {
			final int hash = (int) h.hash(Element + i); // Desenvolver hash(String) HashFunction no
			BloomVector[hash]++;
		}
	}

	// verfica se é membro
	public boolean membro(final String Element) {
		element = Element;
		int y = true;
		int h = 0;
		for (int j = 0; j < k; j++) { // percorrer todas as funções de dispersão
			h = h.hash(Element + i);
			h = h % BloomVector.length; // h = rem(h,length(F));
			if (BloomVector[h + 1] == 0) {
				y = false;
				break;
			}
		}
		return y;
	}

	// Remove Elemento
	public void removeElement(final String Element) {
		for (int i = 0; i < k; i++) {
			int hash = (int) h.hash(Element + i); // Desenvolver hash(String) HashFunction no
			BloomVector[hash]--;
		}
	}

	//Contagem tem que se obter o valor minimo
	public int countElents(String Elemente) {
		
	}

}
