<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/verifiedvoterlist.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/verifiedvoterlist.css" %> </style>	
<title>verifiedvoterlist</title>
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

<h2>Verified Voters</h2>

<table>
    <thead>
        <tr>
            <th>Voter Name</th>
            <th> Photo</th>
            <th> DOB</th>
            <th>Voter ID</th>
            <th>Contact Number</th>
            <th>District</th>
            <th>Details</th>
        </tr>
    </thead>
    <%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from user_signup ";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>
    <tbody>
<form name="verifiedvoterlist" action="verifiedvoterlist" method="post">	
<input type="hidden" name="candidate_signup_id" value="<%= rs.getString("candidate_signup_id")%>">
<input type="hidden" name="First_Name" value="<%= rs.getString("First_Name")%>">
<input type="hidden" name="Middle_Name" value="<%= rs.getString("Middle_Name")%>">
<input type="hidden" name="last_Name" value="<%= rs.getString("last_Name")%>">
    
        <tr>
            <td><%=rs.getString("First_Name") %> <%=rs.getString("Middle_Name") %> <%=rs.getString("last_Name") %></td>
            <td><img src="images/<%=rs.getString("Image") %>" alt="Voter Photo" width="50"></td>
            <td><%=rs.getString("Birth_Date") %></td>
            <td><%=rs.getString("Voter_ID") %></td>
            <td><%=rs.getString("Mobile_Number") %></td>
            <td><%=rs.getString("District") %></td>
            <td><a href="All_verify_VoterInfo.jsp"><button class="btn" name="submit" type="submit" value="Show">Show More Info</button></a></td>
        </tr>
      </form>
    </tbody>
    <%} %>
</table>

</body>
</html>