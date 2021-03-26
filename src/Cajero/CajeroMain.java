package Cajero;

import java.util.Scanner;

public class CajeroMain {
	
	private static final Usuario user= new Usuario("Pedro","1111",500);

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int opcion;
		System.out.print("Bienvenido al cajero, introduzca nombre: ");
		String nombre = sc.nextLine();
		System.out.print("Introduzca contraseña: ");
		String pass = sc.nextLine();
		
		while (!user.getUser().equals(nombre) || !user.getPass().equals(pass)) {
			System.out.println("ERROR! Usuario o contraseña incorrectos, vuelva a intentar");
			System.out.print("Introduzca nombre: ");
			nombre = sc.nextLine();
			System.out.print("Introduzca contraseña: ");
			pass = sc.nextLine();
		}
		
		System.out.println("Hola " + user.getUser() + " su saldo es de " +  user.getSaldo());
		do {
			System.out.println("¿Que desea realizar? ");
			System.out.println("1- Ingresar dinero");
			System.out.println("2- Retirar dinero");
			System.out.println("3- Consultar saldo");
			System.out.println("4- SALIR");
			opcion = sc.nextInt();
			switch(opcion) {
				case 1:
					System.out.print("Introduzca la cantidad de dinero a ingresar: ");
					user.recargar(sc.nextDouble());
					break;
				case 2:
		        	System.out.print("Introduzca la cantidad de dinero a retirar: ");
		        	try {
		        		user.retirar(sc.nextDouble());
		        	} catch (SaldoAgotado e) {
		        		System.out.println(e.getMessage());
		        		e.printStackTrace();
		        		System.out.println("Debe recargar su cartera");
		        		//System.out.print("Introduce la cantidad de dinero a ingresar: ");
		        		//user.recargar(sc.nextDouble());
		        		System.out.println(e.getMessage());
		        		e.printStackTrace();
		        	}          	
		        	break;
				case 3:
					System.out.println("Su saldo en cuenta es de: " + user.getSaldo());
			}
		}while(opcion != 4);
		
		sc.close();
		
	}

}
