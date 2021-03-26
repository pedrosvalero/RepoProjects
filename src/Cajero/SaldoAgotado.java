package Cajero;

public class SaldoAgotado extends Exception{
	
	public SaldoAgotado() {
		super ();
	}
	public SaldoAgotado(String mensajeSaldo) {
		super (mensajeSaldo);
	}

}
