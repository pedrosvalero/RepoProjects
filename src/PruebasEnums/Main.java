package PruebasEnums;

import java.util.ArrayList;
import java.util.List;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Usuario> usuarios = new ArrayList();
		usuarios.add(new Usuario("Pedro", "1234", TipoUsuario.PREMIUM));
		usuarios.add(new Usuario("Paco", "1111", TipoUsuario.BASICO));
		usuarios.add(new Usuario("Paco", "1111", null));
		
		Calendar cal = Calendar.getInstance();
		Calendar calendario1 = new GregorianCalendar();
		Calendar calendario2 = new GregorianCalendar(2020,11,20);
		Calendar calendario3 = new GregorianCalendar(2020,11,20,10,30);
		Calendar calendario4 = new GregorianCalendar(2020,11,20,10,30,30);
		//cal.get(calendario1);
		System.out.println(calendario2);
		System.out.println(calendario3);
		System.out.println(calendario4);
		
		for(Usuario user : usuarios) {
			if(user.getTipoUsu() != null) {
				System.out.println("El usuario " + user.getNombre() + " tiene contratado el " 
	                       + user.getTipoUsu().getPlanContratado() + " y paga " + user.getTipoUsu().getPrecio());
			}else {
				System.out.println("El usuario " + user.getNombre() + " no tiene contratado ningun plan.");
			}
			
		}
	}

}
