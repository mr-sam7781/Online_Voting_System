

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;



/**
 * Servlet implementation class Admin_ManageCandidates
 */
public class Admin_ManageCandidates extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		
		HttpSession session=req.getSession();
		
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String candidate_id = req.getParameter("candidate_id");
		String candidateName = req.getParameter("candidateName");
		String PartyName = req.getParameter("PartyName");
		String VoterId = req.getParameter("VoterId");
		String candidateId = req.getParameter("candidateId");
		String AdharNumber = req.getParameter("AdharNumber");
		String email = req.getParameter("email");
		String ContactNumber = req.getParameter("ContactNumber");
		String Qualification = req.getParameter("Qualification");
		String candidate_position = req.getParameter("candidate_position");
		String candidateDOB = req.getParameter("candidateDOB");
		String Address = req.getParameter("Address");
		
		
		String partylogo = req.getParameter("partylogo");
		String event = req.getParameter("submit");
		
		 out.println(candidate_id);
		 out.println(candidateName);
		 out.println(PartyName);
		 out.println(VoterId);
		 out.println(candidateId);
		 out.println(AdharNumber);
		 out.println(email);
		 out.println(ContactNumber);
		 out.println(Qualification);
		 out.println(candidate_position);
		 out.println(candidateDOB);
		 out.println(Address);
		 
		
		 out.println(partylogo);
		 out.println(event);
		 
		 if(event.equals("Edit"))
			{
				
				session.setAttribute("candidate_id",candidate_id );
				session.setAttribute("candidateName",candidateName );
				session.setAttribute("PartyName",PartyName );
				session.setAttribute("VoterId",VoterId );
				session.setAttribute("candidateId", candidateId);
				session.setAttribute("AdharNumber",AdharNumber );
				session.setAttribute("email",email );
				session.setAttribute("ContactNumber", ContactNumber);
				session.setAttribute("Qualification", Qualification);
				session.setAttribute("candidate_position", candidate_position);
				session.setAttribute("candidateDOB", candidateDOB);
				session.setAttribute("Address", Address);
				
				session.setAttribute("partylogo", partylogo);
				
				resp.sendRedirect("editcandidate.jsp");
				
				
				}
		 
		 if(event.equals("Delete"))
			{
				
				try {
					String sql="delete from admin_add_candidate where candidate_id ='"+candidate_id+"'";
					String delete=db.delete(sql);
					out.println(delete);
					resp.setContentType("text/html");
				   out.println(" <script type= \"text/javascript\"> alert('candidate is deleted'); location='Admin_ManageCandidates.jsp'; </script>");
				}
				catch(Exception ex)
				{
					out.println(ex.toString());
				}
			}
			
	}
	}
