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
 * Servlet implementation class Ranking
 */
@WebServlet("/Ranking")
public class Ranking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ranking() {
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
		String nick = request.getParameter("nick");
		String puntuacion = request.getParameter("puntuacion");
		String rol = request.getParameter("rol");
		
		UsuarioDAO usao = new UsuarioDAO();
		String pagDest = "Ranking.jsp";
		
		try {
			Usuario u = new Usuario();
			Usuario usu = usao.getRanking(u);
			HttpSession session = request.getSession();
			session.setAttribute("nickUsu", usu.getNick());
			session.setAttribute("puntos", usu.getPuntuacion());
			session.setAttribute("rol", usu.getRol());
			
			pagDest = "Ranking.jsp";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(pagDest);
		dispatcher.forward(request, response);
	}
		

}
