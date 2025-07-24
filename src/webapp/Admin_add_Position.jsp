<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Admin_add_position.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/validation.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Admin_add_position.css" %> </style>

<title>Add Position</title>
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
<form name="add_position" action="add_position" method="post">
<div class="box">
<div class="input_div">
<select id="election" name="election_name">                        	
<option value="" disabled selected>Select Election From Here</option>
<%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from addelection";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>    
<option value="<%=rs.getString("election_name")%>"> <%=rs.getString("election_name")%></option>
<%} %>
</select>
<br>
</div>
<div>
<label for="position">Enter Position name:</label>
<input type="text" name="position" id="position">
</div>
<div class=" input_div submit-button">
<button type="submit" name="submit" value="ADD POSITION">ADD POSITION</button>
</div>
</div>
</form>
</body>
</html>