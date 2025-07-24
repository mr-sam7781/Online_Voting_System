

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
 * Servlet implementation class verifiedvoterlist
 */
public class verifiedvoterlist extends HttpServlet {
	Connection cn = null;
	Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
PrintWriter out = resp.getWriter();
	
	HttpSession session = req.getSession();
	 
	 
	Database db = new Database();
	String result = db.Connectdb();
	out.println(result);  
	
	String candidate_signup_id = req.getParameter("candidate_signup_id");
	String First_Name = req.getParameter("First_Name");
	String Middle_Name = req.getParameter("Middle_Name");
	String last_Name = req.getParameter("last_Name");
	String event = req.getParameter("submit");
	
	out.println(candidate_signup_id);
	out.println(First_Name);
	out.println(Middle_Name);
	out.println(last_Name);
	out.println(event);
	
	if(event.equals("Show"))
	{
		session.setAttribute("candidate_signup_id", candidate_signup_id);
		resp.sendRedirect("All_verify_VoterInfo.jsp");
	}
}
}
