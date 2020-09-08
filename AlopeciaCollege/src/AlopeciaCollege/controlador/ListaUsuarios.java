package AlopeciaCollege.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AlopeciaCollege.modelo.Usuario;
import AlopeciaCollege.modelo.UsuarioDAO;

/**
 * Servlet implementation class ListaUsuarios
 */
@WebServlet("/ListaUsuarios")
public class ListaUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");
		String dni = request.getParameter("dni");
		UsuarioDAO udao = new UsuarioDAO();
		Usuario u = null;
		
		String destPage = "EditarUsuario.jsp";
		
		switch (opcion) {
		case "e":
			try {
				u = udao.getUsuario(dni);
				request.setAttribute("dni", u);
				destPage = "EditarUsuario.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "b":
			try {
				udao.borrarUsuario(dni);
				destPage = "Usuarios.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
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
		String telefono = request.getParameter("tlf_control");
		int puntuacion = Integer.parseInt(request.getParameter("puntuacion_control"));
		
		Usuario u = new Usuario();
		u.setDNI(DNI);
		u.setNomUsu(nombre);
		u.setApellidosUsu(apellidos);
		u.setSexUsu(sexo);
		u.setFecNac(fecNac);
		u.setLocalidad(localidad);
		u.setTelefono(telefono);
		u.setEmail(email);
		u.setPass(pass);
		u.setNick(nick);
		u.setPuntuacion(puntuacion);
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		String pagDest = "Usuarios.jsp";
		
		try {
			usuDAO.modificarUsuario(u);
			pagDest = "Usuarios.jsp";
			String msg= "Parámetros de usuario modificados!";
			request.setAttribute("msgerr", msg);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	}

}
