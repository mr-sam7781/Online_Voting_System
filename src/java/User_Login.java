
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
import java.sql.Statement;
import java.sql.*;
import java.io.*;


public class User_Login extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		HttpSession session = req.getSession();
		
		 
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);  
		
		String Adhar_Number = req.getParameter("Adhar_Number");
		String Password = req.getParameter("Password");
		String event = req.getParameter("submit");
		
		
		
		out.println(Adhar_Number);
		out.println(Password);
		
		if (event.equals("LOGIN"))
		{
			if(Adhar_Number.equals("") || Password.equals(""))
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
						String sql = "select *from user_signup where Adhar_Number='"+Adhar_Number+"' && Password= '"+Password+"'";
						st = cn.createStatement();
						ResultSet rs = st.executeQuery(sql);
						
						if(rs.next())
						{
							session.setAttribute("Adhar_Number", rs.getString("Adhar_Number"));
							session.setAttribute("Image", rs.getString("Image"));
							session.setAttribute("user_id", rs.getString("candidate_signup_id"));
							
							out.println("login success");
							
							resp.setContentType("text/html");
							out.println("<script type =\"text/javascript\"> alert('login success'); location='User_Dashboard.jsp'; </script>");
						}
						else
						{
							out.println("login failed");
							resp.setContentType("text/html");
	
							out.println("<script type =\"text/javascript\"> alert('login failed'); location='User_Login.jsp'; </script>");
							
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
