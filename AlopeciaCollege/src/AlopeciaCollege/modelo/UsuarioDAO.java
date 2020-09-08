package AlopeciaCollege.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import AlopeciaCollege.servicios.Conexion;

/**
 * Servlet implementation class UsuarioDAO
 */

public class UsuarioDAO {
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	
	//QUERY LOGIN USUARIO
	public Usuario login(String email, String pass) throws SQLException {
		
		Usuario u = null;
		String query = "Select DNI, nomUsu, nick, email, pass, rol, localidad, telefono FROM alopeciacollege.usuario WHERE email = ? AND pass = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(query);
		pst.setString(1, email);
		pst.setString(2, pass);
		
		rs = pst.executeQuery();
		if(rs.next()) {
			u = new Usuario();
			u.setDNI(rs.getString("DNI"));
			u.setNomUsu(rs.getNString("nomUsu"));
			u.setNick(rs.getNString("nick"));
			u.setEmail(rs.getString("email"));
			u.setPass(rs.getString("pass"));
			u.setRol(rs.getString("rol"));
			u.setLocalidad(rs.getNString("localidad"));
			u.setTelefono(rs.getString("telefono"));
			
		}
		return u;
	}
	
	//QUERY ALTA USUARIO - REGISTER
	public void altaUsuario(Usuario u) throws SQLException {

		String sql = "INSERT INTO alopeciacollege.usuario VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getDNI());
		pst.setString(2, u.getNomUsu());
		pst.setString(3, u.getApellidosUsu());
		pst.setString(4, u.getSexUsu());
		pst.setString(5, u.getFecNac());
		pst.setString(6, u.getLocalidad());
		pst.setString(7, u.getTelefono());
		pst.setString(8, u.getEmail());
		pst.setString(9, u.getRol());
		pst.setString(10, u.getPass());
		pst.setString(11, u.getNick());
		pst.setInt(12, u.getPuntuacion());

		pst.executeUpdate();

	}
	
	//RECOGER INFO DEL PERFIL
	public Usuario getPerfil(String dni) throws SQLException {

		Usuario u = null;
		String sql = "SELECT * FROM usuario WHERE DNI = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, dni);

		rs = pst.executeQuery();

		if (rs.next()) {
			u = new Usuario();
			u.setEmail(rs.getString("email"));
			u.setNomUsu(rs.getString("nomUsu"));
			u.setApellidosUsu(rs.getString("apellidosUsu"));
			u.setDNI(rs.getString("dni"));
			u.setNick(rs.getString("nick"));
			u.setLocalidad(rs.getNString("localidad"));
			u.setTelefono(rs.getString("telefono"));
			u.setPass(rs.getNString("pass"));
			u.setSexUsu(rs.getString("sexUsu"));
			u.setFecNac(rs.getNString("FecNac"));
			u.setRol(rs.getNString("rol"));
			u.setPuntuacion(rs.getInt("puntuacion"));
			
		}

		return u;
	}
	
	//QUERY UPDATE USUARIO - EDIT PERFIL
	public void updateUsuario(Usuario u) throws SQLException {

		String sql = "UPDATE alopeciacollege.usuario SET localidad = ?, telefono = ?, email = ?, pass = ?, nick = ? WHERE DNI = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getLocalidad());
		pst.setString(2, u.getTelefono());
		pst.setString(3, u.getEmail());
		pst.setString(4, u.getPass());
		pst.setString(5, u.getNick());
		pst.setString(6, u.getDNI());

		pst.executeUpdate();

	}

	//RECOGER INFO DEL USUARIO
		public Usuario getUsuario(String dni) throws SQLException {

			Usuario u = null;
			String sql = "SELECT * FROM usuario WHERE DNI = ?";
			con = Conexion.getInstance().getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, dni);

			rs = pst.executeQuery();

			if (rs.next()) {
				u = new Usuario();
				u.setEmail(rs.getString("email"));
				u.setNomUsu(rs.getString("nomUsu"));
				u.setApellidosUsu(rs.getString("apellidosUsu"));
				u.setDNI(rs.getString("dni"));
				u.setNick(rs.getString("nick"));
				u.setLocalidad(rs.getNString("localidad"));
				u.setTelefono(rs.getString("telefono"));
				u.setPass(rs.getNString("pass"));
				u.setSexUsu(rs.getString("sexUsu"));
				u.setFecNac(rs.getNString("FecNac"));
				u.setRol(rs.getNString("rol"));
				u.setPuntuacion(rs.getInt("puntuacion"));
				
			}

			return u;
		}

	//QUERY ACTUALIZACION NICK Y ROL A PARTIR DE EMAIL - ESTO SERÁ DESDE MODO ADMIN
	public void modificarUsuario(Usuario u) throws SQLException {

		String sql = "UPDATE alopeciacollege.usuario SET nomUsu = ?, apellidosUsu = ?, sexUsu = ?, FecNac = ?, localidad = ?, telefono = ?, email = ?, pass = ?, nick = ?, puntuacion = ? WHERE DNI = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getNomUsu());
		pst.setString(2, u.getApellidosUsu());
		pst.setString(3, u.getSexUsu());
		pst.setString(4, u.getFecNac());
		pst.setString(5, u.getLocalidad());
		pst.setString(6, u.getTelefono());
		pst.setString(7, u.getEmail());
		pst.setString(8, u.getPass());
		pst.setString(9, u.getNick());
		pst.setInt(10, u.getPuntuacion());
		pst.setString(11, u.getDNI());

		pst.executeUpdate();

	}

	//RECOGER RANKING USUARIOS
	public Usuario getRanking(Usuario u) throws SQLException {

		String sql = "SELECT nick, puntuacion, rol FROM alopeciacollege.usuario ORDER BY puntuacion ASC";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getNick());
		pst.setInt(2, u.getPuntuacion());
		pst.setString(3, u.getRol());

		rs = pst.executeQuery();

		if (rs.next()) {
			u = new Usuario();
			u.setNick(rs.getString("nick"));
			u.setPuntuacion(rs.getInt("puntuacion"));
			u.setRol(rs.getString("rol"));	
		}

		return u;
	}

	//BORRAR USUARIO
	public void borrarUsuario(String dni) throws SQLException {

		String sql = "DELETE FROM alopeciacollege.usuario WHERE DNI = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, dni);

		pst.executeUpdate();

	}
}
