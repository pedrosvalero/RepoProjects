package edu.es.eoi.service;

import edu.es.eoi.entities.Producto;
import edu.es.eoi.entities.Vendible;

public class VentasService {
	
	public void vender(Producto producto) {
		
		if(producto instanceof Vendible) {
			System.out.println("he vendido el producto: " + producto.getClass().getSimpleName());
			((Vendible) producto).vender();
		}
		else {
			System.out.println("no me puedo vender");
		}
		
	}

}
