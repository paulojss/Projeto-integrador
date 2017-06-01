package br.com.hotel.bll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.hotel.dal.AdminDAO;
import br.com.hotel.model.EAdmistrador;

/**
 * Servlet implementation class AutenticadorAdm
 */
@WebServlet("/autenticadoradm.do")
public class AutenticadorAdm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AutenticadorAdm() {
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
		String login = request.getParameter("txtemail");
		String senha = request.getParameter("txtsenha");
		
		
		EAdmistrador adm = new EAdmistrador();
		adm.setLogin(login);
		adm.setSenha(senha);
		
		AdminDAO adao = new AdminDAO();
		EAdmistrador admReturn = adao.autenticar(adm);
		
		if(admReturn != null){
			
			//cria a sessao
			HttpSession s = request.getSession();
			s.setMaxInactiveInterval(3000);
			s.setAttribute("adminLogado", admReturn);
			
			//Encaminha a pagina de administracao
			request.getRequestDispatcher("logado-admsystem.jsp").forward(request, response);
			
		}else{
			response.sendRedirect("login-admsystem.jsp");
		}
		
		
		
		
		
		
		

	}

}
