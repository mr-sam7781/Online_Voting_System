

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class Contact_Us
 */
public class Contact_Us extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		 String Name = req.getParameter("Name");
		 String Email = req.getParameter("Email");
		 String Message = req.getParameter("Message");
		 String phone = req.getParameter("phone");
		 String event = req.getParameter("SUBMIT");
		 
		 out.println(Name);
		 out.println(Email);
		 out.println(Message);
		 out.println(phone);
		 out.println(event);
		 
		 
		 if (event.equals("SUBMIT"))
		 {
			 out.println("hello");
			if(	Name.equals("")|| Email.equals("")|| Message.equals("")|| phone.equals(""))
			{
				out.println("hiii");
				resp.setContentType("text/html");
				out.println(" <script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Contact_Us.jsp'; </script>");     
				
			}
			else {
				try {
					String sql="insert into Contact_Us (Name,Email,Message,phone) values ('"+Name+"','"+Email+"', '"+Message+"', '"+phone+"')";
					String insert = db.Insert(sql);
					out.println(insert);
					resp.setContentType("text/html");
					out.println(" <script type=\"text/javascript\"> alert('Message Submitted Successfully'); location= 'Home_Page.jsp'; </script>");
				
				}
				catch(Exception ex) {
					out.println(ex.toString());
				}
				//out.println("<script type=\"text/javascript\" alert ('Message Submitted Successfully'); location='Home_Page.jsp'; </script>");
				
			}
		  
		 }
		 
	}
}
	