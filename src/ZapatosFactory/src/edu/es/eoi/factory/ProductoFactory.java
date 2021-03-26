package edu.es.eoi.factory;

import edu.es.eoi.entities.Chancla;
import edu.es.eoi.entities.Cinturon;
import edu.es.eoi.entities.Producto;
import edu.es.eoi.entities.Zapatilla;

public class ProductoFactory {
	
	public static Producto create(String tipo) {
		
		Producto producto=null;
		
		if(tipo.equals("zapatilla")) {		
			producto= new Zapatilla();
		}
		if(tipo.equals("chancla")) {		
			producto= new Chancla();
		}
		if(tipo.equals("cinturon")) {		
			producto= new Cinturon();
		}
		
		
		return producto;
	}

}
