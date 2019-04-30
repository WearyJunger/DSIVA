package controller;

import java.io.IOException;     
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import negocio.Grupoie;
import negocio.Grupointegrante;
import negocio.Integrante;
import negocio.Director;
import negocio.Grupodirector;
import model.GrupoieDao;
import model.GrupointegranteDao;
import model.IntegranteDao;



/**
 * Servlet implementation class EquipoController
 */
@WebServlet("/RegistroIntegrantesController")
public class RegistroIntegrantesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistroIntegrantesController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		
		String nombre = request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String cedula=request.getParameter("cedula");
		String email=request.getParameter("email");
		String contrase�a=request.getParameter("contrase�a");
				
		Integrante integr=new Integrante();
		integr.setNombre(nombre);
		integr.setEmail(email);
		integr.setApellido(apellido);
		integr.setIdentificacion(cedula);
		integr.setPassword(contrase�a);
		
		IntegranteDao intdDao=new IntegranteDao();
		intdDao.insert(integr);
		Director dr =(Director)request.getSession().getAttribute("user");
		
		Grupoie aux =  (Grupoie) request.getSession().getAttribute("grupoIE");
		Grupointegrante grIntgr = new Grupointegrante();
		GrupointegranteDao grIntegrDao = new GrupointegranteDao();
	
		Grupodirector grupoD=dr.getGrupodirectors().get(0);
		Grupoie gie=grupoD.getGrupoie();
		
		grIntgr.setGrupoie(gie);
		grIntgr.setIntegrante(integr);		
		grIntgr.setFechaRegistro(new Date());
		grIntegrDao.insert(grIntgr);
		request.getSession().setAttribute("grupoIE", aux);
		aux= new GrupoieDao().find(aux.getIdGrupoIE());
		request.getSession().setAttribute("integrantes", intdDao.list()); 	
		request.getSession().setAttribute("lineasDeInvestigacion", aux.getLineainvesrigacions());
		
		PrintWriter out = response.getWriter();
		response.sendRedirect(request.getContextPath() + "/indx_director.jsp");
		/*response.getWriter().append("<br/>Nombre: ").append(nombre);
		response.getWriter().append("<br/>Presidente: ").append(presidente);*/

	}

}
