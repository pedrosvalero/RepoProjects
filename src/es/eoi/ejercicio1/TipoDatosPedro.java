package es.eoi.ejercicio1;

import java.util.Scanner;

public class TipoDatosPedro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Scanner entrada = new Scanner (System.in);
		//Scanner entrada2 = new Scanner (System.in);
		
		String [] nombre = {"Pedro", "Daniel", "Jaime", "Paula", "Daniela", "Roberto", "Manuel", "Lourdes", "Pablo", "Rebeca"};
		String [] apellidos = {"Sempere", "Mejía", "Guzman", "Hernandez", "Lopez", "Garcia", "Hernan", "Burgos", "Valero", "Minguez"};
		int [] diaNac = {2, 1, 26, 31, 15, 12, 13, 9, 24, 6};
		String [] mesNac = {"julio", "enero", "septiembre", "febrero", "enero", "marzo", "agosto", "junio", "diciembre", "abril"};
		int [] anyoNac = {1995, 1994, 1999, 2000, 1995, 1994, 1996, 1997, 1990, 1985};
		String [] ciudad = {"Elche", "León", "Cadiz", "Girona", "Valencia", "Alicante", "San Vicente", "Murcia", "Almeria", "Albacete"};
		int [] edad = {26, 27, 22, 21, 27, 27, 25, 24, 23, 30, 35};
		boolean [] estudia = {false, false, true, true, false, false, true, false, true, true};
		boolean [] trabaja = {false, true, false, false, false, false, true, true, false, true};
		char [] sexo = {'H', 'H', 'H', 'M', 'M', 'H', 'H', 'M', 'H','M'};
		
		for (int i=0; i < nombre.length; i++) {
			System.out.println("Hola me llamo " + nombre[i] +" "+ apellidos[i] + " y tengo "
			           + edad[i] + " años.");
			System.out.println("Nací el " + diaNac[i] +" "+ mesNac[i] +" "+ anyoNac[i] + 
			           " y vivo en " + ciudad[i]);
			if (estudia[i] == true && trabaja [i] == false) {
				System.out.println("Actualmente no estoy trabajando y estoy estudiando");
				}else if(estudia[i] == true && trabaja [i] == true) {
					System.out.println("Actualmente estoy trabajando y estoy estudiando");
				}else if(estudia[i] == false && trabaja [i] == true) {
					System.out.println("Actualmente estoy trabajando y no estoy estudiando");
				}else {
					System.out.println("Actualmente no estoy trabajando y no estoy estudiando");
			}
		}
		
	}

}
