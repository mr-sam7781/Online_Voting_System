

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
 * Servlet implementation class Admin_AddElection
 */
public class Admin_AddElection extends HttpServlet {
	
	Connection c = null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String election_name = req.getParameter("election_name");
		String election_type = req.getParameter("election_type");
		String election_date = req.getParameter("election_date");
		String start_time = req.getParameter("start_time");
		String end_time = req.getParameter("end_time");
		String result_date = req.getParameter("result_date");
		String rules = req.getParameter("rules");
		String event = req.getParameter("submit");
		
		out.println(election_name);
		out.println(election_type);
		out.println(election_date);
		out.println(start_time);
		out.println(end_time);
		out.println(result_date);
		out.println(rules);
		out.println(event);
		
		
		if (event.equals("Add Election"))
		{
			if (election_name.equals("")||election_type.equals("")||election_date.equals("")||start_time.equals("")||	end_time.equals("")||	result_date.equals("")|| rules.equals(""))
			{
				resp.setContentType("text/html");
				out.println(" <script type= \"text/javascript\"> alert('Please fill in all the required fields.'); location='Admin_AddElection.jsp'; </script>");
			}
			else
			{
				try 
				{
					String sql ="insert into AddElection (election_name ,election_type,election_date,start_time,end_time,result_date,rules) values ('"+election_name+"' ,'"+election_type+"','"+election_date+"','"+start_time+"','"+end_time+"','"+result_date+"','"+rules+"')";
					String insert = db.Insert(sql);
					out.println(insert);
					resp.setContentType("text/html");
					out.println(" <script type= \"text/javascript\"> alert('Election added successfully.'); location='Admin_ElectionManagement.jsp'; </script>");
				
					
				}
				catch(Exception ex)
				 {
					 out.println(ex.toString());	
				 } 
			}
		}
	}
	
}
