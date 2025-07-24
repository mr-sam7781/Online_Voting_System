
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
 * Servlet implementation class Admin_SignUp
 */
public class Admin_SignUp extends HttpServlet {
	
	Connection cn =null; 
	Statement st = null; 
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	 PrintWriter out = resp.getWriter();
	 
	 Database db = new Database();
	 String result = db.Connectdb();
	 out.println(result);
	
	 String username = req.getParameter("username");
	 String email = req.getParameter("email");
	 String Password = req.getParameter("Password");
	 String confirm_Password = req.getParameter("confirm_Password");
	 String event = req.getParameter("submit");
	 
	 out.println(username);
	 out.println(email);
	 out.println(Password);
	 out.println(confirm_Password);
	 
	 if(event.equals("SIGN UP"))
	 {
		 if(username.equals("") || email.equals("") || Password.equals("") || confirm_Password.equals(""))
		 {
			 resp.setContentType("text/html");
			 out.println(" <script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Admin_SignUp.jsp'; </script>");     
			
		 }
		 else
		 {
			 try {
				 
			
			String sql =" insert into Admin_SignUp (username ,email ,password , confirm_password) values ( '"+username +"' , '"+email+"', '"+Password+"', '"+confirm_Password+"')";
			String insert = db.Insert(sql);
			out.println(insert);
			resp.setContentType("text/html");
			out.println(" <script type=\"text/javascript\"> alert('SignUp Successfully Done'); location= 'Admin_Login.jsp'; </script>");     

			 }
			 catch (Exception ex)
			 {
				 out.println(ex.toString());
			 }
		 }
			
	 }
	 
	}
}
