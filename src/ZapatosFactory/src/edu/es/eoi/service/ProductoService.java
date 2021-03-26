package edu.es.eoi.service;

import java.util.List;

import edu.es.eoi.entities.Producto;
import edu.es.eoi.factory.ProductoFactory;

public class ProductoService {

	public Producto fabricarZapato(String tipo) {

		return ProductoFactory.create(tipo);

	}

	public void listar(List<Producto> productos) {

		for (Producto producto : productos) {
			System.out.println("Producto: " + producto.getClass());
		}

	}
}
