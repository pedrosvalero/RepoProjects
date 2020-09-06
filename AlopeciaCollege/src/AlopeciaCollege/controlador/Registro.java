package AlopeciaCollege.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AlopeciaCollege.modelo.Usuario;
import AlopeciaCollege.modelo.UsuarioDAO;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("name_control");
		String apellidos = request.getParameter("surname_control");
		String DNI = request.getParameter("dni_control");
		String fecNac = request.getParameter("birthdate_control");
		String email = request.getParameter("email_control");
		String nick = request.getParameter("nick_control");
		String pass = request.getParameter("pass_control");
		String localidad = request.getParameter("localidad_control");
		String sexo = request.getParameter("sexo_control");
		String rol = "level 1";
		String telefono = request.getParameter("tlf_control");
		int puntuacion = 0;		
		
		Usuario u = new Usuario();
		u.setDNI(DNI);
		u.setNomUsu(nombre);
		u.setApellidosUsu(apellidos);
		u.setSexUsu(sexo);
		u.setFecNac(fecNac);
		u.setLocalidad(localidad);
		u.setTelefono(telefono);
		u.setRol(rol);
		u.setEmail(email);
		u.setPass(pass);
		u.setNick(nick);
		u.setPuntuacion(puntuacion);

		UsuarioDAO usao = new UsuarioDAO();	
		String pagDest = "Login.jsp";
		
		try {
			usao.altaUsuario(u);
			pagDest = "Login.jsp";
			HttpSession session = request.getSession();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	}

}
