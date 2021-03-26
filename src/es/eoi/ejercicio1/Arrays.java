package es.eoi.ejercicio1;

import java.util.Scanner;

public class Arrays {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner (System.in);
		Scanner entrada2 = new Scanner (System.in);
		// TODO Auto-generated method stub
		String [] alumnos = new String[3];
		double [] notas = new double[3];
		
		
		System.out.println("Bienvenido a la clase de Java");
		for (int i=0; i < alumnos.length; i++) {
			
			System.out.println("Dime nombre del alumno");
			alumnos[i] = entrada.next();
			System.out.println("Dime nota del alumno");
			notas[i] = entrada2.nextDouble();
		}
		for (int i=0; i < alumnos.length; i++) {
			System.out.println("El alumno " + alumnos[i] + " tiene una nota de " + notas[i]);
		}
	}

}
