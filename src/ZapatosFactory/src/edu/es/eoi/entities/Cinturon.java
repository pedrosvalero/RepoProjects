package edu.es.eoi.entities;

public class Cinturon extends Producto {

	private double longitud;
	
	private boolean reversible;	

	public double getLongitud() {
		return longitud;
	}

	public void setLongitud(double longitud) {
		this.longitud = longitud;
	}

	public boolean isReversible() {
		return reversible;
	}

	public void setReversible(boolean reversible) {
		this.reversible = reversible;
	}
	
	
}
