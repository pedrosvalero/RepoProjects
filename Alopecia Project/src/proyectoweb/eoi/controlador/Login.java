package proyectoweb.eoi.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import proyectoweb.eoi.modelo.Empleado;
import proyectoweb.eoi.modelo.EmpleadoDAO;

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
		// instanciar un DAO 
		// llamar a la funcion login
		// para llamar a esa funcion voy a necesitar los datos de la vista
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		EmpleadoDAO edao = new EmpleadoDAO();
		
		String pagDest = "index.jsp";
		
		try {
			Empleado emp = edao.login(email, pass);
			
			if (emp != null) {
				pagDest = "datosdepartamento.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("nomempleado", emp.getNomemp());
				session.setAttribute("rol", emp.getRol());
			} else {
				String msgerr = "Usuario y contraseña incorrectos!";
				request.setAttribute("msgerr", msgerr);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	
	}

}
