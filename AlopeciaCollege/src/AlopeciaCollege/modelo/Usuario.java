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
	private int puntuacion;

	public Usuario() {
		super();
	}
	
	
	public Usuario(String nomUsu, String apellidosUsu, String email, String pass, String rol, String DNI,
				   String nick, String sexUsu, String fecNac, String telefono, String localidad, int puntuacion) {
		super();
		this.nomUsu = nomUsu;
		this.apellidosUsu = apellidosUsu;
		this.email = email;
		this.pass = pass;
		this.rol = rol;
		this.DNI = DNI;
		this.nick = nick;
		this.sexUsu = sexUsu;
		this.fecNac = fecNac;
		this.telefono = telefono;
		this.localidad = localidad;
		this.puntuacion = puntuacion;
	}
	

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

	public int getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}

	@Override
	public String toString() {
		return "Usuario [nomUsu=" + nomUsu + ", apellidosUsu=" + apellidosUsu + ", email=" + email + ", pass=" + pass
				+ ", rol=" + rol + ", DNI=" + DNI + ", nick=" + nick + ", sexUsu=" + sexUsu + ", fecNac=" + fecNac
				+ ", telefono=" + telefono + ", localidad=" + localidad + ", puntuacion=" + puntuacion + "]";
	}
	
	


}
