package es.eoi.ejercicio1;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import es.eoi.ejercicio1.PersonaCampus;

public class Campus {

	public static void main(String[] args) {
	
		List<PersonaCampus> personas = new ArrayList <PersonaCampus>();
		
		PersonaProfesor profesor1= new PersonaProfesor(20000, "Matematicas");
		PersonaDireccion direccion = new PersonaDireccion("Torres", "Elche", 03204, "España");
		PersonaProfesor profesor2= new PersonaProfesor(10000, "Fisica");
		PersonaProfesor profesor3= new PersonaProfesor(30000, "Biologia");
		PersonaProfesor profesor4= new PersonaProfesor(24000, "Historia");
		PersonaProfesor profesor5= new PersonaProfesor(18000, "Informatica");
		
		personas.add(profesor1);
		personas.add(profesor2);
		personas.add(profesor3);
		personas.add(profesor4);
		personas.add(profesor5);
		
		double[] notas = new double[10];
		notas[0] = 6;
		notas [1] = 2;
		PersonaEstudiante estudiante1= new PersonaEstudiante(1, notas);
		double[] notas2 = new double[10];
		notas [0] = 4;
		notas [1] = 2;
		PersonaEstudiante estudiante2= new PersonaEstudiante(2, notas2);
		PersonaEstudiante estudiante3= new PersonaEstudiante(3, notas);
		PersonaEstudiante estudiante4= new PersonaEstudiante(4, notas);
		PersonaEstudiante estudiante5= new PersonaEstudiante(5, notas);
		
		personas.add(estudiante1);
		personas.add(estudiante2);
		personas.add(estudiante3);
		personas.add(estudiante4);
		personas.add(estudiante5);
		

		imprimirPersona(personas);


	}

	private static void imprimirPersona(List<PersonaCampus> personas) {
		for(PersonaCampus persona : personas) {
			if(persona instanceof PersonaEstudiante) {
				System.out.println(persona.getNombre());
				System.out.println("Precio matricula: " + ((PersonaEstudiante)(persona)).calcularMatricula());
			}
			if(persona instanceof PersonaProfesor) {
				System.out.println(((PersonaProfesor) persona).getAsignatura());
			}
		}
	}

}
