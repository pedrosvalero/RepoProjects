package es.eoi.ejercicio1;

import java.util.Scanner;

public class CadenasPedro {

	public static void menu() {
		System.out.println("MENU CADENAS");
		System.out.println("1 - Convertir en Mayúsculas");
		System.out.println("2 - Contar Vocales");
		System.out.println("3 - Mostrar Subcadena");
		System.out.println("4 - Cambiar palabra");
		System.out.println("5 - Visualizar texto");
		System.out.println("6 - Salir");
	}
	
	public static void mayus (String cadenaMayus) {
		System.out.println("La cadena con todo Mayúsculas es: " + cadenaMayus.toUpperCase());
	}
	
	public static void cuentaVocales(String cadenaVocal) {
		int contadorA=0;
		int contadorE=0;
		int contadorI=0;
		int contadorO=0;
		int contadorU=0;
		
		for (int i = 0; i < cadenaVocal.length(); i++){
			switch(Character.toLowerCase(cadenaVocal.charAt(i))) {
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
		
		System.out.println("Nº vocales A/a: " + contadorA);
		System.out.println("Nº vocales E/e: " + contadorE);
		System.out.println("Nº vocales I/i: " + contadorI);
		System.out.println("Nº vocales O/o: " + contadorO);
		System.out.println("Nº vocales U/u: " + contadorU);
	}
	
	public static void subcadena (String subcadena) {
		Scanner entrada = new Scanner (System.in);
		int indDesde, indHasta;
		System.out.println("Dime indíce con el que partir");
		indDesde = entrada.nextInt();
		System.out.println("Dime indíce con el que finalizar");
		indHasta = entrada.nextInt();
		
		while (indDesde < 0 && indHasta > subcadena.length()) {
			System.out.println("Error de rango, dime indíce con el que partir");
			indDesde = entrada.nextInt();
			System.out.println("Error de rango, dime indíce con el que finalizar");
			indHasta = entrada.nextInt();
		}
		
		System.out.println("La subcadena es: " + subcadena.substring(indDesde-1, indHasta));
		
	}
	
	public static void reemplazo(String cadCompleta) {
		Scanner entrada = new Scanner (System.in);
		String cadReemplazo, nuevaCad;
		System.out.println("Dime palabra a reemplazar");
		cadReemplazo = entrada.nextLine();
		System.out.println("Dime nueva palabra a insertar");
		nuevaCad = entrada.nextLine();
		cadCompleta = cadCompleta.replace(cadReemplazo, nuevaCad);
		System.out.println("La nueva cadena es: " + cadCompleta);
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner (System.in);
		String cadena;
		int opcion;
		
		System.out.println("Dime una cadena de 30 caracteres");
		cadena = entrada.nextLine();
		
		while (cadena.length() < 30) {
			System.out.println("Cadena menor de 30 caracteres, vuelve a introducir cadena");
			cadena = entrada.nextLine();
		}
		menu();
		opcion = entrada.nextInt();
		
		switch(opcion){
		case 1:
			mayus(cadena);
			break;
			
		case 2:
			cuentaVocales(cadena);
			break;
			
		case 3:
			subcadena(cadena);
			break;
			
		case 4:
			reemplazo(cadena);
			break;
			
		case 5:
			System.out.println(cadena);
			break;
			
		default:
			System.out.println("Finaliza Programa");
			break;
		}

	}

}
