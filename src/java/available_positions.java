

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
 * Servlet implementation class available_positions
 */
public class available_positions extends HttpServlet {
	
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
			String position = req.getParameter("position");
			
			String event = req.getParameter("submit");
			
			out.println(election_name);
			out.println(event);

			if(event.equals("position"))
			{
				session.setAttribute("election_name", election_name);
				session.setAttribute("position", position); 
				
				resp.sendRedirect("User_View_Elections.jsp");
			}
		    
	}
	}
}
