package es.eoi.ejercicio1;

public class PersonaProfesor extends PersonaCampus{
	
	private double salario;
	private String asignatura;
	
	
	public PersonaProfesor(double salario, String asignatura) {
		this.salario = salario;
		this.asignatura = asignatura;
	}


	public double getSalario() {
		return salario;
	}


	public void setSalario(double salario) {
		this.salario = salario;
	}


	public String getAsignatura() {
		return asignatura;
	}


	public void setAsignatura(String asignatura) {
		this.asignatura = asignatura;
	}
	

}
