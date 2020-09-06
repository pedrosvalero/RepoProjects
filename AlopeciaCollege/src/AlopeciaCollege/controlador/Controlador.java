package AlopeciaCollege.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AlopeciaCollege.modelo.UsuarioDAO;
import AlopeciaCollege.modelo.Usuario;


/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //Perfil
	//Usuario
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");
		String dni = request.getParameter("dni");
		UsuarioDAO udao = new UsuarioDAO();
		Usuario u = null;
		
		String destPage = "Perfil.jsp";
		
		switch (opcion) {
		case "e":
			try {
				u = udao.getPerfil(dni);
				request.setAttribute("nomUsu", u);
				destPage = "Perfil.jsp";
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
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");
		String localidad = request.getParameter("localidad");
		String telefono = request.getParameter("telefono");
		String pass = request.getParameter("pass");
		
		Usuario u = new Usuario();
		u.setEmail(email);
		u.setNick(nick);
		u.setLocalidad(localidad);
		u.setPass(pass);
		
		UsuarioDAO usuDAO = new UsuarioDAO();
		String pagDest = "Perfil.jsp";
		
		try {
			usuDAO.modificarUsuario(u);
			pagDest = "Perfil.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
			dispatcher.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	}

}
