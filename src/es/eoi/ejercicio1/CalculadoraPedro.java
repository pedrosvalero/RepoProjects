package es.eoi.ejercicio1;

import java.util.Scanner;

public class CalculadoraPedro {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		int opcion;
		int n1, n2;
		// TODO Auto-generated method stub
		System.out.println("CALCULADORA");
		System.out.println("Opción 1 - SUMA");
		System.out.println("Opción 2 - RESTA");
		System.out.println("Opción 3 - MULTIPLICA");
		System.out.println("Opción 4 - DIVIDE");
		System.out.println("Opción 5 - VALOR ABSOLUTO");
		System.out.println("Opción 6 - PI");
		opcion = entrada.nextInt();
		
		while (opcion < 1 || opcion > 6) {
			System.out.println("Valor no válido, introduce número del 1 al 6");
			opcion = entrada.nextInt();
		}
		 
		
		
		switch(opcion) {
		
		case 1:
			System.out.println("Dime un número");
			n1 = entrada.nextInt();
			System.out.println("Dime otro número");
			n2 = entrada.nextInt();
			System.out.println("El resultado de sumar " + n1 + "+" + n2 + " es " + (n1+n2));
			break;
			
		case 2:
			System.out.println("Dime un número");
			n1 = entrada.nextInt();
			System.out.println("Dime otro número");
			n2 = entrada.nextInt();
			System.out.println("El resultado de restar " + n1 + "-" + n2 + " es " + (n1-n2));
			break;
			
		case 3:
			System.out.println("Dime un número");
			n1 = entrada.nextInt();
			System.out.println("Dime otro número");
			n2 = entrada.nextInt();
			System.out.println("El resultado de multiplicar " + n1 + "*" + n2 + " es " + (n1*n2));
			break;
			
		case 4:
			System.out.println("Dime un número");
			n1 = entrada.nextInt();
			System.out.println("Dime otro número");
			n2 = entrada.nextInt();
			System.out.println("El resultado de dividir " + n1 + "/" + n2 + " es " + (n1/n2));
			break;
			
		case 5:
			System.out.println("Dime un número");
			n1 = entrada.nextInt();
			System.out.println("El resultado del valor absoluto es " + Math.abs(n1));
			break;
			
		case 6:
			System.out.println("El resultado del numero PI es " + Math.PI);
			break;
			
		default:
			System.out.println("Valor no válido, introduce número del 1 al 6");
			opcion = entrada.nextInt();
		
		}
	}

}
