package es.eoi.ejercicio1;

public class PoemaPedro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String poema = "No entres d�cilmente en esa buena noche. "
				+ "La vejez deber�a delirar y arder cuando se acaba el d�a. "
				+ "Rabia, rabia, contra la luz que se esconde. "
				+ "Aunque el sabio cerca del fin a la tiniebla no haga reproche, "
				+ "dado que a su verbo ning�n rayo ha confiado vigor, no entra d�cilmente en esa buena noche."
				+ "Rabia, rabia, contra la luz que se esconde.";
		int contadorA=0;
		int contadorE=0;
		int contadorI=0;
		int contadorO=0;
		int contadorU=0;
		
		for (int i = 0; i < poema.length(); i++){
			switch(Character.toLowerCase(poema.charAt(i))) {
			case 'a':
				contadorA++;
				break;
			case 'e':
				contadorE++;
				break;
			case 'i':
				contadorI++;
				break;
			case 'o':
				contadorO++;
				break;
			case 'u':
				contadorU++;
				break;
			default:
				break;
			}
							
		}
		
		System.out.println("N� vocales A/a: " + contadorA);
		System.out.println("N� vocales E/e: " + contadorE);
		System.out.println("N� vocales I/i: " + contadorI);
		System.out.println("N� vocales O/o: " + contadorO);
		System.out.println("N� vocales U/u: " + contadorU);
		System.out.println("N� caracteres totales: " + poema.length());
	}

}
