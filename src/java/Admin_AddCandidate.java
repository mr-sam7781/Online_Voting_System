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
 * Servlet implementation class Admin_AddCandidate
 */
public class Admin_AddCandidate extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
 
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
		
		String Select_election = req.getParameter("Select_election");
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
		String candidatePhoto = req.getParameter("candidatePhoto");
		String candidateAadharFile = req.getParameter("candidateAadharFile");
		String candidateVoterIdFile = req.getParameter("candidateVoterIdFile");
		String partylogo = req.getParameter("partylogo");
		String event = req.getParameter("submit");
		
		 out.println(Select_election);
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
		 out.println(candidatePhoto);
		 out.println(candidateAadharFile);
		 out.println(candidateVoterIdFile);
		 out.println(partylogo);
		 out.println(event);
		 
		 
		 
		 if (event.equals("ADD CANDIDATE"))
		 {
			 if( Select_election.equals("")|| candidateName.equals("")|| PartyName.equals("")||  VoterId.equals("")|| candidateId.equals("")||  AdharNumber.equals("")||email.equals("")||  ContactNumber.equals("")|| Qualification.equals("")|| candidate_position.equals("")||candidateDOB.equals("")||Address.equals("")||  candidatePhoto.equals("") || candidateAadharFile.equals("")||candidateVoterIdFile.equals("") || partylogo.equals(""))
			{ 
				 resp.setContentType("text/html");
				 out.println(" <script type=\"text/javascript\"> alert('Please fill in all the required fields'); location= 'Admin_AddCandidate.jsp'; </script>");     
			}
			else
			{
			
				 try 
				 {
					 
					 String sql = "insert into admin_add_candidate(Select_election,candidateName, PartyName, VoterId, candidateId, AdharNumber, email, ContactNumber, Qualification, candidate_position, candidateDOB, Address, candidatephoto, candidateadharcard, candidatevoterid,partylogo, votes ) values ('"+Select_election+"','"+candidateName+"','"+PartyName+"','"+VoterId+"','"+candidateId+"','"+AdharNumber+"', '"+email+"', '"+ContactNumber+"', '"+Qualification+"','"+candidate_position+"','"+candidateDOB+"','"+Address+"','"+candidatePhoto+"',  '"+candidateAadharFile+"','"+candidateVoterIdFile+"','"+partylogo+"', '0')";
					 String insert = db.Insert(sql);
					 out.println(insert);
					 resp.setContentType("text/html");
					 out.println(" <script type=\"text/javascript\"> alert('Candidate Add SUccessfully'); location= 'Admin_AddCandidate.jsp'; </script>");     
				
				 
				 } 
				 catch(Exception ex)
				 {
					 out.println(ex.toString());	
				 } 
			 }
			 
		 } 
	}
}
