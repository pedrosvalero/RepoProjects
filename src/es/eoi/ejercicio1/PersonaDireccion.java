package es.eoi.ejercicio1;

public class PersonaDireccion {
	
	private String calle;
	private String ciudad;
	private int cp;
	private String pais;
	
	public PersonaDireccion(String calle, String ciudad, int cp, String pais) {
		super();
		this.calle = calle;
		this.ciudad = ciudad;
		this.cp = cp;
		this.pais = pais;
	}

	public String getCalle() {
		return calle;
	}

	public void setCalle(String calle) {
		this.calle = calle;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	@Override
	public String toString() {
		return "La persona con nombre reside en calle " + calle + " en la ciudad " + ciudad + " con Codigo Postal " + cp + " del pais " + pais;
	}
	
	

}
