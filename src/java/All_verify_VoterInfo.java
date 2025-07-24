

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class All_verify_VoterInfo
 */
public class All_verify_VoterInfo extends HttpServlet {
	Connection cn = null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		PrintWriter out = resp.getWriter();
		
		HttpSession session = req.getSession();
		 
		 
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result); 
		
		String candidate_signup_id=req.getParameter("candidate_signup_id");
		String event=req.getParameter("submit");
		
		out.println(candidate_signup_id);
		out.println(event);
		
		if(event.equals("View"))
		{
			session.setAttribute("candidate_signup_id", candidate_signup_id);
			resp.sendRedirect("All_verify_VoterInfo.jsp");
		}
		
	}
}
