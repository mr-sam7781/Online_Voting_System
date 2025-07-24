

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Admin_ElectionManagement
 */
public class Admin_ElectionManagement extends HttpServlet {
	Connection cn =null; 
	Statement st = null; 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		HttpSession session=req.getSession();
	
	
		
		Database db = new Database();
	
		String result = db.Connectdb();
		out.println(result);
		
		
		String election_id = req.getParameter("id");
		String election_name = req.getParameter("election_name");
		String election_type = req.getParameter("election_type");
		String election_date = req.getParameter("election_date");
		String start_time = req.getParameter("start_time");
		String end_time = req.getParameter("end_time");
		String result_date = req.getParameter("result_date");
		String rules = req.getParameter("rules");
		String status = req.getParameter("status");
		String event = req.getParameter("submit");
		
		out.println(election_id);
		out.println(election_name);
		out.println(election_type);
		out.println(election_date);
		out.println(start_time);
		out.println(end_time);
		out.println(result_date);
		out.println(rules);
		out.println(status);
		out.println(event);
		
		
		
		if(event.equals("delete"))
		{
			
			try {
				String sql="delete from addelection where Election_Id ='"+election_id+"'";
				String delete=db.delete(sql);
				out.println(delete);
				resp.setContentType("text/html");
				out.println(" <script type= \"text/javascript\"> alert('Election is deleted'); location='Admin_ElectionManagement.jsp'; </script>");
			}
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		if(event.equals("edit"))
		{
			session.setAttribute("election_id",election_id );
			session.setAttribute("election_name",election_name );
			session.setAttribute("election_type",election_type );
			session.setAttribute("election_date",election_date );
			session.setAttribute("start_time", start_time);
			session.setAttribute("end_time",end_time );
			session.setAttribute("result_date",result_date );
			session.setAttribute("rules", rules);
			
			
			resp.sendRedirect("Admin_Edit_election.jsp");
		}
	}
}
