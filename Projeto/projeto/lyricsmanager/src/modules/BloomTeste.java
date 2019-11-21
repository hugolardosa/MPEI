//MPEI- 2019 - UA
//Projeto Final
//Hugo Leal (93059)
//Luísa Amaral (93001)

package modules;

public class BloomTeste {

	public static void main(String[] args) {
		
		String[] paises = {"Alemanha", "Portugal", "Suíça", "Espanha", "Noruega", "França", "Inglaterra"};
		String[] p = {"Suíça", "Portugal", "Alemanha", "Noruega"};
		
		CountingBloomFilter filtro = new CountingBloomFilter(1000, 0.8);
		filtro.init();
		
		//adiciona os elementos de p ao filtro
		for (String pais : p) {
			filtro.adiciona(pais);
		}
		
		System.out.println("aqui");
		
		if(filtro.membro("Argentina")) System.out.println("ups");
		if(filtro.membro("Alemanha")) System.out.println("yey");
		if(filtro.membro("Espanha")) System.out.println("ups2");
		if(filtro.membro("Portugal")) System.out.println("yey2");
		if(filtro.membro("Portugal1")) System.out.println("yey3");
		
		
		//System.out.println(filtro.show());

	}

}
