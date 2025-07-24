

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
 * Servlet implementation class User_SignUP
 */
public class User_SignUP extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		 String First_Name = req.getParameter("First_Name");
		 String Middle_Name = req.getParameter("Middle_Name");
		 String Last_Name = req.getParameter("Last_Name");
		 String Email_ID = req.getParameter("Email_ID");
		 String Mobile_Number = req.getParameter("Mobile_Number");
		 String gender = req.getParameter("gender");
		 String State = req.getParameter("State");
		 String District = req.getParameter("District");
		 String Address = req.getParameter("Address");
		 String Voter_ID = req.getParameter("Voter_ID");
		 String Adhar_Number = req.getParameter("Adhar_Number");
		 String Password = req.getParameter("Password");
		 String Confirm_Password = req.getParameter("Confirm_Password");
		 String Birth_Date = req.getParameter("Birth_Date");
		 String VoterIDCard = req.getParameter("VoterIDCard");
		 String AdharCard = req.getParameter("AdharCard");
		 String Image = req.getParameter("Image");
		 String event = req.getParameter("submit");
		 
		 
		 
		 out.println(First_Name);
		 out.println(Middle_Name);
		 out.println(Last_Name);
		 out.println(Email_ID);
		 out.println(Mobile_Number);
		 out.println(gender);
		 out.println(State);
		 out.println(District);
		 out.println(Address);
		 out.println(Voter_ID);
		 out.println(Adhar_Number);
		 out.println(Password);
		 out.println(Confirm_Password);
		 out.println(Birth_Date);
		 out.println(VoterIDCard);
		 out.println(AdharCard);
		 out.println(Image);
		 out.println(event);
		
		 if (event.equals("Submit"))
		 {
			if (First_Name.equals("")||  Middle_Name.equals("")|| 	Last_Name.equals("")||  Email_ID.equals("")||  Mobile_Number.equals("")||	gender.equals("")|| State.equals("")|| 	District.equals("")||  Address.equals("")|| Voter_ID.equals("")||  Adhar_Number.equals("")||  Password.equals("")|| Confirm_Password.equals("")|| Birth_Date.equals("")|| VoterIDCard.equals("")|| AdharCard.equals("")|| Image.equals(""))
			{
				 resp.setContentType("text/html");
				 out.println("<script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Admin_Login.jsp'; </script>");     
				
			}
			else 
			{
				
				try 
				{
			
				  String sql = "insert into user_signup (First_Name,Middle_Name,Last_Name,Email_ID,Mobile_Number ,gender,State,District,Address,Voter_ID,Adhar_Number,Password,Confirm_Password, Birth_Date,VoterIDCard,AdharCard,Image, status ) values ('"+First_Name+"', '"+Middle_Name+"', '"+Last_Name+"', '"+Email_ID+"', '"+Mobile_Number+"', '"+gender+"', '"+State+"', '"+District+"', '"+Address+"', '"+Voter_ID+"', '"+Adhar_Number+"', '"+Password+"', '"+Confirm_Password+"','"+Birth_Date+"','"+VoterIDCard+"','"+AdharCard+"','"+Image+"','Not Approved')";
				  String insert = db.Insert(sql);
				  out.println(insert);
				  resp.setContentType("text/html");
				  out.println(" <script type=\"text/javascript\"> alert('Resistration Successful'); location= 'User_Login.jsp'; </script>");
				
				}
				catch (Exception ex)
				{
					out.println(ex.toString());  
				}
			  
			}
		 }
	}
}
