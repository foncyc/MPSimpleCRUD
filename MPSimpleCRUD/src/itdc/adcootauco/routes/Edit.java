package itdc.adcootauco.routes;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itdc.adcootauco.data.DataService;
import itdc.adcootauco.model.Member;


@WebServlet("/edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Edit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		DataService service = new DataService();
		
		Member member = service.retrieveData(id);
		
		String[] titles = {
				"...",
				"ITDC Student",
				"Front End Dev",
				"Back End Dev",
				"Full Stack Dev",
				"Data Analyst",
				"Pen Tester",
				"Game Developer",
				"Mobile Developer"
		};
		
		request.setAttribute("titles", titles);
		request.setAttribute("member", member);
		RequestDispatcher rd = request.getRequestDispatcher("edit.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String picture = request.getParameter("picture");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String motto = request.getParameter("motto");
		String profession = request.getParameter("profession");
		String skills = request.getParameter("skills");
		String facebook = request.getParameter("facebook");
		String github = request.getParameter("github");
		String linkedin = request.getParameter("linkedin");
		
		Member member = new Member(id, picture, firstName, lastName, motto, profession, skills, facebook, github,
				linkedin);
		
		DataService service = new DataService();

		service.updateMember(member);
		
		response.sendRedirect("index");
		
//		request.setAttribute("member", member);
//		RequestDispatcher rd = request.getRequestDispatcher("update");
//		rd.forward(request, response);
		
	
	}

}
