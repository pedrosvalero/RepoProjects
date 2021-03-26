package es.eoi.ejercicio1;

public class MesesPedro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String [] mes = {"Enero", "Febrero", "Marzo", "Abril", "Mayo",
				"Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre",
				"Diciembre"};
		int [] dias = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		for (int i= 0; i < mes.length ; i++) {
			if (i == 2) {
				System.out.println("El " + (i+1) + "º mes del año es " + mes[i] + " y tiene " + dias [i] + " o 29 dias.");
			}else {
				System.out.println("El " + (i+1) + "º mes del año es " + mes[i] + " y tiene " + dias [i] + " dias.");
			}
		}
	}

}
