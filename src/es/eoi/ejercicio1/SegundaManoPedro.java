package es.eoi.ejercicio1;

import java.util.Scanner;

public class SegundaManoPedro {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		VehiculoPedro [] arrayCoches = new VehiculoPedro [3];
		
		arrayCoches[0] = new VehiculoPedro("MINI", "Cooper D", "Rojo", "Diesel", 4, 10.000, 2014, "Pedro Sempere", 626469140);
		arrayCoches[1] = new VehiculoPedro("BMW", "218 GC", "Alpineschwartz", "Diesel", 5, 35.000, 2020, "Pedro Sempere", 626469140);
		int numCar;
		int i;
		
		System.out.println("VENTA DE COCHES ");
		for(i = 0; i < arrayCoches.length; i++) {
			if (arrayCoches[i] != null) {
				System.out.println("COCHE " + (i+1) + " - "+ arrayCoches[i].menu());
				
			}			
		}
		System.out.println("Escriba el número del coche que quiere visualizar");
		numCar = entrada.nextInt();
		
		//*while (numCar > 0 && numCar <= arrayCoches.length) {
			if (arrayCoches[numCar - 1] != null) {
				System.out.println(arrayCoches[numCar - 1].toString());
			}
				else {
					System.out.println("No tenemos ese coche a la venta");
					//*numCar = entrada.nextInt();
				}
			}			
		//}
		
		/*switch(numCar) {
		case 
		}*/
		
	/*	for(VehiculoPedro vehiculo : arrayCoches) {
			if(vehiculo != null) {
				System.out.println("");
				System.out.println(vehiculo.toString());
			}
			
		}*/
	
	
	
	

}
