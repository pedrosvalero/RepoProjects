package edu.es.eoi.entities;

public abstract class Zapato extends Producto{

	private String talla;	 
	private String color;
	private Suela suela;
		
	public String getTalla() {
		return talla;
	}
	public void setTalla(String talla) {
		this.talla = talla;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Suela getSuela() {
		return suela;
	}
	public void setSuela(Suela suela) {
		this.suela = suela;
	}
	
	
	
}
