package itdc.adcootauco.routes;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itdc.adcootauco.data.AuthService;
import itdc.adcootauco.model.User;

@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password_confirmation = request.getParameter("password_confirmation");

		AuthService auth = new AuthService();

		User user = auth.findUser(email);
		RequestDispatcher rd = null;
		
		if (user == null) {
			if(!password.equals(password_confirmation)){
				String error = "Please make sure both passwords are identical.";
				request.setAttribute("error", error );
				rd = request.getRequestDispatcher("register.jsp");
				rd.forward(request, response);
			} else {
				auth.addUser(email, password);
				String msg = "You have successfully created an account.";
				request.setAttribute("msg", msg);
				rd = request.getRequestDispatcher("index");
				rd.forward(request, response);
			}
			
		} else {
			String error = "Email " + email + " is taken. Register another email address or try loggin in.";
			request.setAttribute("error", error );
			rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}		

	}

}
