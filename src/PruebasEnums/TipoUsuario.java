package PruebasEnums;

public enum TipoUsuario {
	BASICO ("Plan Básico", 7.99),
	ESTANDAR ("Plan Estandar", 11.99),
	PREMIUM ("Plan Premium", 15.99);

	private String planContratado;
	private double precio;
	
	private TipoUsuario(String planContratado, double precio) {
		this.planContratado = planContratado;
		this.precio = precio;
	}

	public String getPlanContratado() {
		return planContratado;
	}

	public double getPrecio() {
		return precio;
	}
	
	
	
	
}
