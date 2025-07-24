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
<form name="Candidate_ViewElections" action="Candidate_ViewElections" method="post">
<div class="election-container">
<div class="title">PRESIDENT ELECTION 2024</div>
<table>
<tr>
<th>S/N</th>
<th>Candidate Name</th>
<th>Candidate Photo</th>
<th>Party Name</th>
<th>Party Logo</th>
<th>Vote</th>
</tr>

<%
       		Connection cn = null;
       		Statement st = null;
       		 
       		Class.forName("com.mysql.jdbc.Driver");
       	    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
       		String sql ="select * from addlectioncandidate";
       		st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next())
            {
       
       
       %>		
       <form name="Candidate_ViewElections" action="Candidate_ViewElections" method="post">
       

<tr>
<td><%= rs.getString("addlectioncandidate") %></td>
<td><%= rs.getString("candidatename") %></td>
<td><img src="images/<%= rs.getString("candidatephoto") %>" alt="Candidate-Photo" class="Candidate-Photo"></td>
<td><%= rs.getString("partyname") %></td>
<td><img src="images/<%= rs.getString("candidatelogo") %>" alt="Party-Logo" class="Party-Logo"></td>
<td><input type="submit" name="submit" value="Vote" class="vote-button"> </td> 
</tr>
<%} %>
          
</table>
</div>
</form>
</body>
</html>