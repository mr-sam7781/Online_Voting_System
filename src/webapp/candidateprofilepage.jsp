<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/candidateprofilepage.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/candidateprofilepage.css" %> </style>	
<title>candidateprofilepage</title>
</head>
<body>
<%
       		Connection cn = null;
       		Statement st = null;
       		 
       		Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
       		String sql ="select * from candidate_signup where Adhar_Number = '"+session.getAttribute("Adhar_Number")+"'";
       		st=cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            if(rs.next())
            {
       
       
       %>
    <center><h1>Profile Page</h1></center>
    <div class="profile-container">
        <img src="images/<%= rs.getString("Image") %>" alt="Profile Photo" class="profile-photo">
        <div class="profile-info">
            <p><strong>First Name:</strong> <span id="first-name"><%=rs.getString("First_Name") %></span></p>
            <p><strong>Middle Name:</strong> <span id="middle-name"><%=rs.getString("Middle_Name") %></span></p>
            <p><strong>Last Name:</strong> <span id="last-name"><%=rs.getString("last_Name") %></span></p>
            <p><strong>Email ID:</strong> <span id="email-id"><%=rs.getString("Email_ID") %></span></p>
            <p><strong>Mobile Number:</strong> <span id="mobile-number"><%=rs.getString("Mobile_Number") %></span></p>
            <p><strong>State:</strong> <span id="state"><%=rs.getString("State") %></span></p>
            <p><strong>District:</strong> <span id="district"><%=rs.getString("District") %></span></p>
            <p><strong>Address:</strong> <span id="address"><%=rs.getString("Address") %></span></p>
            <p><strong>Gender:</strong> <span id="gender"><%=rs.getString("gender") %></span></p>
            <p><strong>Voter ID:</strong> <span id="voter-id"><%=rs.getString("Voter_ID") %></span></p>
            <p><strong>Aadhaar Number:</strong> <span id="aadhaar-number"><%=rs.getString("Adhar_Number") %></span></p>
            <p><strong>Password:</strong> <span id="password"><%=rs.getString("Password") %></span></p>
            <p><strong>Date of Birth:</strong> <span id="dob"><%=rs.getString("Birth_Date") %></span></p>
       </div>
    </div>

<%}%>


</body>
</html>