

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
 * Servlet implementation class adminaddelectioncandidate
 */
public class adminaddelectioncandidate extends HttpServlet {
	Connection c = null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String candidatename = req.getParameter("candidatename");
		String candidatephoto = req.getParameter("candidatephoto");
		String candidatelogo = req.getParameter("candidatelogo");
		String partyname = req.getParameter("partyname");
       String event = req.getParameter("submit");
		
		out.println(candidatename);
		out.println(candidatephoto);
		out.println(candidatelogo);
		out.println(partyname);
		out.println(event);
		
		if (event.equals("Submit"))
		{
			if (candidatename.equals("")||candidatephoto.equals("")||candidatelogo.equals("")||partyname.equals(""))
			{
				resp.setContentType("text/html");
				out.println(" <script type= \"text/javascript\"> alert('Please fill in all the required fields.'); location='Admin_AddElection.jsp'; </script>");
			}
			else
			{
				try 
				{
					String sql ="insert into addlectioncandidate (candidatename ,candidatephoto,candidatelogo,partyname) values ('"+candidatename+"' ,'"+candidatephoto+"','"+candidatelogo+"','"+partyname+"')";
					String insert = db.Insert(sql);
					out.println(insert);
					resp.setContentType("text/html");
			    	out.println(" <script type= \"text/javascript\"> alert('add candidate successfully'); location='adminaddelectioncandidate.jsp'; </script>");
				}
				catch(Exception ex)
				 {
					 out.println(ex.toString());	
				 } 
			}
		}
	}

}
