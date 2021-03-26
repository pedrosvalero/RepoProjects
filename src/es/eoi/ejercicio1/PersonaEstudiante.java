package es.eoi.ejercicio1;

public class PersonaEstudiante extends PersonaCampus {
	private int numEstudiante;
	private double[] notas;
	
	
	public PersonaEstudiante(int numEstudiante, double [] notas) {
		this.numEstudiante = numEstudiante;
		this.notas = notas;
	}


	public int getNumEstudiante() {
		return numEstudiante;
	}


	public void setNumEstudiante(int numEstudiante) {
		this.numEstudiante = numEstudiante;
	}

	
	public double[] getNotas() {
		return notas;
	}


	public void setNotas(double[] notas) {
		this.notas = notas;
	}


	public double calcularMedia (double media) {
		
		return media;
	}
	
	public double calcularMatricula () {
		//100*aprobadas + 200*suspensos
		double importe=0;
		for (int i = 0; i<notas.length; i++) {
			if (notas[i]>= 5) {
				importe=importe+100;
			}else {
				importe=importe+200;
			}		
		}
		
		return importe;
	}
	
}
