<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/ManageCandidate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/ManageCandidate.css" %> </style>
<title>Manage Candidates</title>
</head>
<body>
<ul class="navbar">
<li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
<li><a href="#"> Elections <i class="fa fa-caret-down"></i></a> 
	<ul class="drodown">
	<li><a href="Admin_AddElection.jsp">Add Election</a></li>
		<li><a href="Admin_add_Position.jsp">Add Position</a></li>
	<li><a href="Admin_ElectionManagement.jsp"> Manage Election</a></li>
	</ul>
</li>
<li><a href="#"> Candidate <i class="fa fa-caret-down"></i> </a>
	<ul class="drodown">
	<li><a href="Admin_AddCandidate.jsp">Add Candidate</a></li>
	<li><a href="Admin_ManageCandidates.jsp"> Manage Candidate</a></li>
	</ul> 
</li>
<li><a href="#"> Voter  <i class="fa fa-caret-down"></i> </a>
	<ul class="drodown">
	<li><a href="Admin_ManageVoters.jsp">Voter Verification</a></li>
	<li><a href="verifiedvoterlist.jsp">Voter List</a></li>
	</ul>
</li>
 <li><a href="Home_Page.jsp"><i class ="margin-left">Log-Out<i class="fa fa-sign-out  leaver"></i></i></a></li>

</ul>
<center><h1>All Candidates</h1></center>
<table>
<thead>
<tr>
<th>Sr No</th>
<th>Candidate Name</th>
<th> Photo</th>
<th> Party Name</th>
<th> Logo</th>
<th> Contact Number</th>
<th> Email ID</th>
<th>Action</th>
</tr> 
</thead>
<tbody>
<%
       		Connection cn = null;
       		Statement st = null;
       		 
       		Class.forName("com.mysql.jdbc.Driver");
       	    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
       		String sql ="select * from admin_add_candidate";
       		st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next())
            {
       
       
       %>
      <form name="Admin_ManageCandidates" action="Admin_ManageCandidates" method="post">
	<input type="hidden" name="candidate_id" value="<%=rs.getString("candidate_id") %>"> 
    <input type="hidden" name="candidateName" value="<%=rs.getString("candidateName") %>"> 
    <input type="hidden" name="PartyName" value="<%=rs.getString("PartyName") %>"> 
    <input type="hidden" name="VoterId" value="<%=rs.getString("VoterId") %>"> 
    <input type="hidden" name="AdharNumber" value="<%=rs.getString("AdharNumber") %>"> 
    <input type="hidden" name="email" value="<%=rs.getString("email") %>"> 
    <input type="hidden" name="ContactNumber" value="<%=rs.getString("ContactNumber") %>">
    <input type="hidden" name="Qualification" value="<%=rs.getString("Qualification") %>"> 
    <input type="hidden" name="candidate_position" value="<%=rs.getString("candidate_position") %>"> 
    <input type="hidden" name="candidateDOB" value="<%=rs.getString("candidateDOB") %>"> 
    <input type="hidden" name="Address" value="<%=rs.getString("Address") %>">  
    <input type="hidden" name="candidatephoto" value="<%=rs.getString("candidatephoto") %>">
    <input type="hidden" name="candidateadharcard" value="<%=rs.getString("candidateadharcard") %>">
    <input type="hidden" name="partylogo" value="<%=rs.getString("partylogo") %>">
<tr>
<td> <%= rs.getString("candidate_id") %> </td>
<td> <%= rs.getString("candidateName") %> </td>
<td><img src="images/<%= rs.getString("candidatephoto")%>" class="img"></td>
<td> <%= rs.getString("PartyName") %></td>
<td><img src="images/<%= rs.getString("partylogo")%>" class="img"></td>
<td><%= rs.getString("ContactNumber") %></td>
<td><%= rs.getString("email") %></td>
<td class="action-buttons">
<button name="submit" type="submit" value="Edit" class="edit-button">Edit</button>
<button name="submit" type="submit" value="Delete" class="delete-button">Delete</button>
</td>
</tr>
</form>
<% } %>

</tbody>
</table>

</body>
</html>