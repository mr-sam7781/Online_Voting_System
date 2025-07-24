

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class voterverify
 */
public class voterverify extends HttpServlet {
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
		
		

		if(event.equals("Allow"))
		{
			
				try {
				
		
			String sql="update user_signup set status ='Allowed' where candidate_signup_id='"+candidate_signup_id+"' ";
			String update =db.update(sql);
			out.println(update);
			
			resp.setContentType("text/html");
			out.println(" <script type=\"text/javascript\"> alert('Voter Verified'); location= 'verifiedvoterlist.jsp'; </script>");
			}
			catch (Exception e) {
				out.println(e.toString());
			}
		}
		
		 if(event.equals("Deny"))
			{
				
				try {
					String sql="delete from  user_signup where candidate_signup_id ='"+candidate_signup_id+"'";
					String delete=db.delete(sql);
					out.println(delete);
					resp.setContentType("text/html");
					out.println(" <script type= \"text/javascript\"> alert('Voter Rejected'); location='Admin_ManageVoters.jsp'; </script>");
				}
				catch(Exception ex)
				{
					out.println(ex.toString());
				}
			
		}
		}
		
	
}


