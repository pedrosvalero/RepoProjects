package proyectoweb.eoi.controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import proyectoweb.eoi.modelo.*;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String opcion = request.getParameter("opcion");
		String coddepto = request.getParameter("coddepto");
		DepartamentoDAO ddao = new DepartamentoDAO();
		Departamento d = null;
		
		String destPage = "datosdepartamento.jsp";
		
		switch (opcion) {
		case "e":
			try {
				d = ddao.getDepartamento(coddepto);
				request.setAttribute("dpto", d);
				destPage = "editardepartamento.jsp";
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case "b":
			try {
				ddao.borrarDepto(coddepto);
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
		
		String coddepto = request.getParameter("coddepto");
		String nombredpto = request.getParameter("nombredpto");
		String ciudad = request.getParameter("ciudad");
		String coddirector = request.getParameter("coddirector");
		String opcion = request.getParameter("opcion");
		
		Departamento d = new Departamento();
		d.setCoddepto(coddepto);
		d.setNombredpto(nombredpto);
		d.setCiudad(ciudad);
		d.setCodDirector(coddirector);
		
		DepartamentoDAO dptdao = new DepartamentoDAO();
		String pagDest = "index.jsp";
		
		try {
			if (opcion == null)
				dptdao.altaDepto(d);
			else
				dptdao.modificarDepto(d);
			pagDest = "datosdepartamento.jsp";
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
