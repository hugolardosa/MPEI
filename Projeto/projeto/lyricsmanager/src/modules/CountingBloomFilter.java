//MPEI- 2019 - UA
//Projeto Final
//Luísa Amaral (93001)
//Hugo Leal (93059)
package modules;

public class CountingBloomFilter {
	private int n; //Numero de bits do filtro
	private int m; //numero de elementos de um conjunto
	private int k; //numero de funções de dispersão
	private int BloomVector[] ; //bloom vector 
	private HashFunction h = new HashFunction();
	
	//contrutores
	public CountingBloomFilter(int m,double fatordecarga) {
		
		this.m=m;
		this.n= (int) Math.round(m/fatordecarga);
		this.k=(int) Math.floor((n*Math.round(m/fatordecarga)));
		BloomVector = new int[k];
	}
	
	public CountingBloomFilter(double fatordecarga,int m,int k) {
		this.k=k;
		this.m=m;
		this.n= (int) Math.round(m/fatordecarga);
		BloomVector = new int[k];
	}
	
	public CountingBloomFilter(int m,int k, double fatordecarga) {
		this.k=k;
		this.m=m;
		this.n=n;
	}
	

	
	//inicialização
	public void init(int k) {
		if(BloomVector == null)BloomVector = new int[k];
		for (int i = 0; i < BloomVector.length; i++) {
			BloomVector[i]=0;
		}
	}
	
	//adicionaElemento
	public void addElement(String Element) {
		for (int i = 0; i < k; i++) {
			int hash = (int) h.hash(Element + i); //Desenvolver hash(String) HashFunction no 
			BloomVector[hash]++; 
		}
	}
	
	//verfica se é membro
	public int membro(String Element) {
		int y = 1;
		int h = 0;
		for (int j = 0; j < k; j++) { //percorrer todas as funções de dispersão
			h = h.hash(Element + i);
			h = null; // h = rem(h,length(F));
			if(BloomVector[h+1]==0) {
				y=0;
				break;
			}
		}
	return y;		
	}
}
