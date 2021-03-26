package es.eoi.ejercicio1;

import java.time.LocalDate;
import java.util.Scanner;

public class SupermercadoCovidPedro {
	
	public static void menu() {
		System.out.println("SUPERMERCADO COVID");
		System.out.println("1 - Comprar Producto - IVA Superreducido 4%");
		System.out.println("2 - Comprar Producto - IVA Reducido 10%");
		System.out.println("3 - Comprar Producto - IVA General 21%");
		System.out.println("4 - Cobrar");
		System.out.print("Elige una opción: ");
	
	}
	
	/*public static void pedirProducto(String producto, int cantidad, double precio) {
		Scanner entrada = new Scanner (System.in);
		Scanner entrada2 = new Scanner (System.in);
		
		System.out.println("Nombre del producto");
		producto = entrada.nextLine();
		System.out.println("Cantidad");
		cantidad = entrada2.nextInt();
		System.out.println("Precio");
		precio = entrada2.nextDouble();
	}*/

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner (System.in);
		Scanner entrada2 = new Scanner (System.in);
		int opcion, conta=0;
		String [] producto = new String[5];
		int [] cantidad = new int [5];
		float [] precio = new float [5];
	
		while(conta < 6) {
			menu();
			opcion = entrada.nextInt();
			conta++;
			
			switch(opcion) {
			
			case 1:
				//pedirProducto(producto, cantidad, precio);
				for (int i = 1; i <= 1; i++) {
					System.out.print("Nombre del producto");
					producto[i] = entrada.nextLine();
					entrada.nextLine();
					System.out.print("Cantidad");
					cantidad[i] = entrada2.nextInt();
					//entrada2.nextInt();
					System.out.print("Precio");
					precio[i] = entrada2.nextFloat();
				}
				break;
				
			case 2:
				//pedirProducto(producto, cantidad, precio);
				for (int i = 0; i <= producto.length; i++) {
					System.out.print("Nombre del producto");
					producto[i] = entrada.nextLine();
					System.out.print("Cantidad");
					cantidad[i] = entrada2.nextInt();
					System.out.print("Precio");
					precio[i] = entrada2.nextFloat();
				}
				
			case 3:
				//pedirProducto(producto, cantidad, precio);
				for (int i = 0; i <= producto.length; i++) {
					System.out.print("Nombre del producto");
					producto[i] = entrada.nextLine();
					System.out.print("Cantidad");
					cantidad[i] = entrada2.nextInt();
					System.out.print("Precio");
					precio[i] = entrada2.nextFloat();
				}
				
			case 4:
				System.out.println("SUPERMERCADO COVID - " + LocalDate.now());
				for (int i = 0; i <= producto.length; i++) {					
					System.out.println(i + " - " + producto[i] + "" + precio[i] + "\t x " + cantidad[i] + " - " + precio[i] + " € - IVA 4% (" + (precio[i]*0.04) + " €)");
					System.out.println(i + " - " + producto[i] + "" + precio[i] + "\t x " + cantidad[i] + " - " + precio[i] + " € - IVA 4% (" + (precio[i]*0.10) + " €)");
					System.out.println(i + " - " + producto[i] + "" + precio[i] + "\t x " + cantidad[i] + " - " + precio[i] + " € - IVA 4% (" + (precio[i]*0.21) + " €)");
				}
			}
		}
		
	}

}
