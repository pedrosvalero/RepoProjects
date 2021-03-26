package es.eoi.ejercicio1;

public class VehiculoPedro {
	
	private String marca;
	private String modelo;
	private String color;
	private String motor;
	private int plazas;
	private double precio;
	private int anyoMat;
	private String nombre;
	private int tlf;
	
	public VehiculoPedro() {
		// TODO Auto-generated constructor stub
	}

	public VehiculoPedro(String marca, String modelo, String color, String motor, int plazas, double precio, int anyoMat,
			String nombre, int tlf) {
		this.marca = marca;
		this.modelo = modelo;
		this.color = color;
		this.motor = motor;
		this.plazas = plazas;
		this.precio = precio;
		this.anyoMat = anyoMat;
		this.nombre = nombre;
		this.tlf = tlf;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getMotor() {
		return motor;
	}

	public void setMotor(String motor) {
		this.motor = motor;
	}

	public int getPlazas() {
		return plazas;
	}

	public void setPlazas(int plazas) {
		this.plazas = plazas;
	}
	
	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getAnyoMat() {
		return anyoMat;
	}

	public void setAnyoMat(int anyoMat) {
		this.anyoMat = anyoMat;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getTlf() {
		return tlf;
	}

	public void setTlf(int tlf) {
		this.tlf = tlf;
	}
	
	public String menu() {
		return marca + " " + modelo + " " + anyoMat + " - " + precio + "€. ";
	}

	@Override
	public String toString() {
		return marca + " " + modelo + " " + anyoMat + " - " + precio + "€ (" + motor + ") - " + plazas + " Plazas con Color " + 
			   color + "\n Datos del vendedor: " + nombre + " - " + tlf + "\n";
	}
	
	
	
	


}
