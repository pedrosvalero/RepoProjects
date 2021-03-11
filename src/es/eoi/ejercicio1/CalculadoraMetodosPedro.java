package es.eoi.ejercicio1;

import java.util.Scanner;

public class CalculadoraMetodosPedro {
	
	public static void menu() {
		System.out.println("CALCULADORA");
		System.out.println("Opci�n 1 - SUMA");
		System.out.println("Opci�n 2 - RESTA");
		System.out.println("Opci�n 3 - MULTIPLICA");
		System.out.println("Opci�n 4 - DIVIDE");
		System.out.println("Opci�n 5 - VALOR ABSOLUTO");
		System.out.println("Opci�n 6 - PI");
	
	}
	
	public static void pedirNum() {
		System.out.println("Dime un n�mero");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner (System.in);
		int opcion;
		int n1, n2;
		// TODO Auto-generated method stub
		menu();
		opcion = entrada.nextInt();
		
		while (opcion < 1 || opcion > 6) {
			System.out.println("Valor no v�lido, introduce n�mero del 1 al 6");
			opcion = entrada.nextInt();
		}
		 
		
		
		switch(opcion) {
		
		case 1:
			pedirNum();
			n1 = entrada.nextInt();
			pedirNum();
			n2 = entrada.nextInt();
			System.out.println("El resultado de sumar " + n1 + "+" + n2 + " es " + (n1+n2));
			break;
			
		case 2:
			pedirNum();
			n1 = entrada.nextInt();
			pedirNum();
			n2 = entrada.nextInt();
			System.out.println("El resultado de restar " + n1 + "-" + n2 + " es " + (n1-n2));
			break;
			
		case 3:
			pedirNum();
			n1 = entrada.nextInt();
			pedirNum();
			n2 = entrada.nextInt();
			System.out.println("El resultado de multiplicar " + n1 + "*" + n2 + " es " + (n1*n2));
			break;
			
		case 4:
			pedirNum();
			n1 = entrada.nextInt();
			pedirNum();
			n2 = entrada.nextInt();
			System.out.println("El resultado de dividir " + n1 + "/" + n2 + " es " + (n1/n2));
			break;
			
		case 5:
			pedirNum();
			n1 = entrada.nextInt();
			System.out.println("El resultado del valor absoluto es " + Math.abs(n1));
			break;
			
		case 6:
			System.out.println("El resultado del numero PI es " + Math.PI);
			break;
			
		default:
			System.out.println("Valor no v�lido, introduce n�mero del 1 al 6");
			opcion = entrada.nextInt();
		
		}
	
	}

}
