package proyectoweb.eoi.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import proyectoweb.eoi.servicios.*;

public class DepartamentoDAO {
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;

	public void altaDepto(Departamento d) throws SQLException {

		String sql = "INSERT INTO departamento (codDepto,nombreDpto,ciudad,codDirector) VALUES (?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, d.getCoddepto());
		pst.setString(2, d.getNombredpto());
		pst.setString(3, d.getCiudad());
		pst.setString(4, d.getCodDirector());

		pst.executeUpdate();

	}

	public void modificarDepto(Departamento d) throws SQLException {

		String sql = "UPDATE departamento SET nombreDpto = ?, ciudad = ?, codDirector = ? WHERE codDepto = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, d.getNombredpto());
		pst.setString(2, d.getCiudad());
		pst.setString(3, d.getCodDirector());
		pst.setString(4, d.getCoddepto());

		pst.executeUpdate();

	}

	public void borrarDepto(String coddepto) throws SQLException {

		String sql = "DELETE FROM departamento WHERE codDepto = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, coddepto);

		pst.executeUpdate();

	}

	public Departamento getDepartamento(String coddepto) throws SQLException {

		Departamento d = null;
		String sql = "SELECT * FROM departamento WHERE codDepto = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setNString(1, coddepto);

		rs = pst.executeQuery();

		if (rs.next()) {
			d = new Departamento();
			d.setCoddepto(rs.getString("codDepto"));
			d.setNombredpto(rs.getString("nombreDpto"));
			d.setCiudad(rs.getString("ciudad"));
			d.setCodDirector(rs.getNString("codDirector"));
		}

		return d;
	}

}
