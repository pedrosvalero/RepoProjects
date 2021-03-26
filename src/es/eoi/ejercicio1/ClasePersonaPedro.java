package es.eoi.ejercicio1;
import es.eoi.ejercicio1.Persona;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ClasePersonaPedro {

	public static void main(String[] args) {
		//Persona[] personas = new Persona[10];
		
		Scanner sc = new Scanner(System.in);
		Scanner sc2 = new Scanner(System.in);
		//Persona [] arrayPersona = new Persona[3];
		List<Persona> personas = new ArrayList();
		
		char empleo, estudio;
		

	//	for(int i = 0; i < arrayPersona.length; i++) {
			//arrayPersona[i] = new Persona(); 
			System.out.println("DATOS DE LA PERSONA " + ". -");
			System.out.println("Introduce el Nombre");
		    //arrayPersona[i].setNombre(sc.nextLine());
			String nombre = sc.nextLine();
			System.out.println("Introduce los Apellidos");
			//arrayPersona[i].setApellidos(sc.nextLine());
			String apellidos = sc.nextLine();
			System.out.println("Introduce la Edad");
			//arrayPersona[i].setEdad(sc2.nextInt());
			int edad = sc2.nextInt();
			System.out.println("Introduce la ciudad");
			//arrayPersona[i].setCiudad(sc.nextLine());
			String ciudad = sc.nextLine();
			System.out.println("Introduce el Dia Nacimiento");
			//arrayPersona[i].setDiaNac(sc2.nextInt());
			int diaNac = sc2.nextInt();
			System.out.println("Introduce el Mes Nacimiento");
			//arrayPersona[i].setMesNac(sc.nextLine());
			String mesNac = sc.nextLine();
			System.out.println("Introduce el Año Nacimiento");
			//arrayPersona[i].setAnyoNac(sc2.nextInt());
			int anyoNac = sc2.nextInt();
			System.out.println("Trabajas? S/N");
			empleo = sc.next().charAt(0);
			if (empleo == 's') {
				//arrayPersona[i].setEstudia(true);
				boolean estudia = true;
			}else {
				//arrayPersona[i].setTrabaja(false);
				boolean trabaja = false;
			}
			System.out.println("Estudias? S/N");
			estudio = sc.next().charAt(0);
			if (estudio == 's') {
				//arrayPersona[i].setEstudia(true);
				boolean estudia = true;
			}else {
				//arrayPersona[i].setEstudia(false);
				boolean estudia = false;
			}
			sc.nextLine();
			boolean trabaja;
			boolean estudia;
			/*char sexo = H;
			personas.add(new Persona(nombre, apellidos, diaNac, mesNac, anyoNac, ciudad, edad, estudia, trabaja, sexo));
			
			for (Persona persona : personas) {
				if(persona != null) {
					System.out.println(persona);
				}
			}
			
	//	}
		
				
	/*	for(int i = 0; i < arrayPersona.length; i++) {
			System.out.println("DATOS DE LA PERSONA " + (i+1) + ". -");
			System.out.println(arrayPersona[i].toString());
			System.out.println("");
		}*/

	}

}
