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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email_control");
		String pass = request.getParameter("pass_control");
		
		UsuarioDAO usao = new UsuarioDAO();
		String pagDest = "Home.jsp";
	

	try {
		Usuario usu = usao.login(email, pass);
		
		if (usu != null) {
			pagDest = "Home.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("dni", usu.getDNI());
			session.setAttribute("nomUsuario", usu.getNomUsu());
			session.setAttribute("nickUsu", usu.getNick());
			session.setAttribute("rol", usu.getRol());
			session.setAttribute("email", usu.getEmail());
			session.setAttribute("localidad", usu.getLocalidad());
			session.setAttribute("telefono", usu.getTelefono());
			session.setAttribute("pass", usu.getPass());
			session.setAttribute("puntuacion", usu.getPuntuacion());
			session.setAttribute("foto", usu.getFoto());
			
		} else {
			String msgerr = "Parámetros de login incorrectos!";
			request.setAttribute("msgerr", msgerr);
			pagDest  = "Login.jsp";
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
	dispatcher.forward(request, response);

}

}
