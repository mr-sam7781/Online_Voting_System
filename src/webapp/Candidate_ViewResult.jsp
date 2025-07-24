<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>College Elections</title>
<link rel="stylesheet" type="text/css" href="css/View_All_Elections.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css"> <%@ include file="css/View_All_Elections.css" %> </style>	
 <body>
<ul class="navbar">
<li><a href="candidate_dashbord.jsp">Dashboard</a></li>
<li><a href="candidateforelection.jsp">Candidates  </a> 
</li>
<li><a href="userviewelectiondetails.jsp"> Elections </a>
</li>
<li><a href="#"> Result </a>	
</li>
<li><a href="Home_Page.jsp"> Log-Out </a>	
</li>
</ul>
    <div class="container_main">
       <center> <h2> Elections </h2></center><br>
       
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
   	<form name="candidateViewResult" action="candidateViewResult" method="post">
   		<input type="hidden" name="election_name" value="<%= rs.getString("election_name")%>">
   		<input type="hidden" name="Election_Id" value="<%= rs.getString("Election_Id")%>">
   		
   
        <div class="election-box">
		<h3><%=rs.getString("election_name") %> </h3>
            <p><%=rs.getString("election_date") %>
			<button type="submit" name="submit" value="NEXT" class="submit-button">NEXT</button>
        </div>
        </form>
        <%} %>
    </div>
</body>
</html>