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
				
		List<Member> members = service.getAllMembers();
		
		request.setAttribute("members", members);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
