package es.eoi.ejercicio1;

import java.util.Scanner;

public class HolaMundo {

	public static void main(String[] args) {
		Scanner entrada = new Scanner (System.in);
		Scanner entrada2 = new Scanner (System.in);
		// TODO Auto-generated method stub
		String titulo;
		String artista;
		float duracion;
		int anyo;
		boolean premios = false;
		char estilo;
		System.out.println("Bienvenido al Almac�n de m�sica");
		System.out.println("Dime titulo de canci�n");
		titulo = entrada.nextLine();
		System.out.println("Dime artista de canci�n");
		artista = entrada.nextLine();
		System.out.println("Dime duraci�n de canci�n");
		duracion = entrada2.nextInt();
		System.out.println("Dime a�o de canci�n");
		anyo = entrada2.nextInt();
		System.out.println("Dime estilo de canci�n (R - ROCK, P - POP, C - CL�SICA, F - FUNK, H - HEAVY, O - OTRO)");
		estilo = entrada.next().charAt(0);
	}

}
