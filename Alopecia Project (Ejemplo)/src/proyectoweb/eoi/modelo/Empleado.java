package proyectoweb.eoi.modelo;

public class Empleado {
	private String nomemp;
	private String email;
	private String pass;
	private String rol;
	
	public Empleado() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Empleado(String nomemp, String email, String pass) {
		super();
		this.nomemp = nomemp;
		this.email = email;
		this.pass = pass;
	}

	public String getNomemp() {
		return nomemp;
	}

	public void setNomemp(String nomemp) {
		this.nomemp = nomemp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Empleado [nomemp=" + nomemp + ", email=" + email + ", pass=" + pass + ", rol=" + rol + "]";
	}

	
}
