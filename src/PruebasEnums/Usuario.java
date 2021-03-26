package PruebasEnums;

public class Usuario {
	
	private String nombre;
	private String pass;
	TipoUsuario tipoUsu;
	
	public Usuario(String nombre, String pass, TipoUsuario tipoUsu) {
		super();
		this.nombre = nombre;
		this.pass = pass;
		this.tipoUsu = tipoUsu;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public TipoUsuario getTipoUsu() {
		return tipoUsu;
	}

	public void setTipoUsu(TipoUsuario tipoUsu) {
		this.tipoUsu = tipoUsu;
	}
	
	
	
	

}
