package es.eoi.ejercicio1;

public abstract class PersonaCampus {
	
	protected String nombre;
	protected String apellidos;
	protected String telefono;
	protected String email;
	private PersonaDireccion direccion;
	
/*	public PersonaCampus() {}
	
	public PersonaCampus(String nombre, String apellidos, String telefono, String email) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.email = email;
	}*/

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

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public PersonaDireccion getDireccion() {
		return direccion;
	}

	public void setDireccion(PersonaDireccion direccion) {
		this.direccion = direccion;
	}

	
}
