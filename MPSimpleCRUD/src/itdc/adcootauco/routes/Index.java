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


@WebServlet("/index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Index() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DataService service = new DataService();
		
//		int id = 1;
//		String picture = "http://www.happinessplunge.com/wp-content/uploads/2012/10/Happy-Peanuts.jpg";
//		String firstName = "Happy";
//		String lastName = "Peanut";
//		String motto = "All peanuts are my peanuts.. my homes...";
//		String profession = "ITDC Student";
//		String skills = "Eat | Slee | Pray | wage war on everything Non-Peanut....";
//		String facebook = "http://getbootstrap.com/";
//		String github = "http://getbootstrap.com/";
//		String linkedin = "http://getbootstrap.com/";
//		Member member = new Member(id, picture, firstName, lastName, motto, profession, skills, facebook, github,
//				linkedin);
//		service.addMember(member);
		
		List<Member> members = service.getAllMembers();
		
		request.setAttribute("members", members);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
