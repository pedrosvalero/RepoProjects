package proyectoweb.eoi.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import proyectoweb.eoi.servicios.Conexion;

public class EmpleadoDAO {
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public Empleado login(String email, String pass) throws SQLException {
		
		Empleado e = null;
		String sql = "SELECT nomEmp, email, pass, rol FROM empleado WHERE email = ? AND pass = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);
		pst.setString(2, pass);
		
		rs = pst.executeQuery();
		
		if (rs.next()) {
			e = new Empleado();
			e.setNomemp(rs.getString("nomEmp"));
			e.setEmail(rs.getString("email"));
			e.setPass(rs.getString("pass"));
			e.setRol(rs.getString("rol"));
		}
		
		return e;
	}
	
}
