import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.*;
import java.io.*;
import javax.swing.JOptionPane;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Admin_Login
 */
public class Admin_Login extends HttpServlet {
	
	java.sql.Connection cn = null;
	java.sql.Statement st = null; 
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out =resp.getWriter();
		
		HttpSession session = req.getSession();
		
		Database db= new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String Username = req.getParameter("Username");
		String Password = req.getParameter("Password");
		String event = req.getParameter("submit");
		
		
		out.println(Username);
		out.println(Password);
		out.println(event);
		
		if (event.equals("LOGIN"))
			
		{
			if(Username.equals("")|| Password.equals(""))
			{
				 
				 resp.setContentType("text/html");
				 out.println(" <script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Admin_Login.jsp'; </script>");     
				
			}
		
			else 
		
			{
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
					String sql = "select * from admin_signup where username='"+Username+"' && Password='"+Password+"'";
					st = cn.createStatement();
					ResultSet rs = st.executeQuery(sql);
					
					if (rs.next())
					{
						session.setAttribute("Username", rs.getString("Username"));
						session.setAttribute("Password", rs.getString("Password"));
					
						
						out.println("Login Successfully");
						resp.setContentType("text/html");
						out.println("<script type=\"text/javascript\"> alert('Login Success'); location='Admin_Dashboard.jsp'; </script>");
					
					}
					else
					{
						out.println("Login Failed");
						resp.setContentType("text/html");
						out.println("<script type =\"text/javascript\"> alert ('Login Failed'); location='Admin_Login.jsp'; </script>");
					}
				}
				catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
		}
		
	}

}
