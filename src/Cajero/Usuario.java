package Cajero;

public class Usuario {

	private String user;
	private String pass;
	private double saldo;
	
	
	public Usuario(String user, String pass, double saldo) {
		super();
		this.user = user;
		this.pass = pass;
		this.saldo = saldo;
	}


	public String getUser() {
		return user;
	}


	public void setUser(String user) {
		this.user = user;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public double getSaldo() {
		return saldo;
	}


	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	
	public double retirar(double cantidad) throws SaldoAgotado {
			
		if (cantidad > saldo) {
			throw new SaldoAgotado("No queda dinero en la cartera");
		}else {
			saldo = saldo-cantidad;	
		}
		return saldo;
	}
	
	public double recargar(double recarga) {
		saldo = saldo + recarga;
		return saldo;
	}
	
	@Override
	public String toString() {
		return "Cartera con un saldo de " + saldo;
	}
	
	
}
