package edu.es.eoi.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import edu.es.eoi.entities.Producto;
import edu.es.eoi.service.ProductoService;
import edu.es.eoi.service.VentasService;
import edu.es.eoi.view.Menu;

public class Main {
	
	static List<Producto> almacen= new ArrayList<Producto>();
	
	public static void main(String[] args) {
		
		Menu menu= new Menu();		
		menu.printMainMenu();		
		ProductoService service= new ProductoService();
		VentasService ventasService=new VentasService();
		
		@SuppressWarnings("resource")
		Scanner escaner= new Scanner(System.in);
		int opcion=escaner.nextInt();
		
		switch (opcion) {
		case 1:		
			service.listar(almacen);
			break;
		case 2:		
			Producto zapatilla=service.fabricarZapato("zapatilla");
			almacen.add(zapatilla);
			break;
		case 3:		
			Producto chancla=service.fabricarZapato("chancla");
			almacen.add(chancla);
			break;
		case 4:		
			ventasService.vender(almacen.get(0));
			almacen.remove(almacen.get(0));
			break;
		default:
			System.out.println("opcion incorrecta");
			break;
		}
		
		main(args);
		
	}

}
