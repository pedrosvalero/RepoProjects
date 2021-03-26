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
 * Servlet implementation class ActualizaPerfil
 */
@WebServlet("/ActualizaPerfil")
public class ActualizaPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizaPerfil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String opcion = request.getParameter("opcion");
		String dni = request.getParameter("dni");
		UsuarioDAO udao = new UsuarioDAO();
		Usuario u = null;
		
		String destPage = "EditarPerfil.jsp";
		
		switch (opcion) {
		case "e":
			try {
				u = udao.getUsuario(dni);
				request.setAttribute("dni", u);
				destPage = "EditarPerfil.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "b":
			try {
				udao.borrarUsuario(dni);
				destPage = "Login.jsp";
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
		
		String dni = request.getParameter("dni_control");
		String email = request.getParameter("email_control");
		String nick = request.getParameter("nick_control");
		String ciudad = request.getParameter("localidad_control");
		String telefono = request.getParameter("tlf_control");
		String pass = request.getParameter("pass_control");
		
		Usuario u = new Usuario();
		u.setDNI(dni);
		u.setLocalidad(ciudad);
		u.setTelefono(telefono);
		u.setEmail(email);
		u.setPass(pass);
		u.setNick(nick);
	
		
		UsuarioDAO usao = new UsuarioDAO();
		String pagDest = "Login.jsp";
	

	try {
		usao.updateUsuario(u);		
		pagDest = "Login.jsp";
		String msg= "Par�metros de usuario modificados!";
		request.setAttribute("msgerr", msg);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
	dispatcher.forward(request, response);
	}

}
