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

@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Add() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		doGet(request, response);
		
		DataService service = new DataService();

		int id = 1; // this is not carried to the DB so any number is okay
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
		service.addMember(member);
		
		String msg = "You have successfully added Peanut Trooper " + firstName + " " + lastName;
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("index");
		rd.forward(request, response);
	}

}
