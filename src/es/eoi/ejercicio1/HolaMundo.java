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
		System.out.println("Bienvenido al Almacén de música");
		System.out.println("Dime titulo de canción");
		titulo = entrada.nextLine();
		System.out.println("Dime artista de canción");
		artista = entrada.nextLine();
		System.out.println("Dime duración de canción");
		duracion = entrada2.nextInt();
		System.out.println("Dime año de canción");
		anyo = entrada2.nextInt();
		System.out.println("Dime estilo de canción (R - ROCK, P - POP, C - CLÁSICA, F - FUNK, H - HEAVY, O - OTRO)");
		estilo = entrada.next().charAt(0);
	}

}
