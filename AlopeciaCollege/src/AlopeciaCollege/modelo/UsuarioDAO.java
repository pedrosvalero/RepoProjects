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
		String query = "Select nomUsu, nick, email, pass, rol FROM alopeciacollege.usuario WHERE email = ? AND pass = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(query);
		pst.setString(1, email);
		pst.setString(2, pass);
		
		rs = pst.executeQuery();
		if(rs.next()) {
			u = new Usuario();
			u.setNomUsu(rs.getNString("nomUsu"));
			u.setNick(rs.getNString("nick"));
			u.setEmail(rs.getString("email"));
			u.setPass(rs.getString("pass"));
			u.setRol(rs.getString("rol"));
			
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
	
	//QUERY SELECT PARA UPDATE USUARIO - EDIT PERFIL
	public void selectUsuario(Usuario u) throws SQLException {

		String sql = "SELECT localidad, telefono, email, pass, nick FROM alopeciacollege.usuario WHERE nick = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getLocalidad());
		pst.setString(2, u.getTelefono());
		pst.setString(3, u.getEmail());
		pst.setString(4, u.getPass());
		pst.setString(5, u.getNick());

		pst.executeUpdate();

	}
	
	//QUERY UPDATE USUARIO - EDIT PERFIL
	public void updateUsuario(Usuario u) throws SQLException {

		String sql = "UPDATE alopeciacollege.usuario SET localidad = ?, telefono = ?, email = ?, pass = ?, nick = ? where dni = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getDNI());
		pst.setString(2, u.getLocalidad());
		pst.setString(3, u.getTelefono());
		pst.setString(4, u.getEmail());
		pst.setString(5, u.getPass());
		pst.setString(6, u.getNick());

		pst.executeUpdate();

	}

	//QUERY ACTUALIZACION NICK Y ROL A PARTIR DE EMAIL - ESTO SERÁ DESDE MODO ADMIN
	public void modificarUsuario(Usuario u) throws SQLException {

		String sql = "UPDATE alopeciacollege.usuario SET nick = ?, rol = ? WHERE email = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, u.getNick());
		pst.setString(2, u.getRol());
		pst.setString(3, u.getEmail());

		pst.executeUpdate();

	}

	//BORRAR USUARIO A PARTIR DEL EMAIL
	public void borrarUsuario(String email) throws SQLException {

		String sql = "DELETE FROM alopeciacollege.usuario WHERE email = ?"; // <- No te olvides del Where...
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);

		pst.executeUpdate();

	}
	
	//RECOGER INFO DEL USUARIO
	public Usuario getUsuario(String email) throws SQLException {

		Usuario u = null;
		String sql = "SELECT * FROM alopeciacollege.usuario WHERE email = ?";
		con = Conexion.getInstance().getConnection();
		pst = con.prepareStatement(sql);
		pst.setString(1, email);

		rs = pst.executeQuery();

		if (rs.next()) {
			u = new Usuario();
			u.setEmail(rs.getString("email"));
			u.setNick(rs.getString("nick"));
			u.setRol(rs.getString("rol"));
			u.setLocalidad(rs.getNString("localidad"));
		}

		return u;
	}
	
	//RECOGER RANKING USUARIOS
	public Usuario getRanking(Usuario u) throws SQLException {

		String sql = "SELECT nick, puntuacion, rol FROM alopeciacollege.usuario order by puntuacion";
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
}
