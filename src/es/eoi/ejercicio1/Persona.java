package es.eoi.ejercicio1;

public class Persona {
	
	private String nombre;
	private String apellidos;
	private int diaNac;
	private String mesNac;
	private int anyoNac;
	private String ciudad;
	private int edad;
	private boolean estudia;
	private boolean trabaja;
	private char sexo;
	
	
	public Persona() {
		// TODO Auto-generated constructor stub
	}
	
	public Persona(String nombre, String apellidos, int diaNac, String mesNac, int anyoNac, String ciudad, int edad,
			boolean estudia, boolean trabaja, char sexo) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.diaNac = diaNac;
		this.mesNac = mesNac;
		this.anyoNac = anyoNac;
		this.ciudad = ciudad;
		this.edad = edad;
		this.estudia = estudia;
		this.trabaja = trabaja;
		this.sexo = sexo;
	}



	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellidos() {
		return apellidos;
	}


	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}


	public int getDiaNac() {
		return diaNac;
	}


	public void setDiaNac(int diaNac) {
		this.diaNac = diaNac;
	}


	public String getMesNac() {
		return mesNac;
	}


	public void setMesNac(String mesNac) {
		this.mesNac = mesNac;
	}


	public int getAnyoNac() {
		return anyoNac;
	}


	public void setAnyoNac(int anyoNac) {
		this.anyoNac = anyoNac;
	}


	public String getCiudad() {
		return ciudad;
	}


	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}


	public int getEdad() {
		return edad;
	}


	public void setEdad(int edad) {
		this.edad = edad;
	}


	public boolean isEstudia() {
		return estudia;
	}


	public void setEstudia(boolean estudia) {
		this.estudia = estudia;
	}


	public boolean isTrabaja() {
		return trabaja;
	}


	public void setTrabaja(boolean trabaja) {
		this.trabaja = trabaja;
	}


	public char getSexo() {
		return sexo;
	}


	public void setSexo(char sexo) {
		this.sexo = sexo;
	}
	
	public String toString() {
		String mensajeTrabajando;
		String mensajeEstudiando;
		if (trabaja == true) {
			mensajeTrabajando = "estoy trabajando";
		}else {
			mensajeTrabajando = "no estoy trabajando";
		}
		
		if (estudia == true) {
			mensajeEstudiando = "estoy estudiando";
		}else {
			mensajeEstudiando = "no estoy estudiando";
		}
		
		return "Hola me llamo " + nombre + " " + apellidos + " y tengo " + edad + " años.\n" + "Nací el " + diaNac + "/" + mesNac + "/" + anyoNac 
				+ " y vivo en " + ciudad + ".\nActualmente " + mensajeTrabajando + " y " + mensajeEstudiando + "."; 
				
	}
	
	
	
}
