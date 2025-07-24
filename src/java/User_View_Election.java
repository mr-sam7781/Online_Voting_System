

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
 * Servlet implementation class User_View_Election
 */
public class User_View_Election extends HttpServlet {
	
	Connection cn = null;
	Statement st = null; 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out =resp.getWriter();
		
		HttpSession session = req.getSession();
		
		Database db= new Database();
		String result = db.Connectdb();
	    out.println(result);
	  
	    String candidate_id = req.getParameter("candidate_id"); 
	    
	    
		String event = req.getParameter("submit");

		out.println(event);
		

		

		if(event.equals("Vote")) 
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
				String sql = "select * from votings where Adhar_Number='"+session.getAttribute("Adhar_Number")+"' && position = '"+session.getAttribute("position")+"' ";
				st = cn.createStatement();
				ResultSet rs = st.executeQuery(sql);
				
				
				if(rs.next())
				{ 
					resp.setContentType("text/html");
					out.println("<script type =\"text/javascript\"> alert('You have already voted.. You can vote only once'); location='User_Dashboard.jsp'; </script>");
				}
				else
				{
					String sql1 = "insert into votings (election_id, Adhar_Number, candidate_id, position) values ('"+session.getAttribute("Election_Id")+"','"+session.getAttribute("Adhar_Number")+"','"+candidate_id+"', '"+session.getAttribute("position")+"') ";
					String insert = db.Insert(sql1);
					out.println(insert);
					
					long votes = 0;
					
					
					Class.forName("com.mysql.jdbc.Driver");
					cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
					String sql2 = "select * from admin_add_candidate where candidate_id = '"+candidate_id+"'";
					st = cn.createStatement();
					ResultSet rs2 = st.executeQuery(sql2);
					
					if(rs2.next())
					{ 
						votes = (long) Long.parseLong(rs2.getString("votes")) + 1;
					}
	
					String sql3 = "update admin_add_candidate set votes = '"+votes+"' where candidate_id = '"+candidate_id+"' ";
					String update = db.update(sql3);
					out.println(update);
					
					resp.setContentType("text/html");
					out.println(" <script type=\"text/javascript\"> alert('Vote submitted Successfully'); location= 'Available_positions.jsp'; </script>");     
				}
				
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
	}

}
