package Cine;

public class Pelicula extends SalaCine{

	private String titulo;
	private double duracion;
	private int edad;
	private String director;
	
	public Pelicula(String pelicula, double precio, int[] filas, int[] columnas, String titulo, double duracion,
			int edad, String director) {
		super(pelicula, precio, filas, columnas);
		this.titulo = titulo;
		this.duracion = duracion;
		this.edad = edad;
		this.director = director;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public double getDuracion() {
		return duracion;
	}

	public void setDuracion(double duracion) {
		this.duracion = duracion;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}
	
	

}
