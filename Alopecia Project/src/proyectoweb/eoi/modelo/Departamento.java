package proyectoweb.eoi.modelo;

public class Departamento {
	private String coddepto;
	private String nombredpto;
	private String ciudad;
	private String codDirector;
	
	public Departamento() {
		super();
		
	}
	
	public Departamento(String coddepto, String nombredpto, String ciudad, String codDirector) {
		super();
		this.coddepto = coddepto;
		this.nombredpto = nombredpto;
		this.ciudad = ciudad;
		this.codDirector = codDirector;
	}



	public String getCoddepto() {
		return coddepto;
	}
	public void setCoddepto(String coddepto) {
		this.coddepto = coddepto;
	}
	public String getNombredpto() {
		return nombredpto;
	}
	public void setNombredpto(String nombredpto) {
		this.nombredpto = nombredpto;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getCodDirector() {
		return codDirector;
	}
	public void setCodDirector(String codDirector) {
		this.codDirector = codDirector;
	}


	@Override
	public String toString() {
		return "Departamento [coddepto=" + coddepto + ", nombredpto=" + nombredpto + ", ciudad=" + ciudad
				+ ", codDirector=" + codDirector + "]";
	}
	
	
}
