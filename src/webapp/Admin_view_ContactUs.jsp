 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact US</title>
<link rel="stylesheet" type="text/css" href="css/Admin_view_Contactus.css">
<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style type="text/css"> <%@ include file="css/Admin_view_Contactus.css" %> </style>
	
</head>
<body>
<ul class="navbar">
<li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
<li><a href="#"> Elections <i class="fa fa-caret-down"></i></a> 
	<ul class="drodown">
	<li><a href="Admin_AddElection.jsp">Add Election</a></li>
	<li><a href="#"> Manage Election</a></li>
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
<li><a href="Home_Page.jsp">Log-Out<i class="fa fa-sign-out  leaver"></i></a></li>

</ul>
<table>
<thead>
<tr>
<th>ContactUs_Id</th>
<th> Name</th>
<th> Email</th>
<th> Message</th>
</tr> 
</thead>
<tbody>
<tbody>	
	<%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from contact_us";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>
		<tr>   
		<td> <%= rs.getString("ContactUs_id") %> </td>
		<td> <%= rs.getString("Name") %> </td>
		<td> <%= rs.getString("Email") %> </td>
		<td> <%= rs.getString("Message") %> </td>
		
	</tr>
	</form>
	
	<% } %>
	</tbody>

  
</body>
</html>