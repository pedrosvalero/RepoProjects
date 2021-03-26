package Cine;

public abstract class SalaCine {
	
	private String pelicula;
	private double precio;
	private int[] filas;
	private int[] columnas;
	
	
	public SalaCine(String pelicula, double precio, int[] filas, int[] columnas) {
		super();
		this.pelicula = pelicula;
		this.precio = precio;
		this.filas = filas;
		this.columnas = columnas;
	}


	public String getPelicula() {
		return pelicula;
	}


	public void setPelicula(String pelicula) {
		this.pelicula = pelicula;
	}


	public double getPrecio() {
		return precio;
	}


	public void setPrecio(double precio) {
		this.precio = precio;
	}


	public int[] getFilas() {
		return filas;
	}


	public void setFilas(int[] filas) {
		this.filas = filas;
	}


	public int[] getColumnas() {
		return columnas;
	}


	public void setColumnas(int[] columnas) {
		this.columnas = columnas;
	}
	

}
