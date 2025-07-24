     <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Positions</title>
    <link rel="stylesheet" type="text/css" href="css/available_positions.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/available_positions.css" %> </style>	

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

   	<center>
        <h1>Available Positions</h1>
   </center>
    <br>
    <br>
    <p> Select one position to cast your vote</p>
    <main>
       	
    
     <%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from add_position where election_name = '"+session.getAttribute("election_name")+"'";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>
   	<form name="available_positions" action="available_positions" method="post">
   		<input type="hidden" name="election_name" value="<%= rs.getString("election_name")%>">
   		<input type="hidden" name="position" value="<%= rs.getString("position")%>">
   		
        <div class="positions-container">
        <div class="position-box">
		<button name ="submit" class="button" value="position" type="submit"> <%=rs.getString("position") %></button>
        </div> 
        </div>
        </form>
        <%} %>
    </main>
</body>
</html>
