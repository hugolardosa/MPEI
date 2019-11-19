//MPEI- 2019 - UA
//Projeto Final
//Hugo Leal (93059)
//Luísa Amaral (93001)

package modules;

public class BloomTeste {

	public static void main(String[] args) {
		
		String[] paises = {"Alemanha", "Portugal", "Suíça", "Espanha", "Noruega", "França", "Inglaterra"};
		String[] p = {"Suíça", "Portugal"};
		
		CountingBloomFilter filtro = new CountingBloomFilter(1000, 0.8);
		filtro.init();
		
		//adiciona os elementos de p ao filtro
		for (String pais : p) {
			filtro.adiciona(pais);
		}
		
		
		if(filtro.membro("asdafhhdjsfkdjhedhuidesnbjcfdebwhfb")) System.out.println("ups");
		if(filtro.membro("Alemanha")) System.out.println("yey");
		if(filtro.membro("Espanha")) System.out.println("ups2");
		
		//filtro.show();

	}

}
