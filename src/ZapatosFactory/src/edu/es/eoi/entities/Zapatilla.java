package edu.es.eoi.entities;

public class Zapatilla extends Zapato implements Vendible {
	
	private Cordon cordon;
	private boolean running;	
	private boolean camara;
	
	public boolean isRunning() {
		return running;
	}
	public void setRunning(boolean running) {
		this.running = running;
	}
	public boolean isCamara() {
		return camara;
	}
	public void setCamara(boolean camara) {
		this.camara = camara;
	}
	public Cordon getCordon() {
		return cordon;
	}
	public void setCordon(Cordon cordon) {
		this.cordon = cordon;
	}
	
	@Override
	public void vender() {
		System.out.println("Soy una zapatilla y me vendo muy bien en invierno");
		
	}
	
	

}
