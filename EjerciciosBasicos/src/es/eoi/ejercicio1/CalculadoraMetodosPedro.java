package es.eoi.ejercicio1;

import java.util.Scanner;

public class CalculadoraMetodosPedro {
	
	public static void menu() {
		System.out.println("CALCULADORA");
		System.out.println("Opción 1 - SUMA");
		System.out.println("Opción 2 - RESTA");
		System.out.println("Opción 3 - MULTIPLICA");
		System.out.println("Opción 4 - DIVIDE");
		System.out.println("Opción 5 - VALOR ABSOLUTO");
		System.out.println("Opción 6 - PI");
	
	}
	
	public static int pedirNum(Scanner sc) {
		System.out.println("Dime un número");
		return sc.nextInt();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner (System.in);
		int opcion;
		int n1, n2;
		// TODO Auto-generated method stub
		do {
			menu();
			opcion = entrada.nextInt();
		
			while (opcion < 0 || opcion > 6) {
				System.out.println("Valor no válido, introduce número del 1 al 6");
				opcion = entrada.nextInt();
			}
		 
		
		
			switch(opcion) {
			
			case 1:			
				n1 = pedirNum(entrada);
				n2 = pedirNum(entrada);
				System.out.println("El resultado de sumar " + n1 + "+" + n2 + " es " + (n1+n2));
				break;
				
			case 2:
				n1 = pedirNum(entrada);
				n2 = pedirNum(entrada);
				System.out.println("El resultado de restar " + n1 + "-" + n2 + " es " + (n1-n2));
				break;
				
			case 3:
				n1 = pedirNum(entrada);
				n2 = pedirNum(entrada);
				System.out.println("El resultado de multiplicar " + n1 + "*" + n2 + " es " + (n1*n2));
				break;
				
			case 4:
				n1 = pedirNum(entrada);
				n2 = pedirNum(entrada);
				System.out.println("El resultado de dividir " + n1 + "/" + n2 + " es " + (n1/n2));
				break;
				
			case 5:
				n1 = pedirNum(entrada);
				System.out.println("El resultado del valor absoluto es " + Math.abs(n1));
				break;
				
			case 6:
				System.out.println("El resultado del numero PI es " + Math.PI);
				break;
				
			case 0:
				System.out.println("Salimos");
				break;
			
			}
		}while(opcion != 0);
		
	
	}

}
