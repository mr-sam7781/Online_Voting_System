

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class add_position
 */
public class add_position extends HttpServlet {
	Connection cn = null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
 
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String election_name = req.getParameter("election_name");
		String position = req.getParameter("position");
		String event = req.getParameter("submit");
		
		
		out.println(election_name);
		 out.println(position);
		 out.println(event);
		 
		 
		 if (event.equals("ADD POSITION"))
		 {
			 if( election_name.equals("")|| position.equals(""))
			 { 
				 resp.setContentType("text/html");
				 out.println(" <script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Admin_add_Position.jsp'; </script>");     
			}
			else
			{
			
				 try 
				 {
					 
					 String sql = "insert into add_position(election_name,position) values ('"+election_name+"','"+position+"')";
					 String insert = db.Insert(sql);
					 out.println(insert);
					 resp.setContentType("text/html");
					 out.println(" <script type=\"text/javascript\"> alert('Position Add Successfully'); location= 'Admin_add_Position.jsp'; </script>");     
				
				 
				 } 
				 catch(Exception ex)
				 {
					 out.println(ex.toString());	
				 } 
			 }
			 
		 } 
	}
}
