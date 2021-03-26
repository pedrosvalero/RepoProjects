package es.eoi.ejercicio1;

import es.eoi.ejercicio1.Cupcake;

public class CocinaCupcakes {

	public static void main(String[] args) {
		
		Cupcake[] cupcakes = new Cupcake[50]; 
		
		cupcakes[0] = new Cupcake("Chocolate", "Marrón", "No tiene", 10, false);
		cupcakes[1] = new Cupcake("Fresa","Rosa","Envoltorio Lunares", 7, true);
		cupcakes[20] = new Cupcake("Vainilla", "Amarillo", "Envoltorio Marrón", 25, false);
		cupcakes[30] = new Cupcake("Arándanos", "Azul", "Envoltorio Rayas", 45, true);
		
		int cupcakesReales = 0;
		
		for(Cupcake cupcake : cupcakes) {
			if(cupcake != null) {
				System.out.println(cupcake);
				cupcake.cocinar(5);
				System.out.println(cupcake);
				cupcakesReales++;
			}
		}

		System.out.println("Cupcakes Reales:" + cupcakesReales);
		System.out.println("Bandeja de Cupcakes:" +cupcakes.length);
		
//		//STRING (NULL POINTER)
//		String palabra = "Hola";
//		System.out.println(palabra);
//		System.out.println(palabra.toUpperCase());
//		
//		//OBJETO (NULL POINTER)
//		Cupcake c5 = null;
//		if(c5 != null) {
//			System.out.println(c5.getEnvoltorio());
//		}

	}

}
