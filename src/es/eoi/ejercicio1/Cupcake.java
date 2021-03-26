package es.eoi.ejercicio1;

public class Cupcake {
	
	private String ingredientePrincipal;
	private String color;
	private String envoltorio;
	private double azucar;
	private boolean sinGluten;
	private String estado;
	
	public Cupcake(String ingredientePrincipal, String color, String envoltorio, double azucar, boolean sinGluten) {
		this.ingredientePrincipal = ingredientePrincipal;
		this.color = color;
		this.envoltorio = envoltorio;
		this.azucar = azucar;
		this.sinGluten = sinGluten;
		this.estado = "Crudo";
	}

	public String getIngredientePrincipal() {
		return ingredientePrincipal;
	}

	public void setIngredientePrincipal(String ingredientePrincipal) {
		this.ingredientePrincipal = ingredientePrincipal;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getEnvoltorio() {
		return envoltorio;
	}

	public void setEnvoltorio(String envoltorio) {
		this.envoltorio = envoltorio;
	}

	public double getAzucar() {
		return azucar;
	}

	public void setAzucar(double azucar) {
		this.azucar = azucar;
	}

	public boolean isSinGluten() {
		return sinGluten;
	}

	public void setSinGluten(boolean sinGluten) {
		this.sinGluten = sinGluten;
	}
	
	private void preparar() {
		System.out.println("Preparando el de "+this.ingredientePrincipal);
	}
	
	public boolean cocinar(int tiempo) {
		preparar();
		System.out.println("Cocinando el de "+this.ingredientePrincipal + "(" + tiempo +" minutos)" );
		this.estado = "Cocinado";
		return true;
	}

	@Override
	public String toString() {
		return "Cupcake [ingrediente=" + ingredientePrincipal + ", estado=" + estado + "]";
	}
	
	


	
	

}
