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
 * Servlet implementation class ActualizaPuntuacion
 */
@WebServlet("/ActualizaPuntuacion")
public class ActualizaPuntuacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizaPuntuacion() {
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
		String dni = request.getParameter("dni");
		String rol = request.getParameter("rol");
		int puntuacion = Integer.parseInt(request.getParameter("puntuacion"));
		
		Usuario u = new Usuario();
		u.setDNI(dni);
		u.setRol(rol);
		u.setPuntuacion(puntuacion);
	
		
		UsuarioDAO usao = new UsuarioDAO();
		String pagDest = "Home.jsp";
	

	try {
		usao.actualizaPuntos(u);		
		pagDest = "Home.jsp";
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
	dispatcher.forward(request, response);
	
	}

}
