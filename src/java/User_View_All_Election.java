

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
 * Servlet implementation class User_View_All_Election
 */
public class User_View_All_Election extends HttpServlet {
	Connection cn = null;
	Statement st = null; 
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
	{
		 	PrintWriter out =resp.getWriter();
			
			HttpSession session = req.getSession();
			
			Database db= new Database();
			String result = db.Connectdb();
		    out.println(result);
		  
			String election_name = req.getParameter("election_name");
			String Election_Id = req.getParameter("Election_Id");
			
			String event = req.getParameter("submit");
			
			out.println(election_name);
			out.println(event);

			if(event.equals("NEXT"))
			{
				session.setAttribute("election_name", election_name);
				session.setAttribute("Election_Id", Election_Id);
				
				resp.sendRedirect("Available_positions.jsp");
			}
		    
	}
	}
}