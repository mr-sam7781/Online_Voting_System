<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/livevotecount.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/livevotecount.css" %> </style>	
<title>livevotecount</title>
</head>
<body>

<div class="election-container">
<select id="election" name="Select_election">                        	
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
<br>
<div class="title">PRESIDENT ELECTION 2024</div>
<table>
<tr>
<th>S/N</th>
<th>Candidate Name</th>
<th>Candidate Photo</th>
<th>Party Name</th>
<th>Party Logo</th>
<th>Number of Vote</th>
</tr>

<tr>
<td>1</td>
<td>modi</td>
<td><img src="images/Eknath.jpg" alt="Candidate-Photo" class="Candidate-Photo"></td>
<td>BJP/td>
<td><img src="imagesncplogo.jpg" alt="Party-Logo" class="Party-Logo"></td>
<td>100</td>
</tr>
      
</table>
</div>
</body>
</html>