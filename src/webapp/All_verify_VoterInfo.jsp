<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/allverifyvoterinfo.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/allverifyvoterinfo.css" %> </style>	
<title>allverifyvoterinfo</title>
</head>
<body>

 <div class="container">
        <div class="header">
         <%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from user_signup where candidate_signup_id='"+session.getAttribute("candidate_signup_id")+"' && status= 'Allowed'";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        if(rs.next())
        {
   
   
   %>
            <img src="images/<%=rs.getString("Image") %>" alt="School Logo">
           
        </div>
        <h2>Verified  Voter Profile</h2>
        <div class="profile-info">
            <label>First Name:</label>
            <p><%=rs.getString("First_Name") %></p>
            
            <label>Middle Name:</label>
            <p><%=rs.getString("Middle_Name") %></p>
            
            <label>Last Name:</label>
            <p><%=rs.getString("last_Name") %></p>
            
            <label>Email ID:</label>
            <p><%=rs.getString("Email_ID") %></p>
            
            <label>Mobile Number:</label>
            <p><%=rs.getString("Mobile_Number") %></p>
            
            <label>State:</label>
            <p><%=rs.getString("State") %></p>
            
            <label>District:</label>
            <p><%=rs.getString("District") %></p>
            
            <label>Address:</label>
            <p><%=rs.getString("Address") %></p>
            
            <label>Gender:</label>
            <p><%=rs.getString("gender") %></p>
            
            <label>Voter ID:</label>
            <p><%=rs.getString("Voter_ID") %></p>
            
            <label>Adhar Number:</label>
            <p><%=rs.getString("Adhar_Number") %></p>
            
            <label>Date of Birth:</label>
            <p><%=rs.getString("Birth_Date") %></p>
    <%} %>
    </div>

</body>
</html>