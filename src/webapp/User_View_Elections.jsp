<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View_Election</title>
<link rel="stylesheet" type="text/css" href="css/ViewElections.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style type="text/css"> <%@ include file="css/ViewElections.css" %> </style>
	
</head>
<body>
<ul class="navbar">
<li><a href="User_Dashboard.jsp">Dashboard</a></li>
<li><a href="userviewcandidate.jsp">Candidates  </a> 
</li>
<li><a href="View_All_Election.jsp"> Elections </a>
</li>
<li><a href="Admin_ShowResult.jsp"> Result </a>	
</li>
<li><a href="Home_Page.jsp"> Log-Out </a>	
</li>
</ul>
<div class="election-container">
 <center>
<div class="title"><%=session.getAttribute("election_name") %></div>
 </center>
<table>
<tr>
<th>S/N</th>
<th>Candidate Name</th>
<th>Candidate Photo</th>
<th>Position</th>
<th>Party Name</th>
<th>Party Logo</th>
<th>Vote</th>
</tr>
<tr>
 
<%
       		Connection cn = null;
       		Statement st = null;
       		 
       		Class.forName("com.mysql.jdbc.Driver");
       	    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
       		String sql ="select * from admin_add_candidate where Select_election = '"+session.getAttribute("election_name")+"' && candidate_position = '"+session.getAttribute("position")+"'";
       		st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next())
            {
       
       
       %>
       		<form name="User_View_Election" action="User_View_Election" method="post">
	       		<input type="hidden" name="candidate_id" value="<%=rs.getString("candidate_id")%>">
	       		<tr>
					<td><%= rs.getString("candidate_id") %></td>
					<td><%= rs.getString("candidateName") %></td>
					<td><img src="images/<%= rs.getString("candidatephoto")%>" class="Candidate-Photo"></td>
					<td><%= rs.getString("candidate_position") %></td>
					<td><%= rs.getString("PartyName") %></td>
					<td><img src="images/<%= rs.getString("partylogo") %>" alt="Party-Logo" class="Party-Logo"></td>
					<td><input type="submit" name="submit" value="Vote" class="vote-button"> </td> 
				</tr>
			</form>
		<%} %>
<tr>    
</table>
</div> 
</body>
</html>