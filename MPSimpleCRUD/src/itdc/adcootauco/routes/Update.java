package itdc.adcootauco.routes;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itdc.adcootauco.data.DataService;
import itdc.adcootauco.model.Member;

@WebServlet("/update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Update() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		Member member = (Member) request.getAttribute("member");

		System.out.println(member.getId());
		System.out.println(member.getFirstName());
		System.out.println(member.getLastName());
		
		DataService service = new DataService();

		service.updateMember(member);
		response.sendRedirect("index");
//		RequestDispatcher rd = request.getRequestDispatcher("index");
//		rd.forward(request, response);
	}

}
