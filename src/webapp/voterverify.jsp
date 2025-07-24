<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/voterverify.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/voterverify.css" %> </style>	
<title>voterverify</title>
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
</ul>

<center>
<div class="box1">
<h1 class="voters">Verify The Voter </h1>
</div>
</center>
<%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from user_signup where candidate_signup_id='"+session.getAttribute("candidate_signup_id")+"'";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>
<form name="voterverify" action="voterverify" method="post">	
<input type="hidden" name="candidate_signup_id" value="<%= rs.getString("candidate_signup_id")%>">

<div class="container1">

    <div class="container">
        <div class="header">
					<img  src="images/<%=rs.getString("Image") %>" alt=" SchoolLogo">
				</div>
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
            
            <label class="full-width">Download Voter ID:</label>
            <p class="full-width"><button type="button" value="<%=rs.getString("VoterIDCard") %>"  onclick="downloadDocument(this)"><%=rs.getString("VoterIDCard") %></button></p>
            
            <label class="full-width">Download Adhar Card:</label>
            <p class="full-width"><button type="button" value="<%=rs.getString("AdharCard") %>"  onclick="downloadDocument(this)"><%=rs.getString("AdharCard") %></button></p>
        </div>
        <div class="buttons">
            <button class="allow" type="submit" name="submit" value="Allow">Allow</button>
            <button class="Deny" type="submit" name="submit" value="Deny">Deny</button>
        </div>
    </div>
</div>
	</form>
	<% } %>
</body>
<script type="text/javascript">
	
	function downloadDocument(button) {
    var fileName = button.value;  
    var filePath = "images/" + fileName;  

   
    var a = document.createElement('a');
    a.href = filePath;
    a.download = fileName;  

    
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
}
	</script>
</html>