<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/userviewcandidate.css" %> </style>
<title>UserViewCandidate</title>
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

<br>
<table>
<thead>
<tr>
<th>Sr No</th>
<th>Candidate Name</th>
<th> Photo</th>
<th> Party Name</th>
<th> Logo</th>
<th> Email ID</th>

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
     
<tr>
<td> <%= rs.getString("candidate_id") %> </td>
<td> <%= rs.getString("candidateName") %> </td>
<td><img src="images/<%= rs.getString("candidatephoto") %>" width="50"></td>
<td> <%= rs.getString("PartyName") %></td>
<td><img src="images/<%= rs.getString("partylogo")%>" width="50" class="img"></td>
<td><%= rs.getString("email") %></td>

</tr>

<% } %>

</tbody>
</table>

</body>
</html>