package AlopeciaCollege.modelo;

public class Usuario {
	private String nomUsu;
	private String apellidosUsu;
	private String email;
	private String pass;
	private String rol;
	private String DNI;
	private String nick;
	private String sexUsu;
	private String fecNac;
	private String telefono;
	private String localidad;


	public String getNomUsu() {
		return nomUsu;
	}

	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}

	public String getApellidosUsu() {
		return apellidosUsu;
	}

	public void setApellidosUsu(String apellidosUsu) {
		this.apellidosUsu = apellidosUsu;
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

	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getSexUsu() {
		return sexUsu;
	}

	public void setSexUsu(String sexUsu) {
		this.sexUsu = sexUsu;
	}

	public String getFecNac() {
		return fecNac;
	}

	public void setFecNac(String fecNac) {
		this.fecNac = fecNac;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getLocalidad() {
		return localidad;
	}

	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Usuario [nomUsu=" + nomUsu + ", apellidosUsu=" + apellidosUsu + ", email=" + email + ", pass=" + pass
				+ ", rol=" + rol + ", DNI=" + DNI + ", nick=" + nick + ", sexUsu=" + sexUsu + ", fecNac=" + fecNac
				+ ", telefono=" + telefono + ", localidad=" + localidad + "]";
	}


}
