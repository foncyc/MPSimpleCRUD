package itdc.adcootauco.routes;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import itdc.adcootauco.data.AuthService;
import itdc.adcootauco.model.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//https://www.javatpoint.com/servlet-http-session-login-and-logout-example
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		AuthService auth = new AuthService();
		
		User user = new User(email, password);
		
		if(auth.isMatch(user)){
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			
			response.sendRedirect("index");
			
		} else {
			response.sendRedirect("login.jsp");
		}
		
		
	}

}
