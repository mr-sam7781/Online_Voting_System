<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="Add_Candidate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<script type="text/javascript" src="js/validation.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Add_Candidate.css" %> </style>
<meta charset="ISO-8859-1">
<title>Add_Candidate</title>
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


<form name="Admin_AddCandidate" action="Admin_AddCandidate" method="post" >
<div class="form-container">

<h2><B>ADD CANDIDATE</B></h2>

<label for="candidateName">Select Election  :</label>
<select id="election" name="Select_election" class="slt">                        	
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

<div class="input_div"> 
<label for="candidateName">Candidate Name:</label>
<input type="text" name="candidateName" id="candidateName" onkeypress=" return isString(event)">
</div>

<div class="input_div">
<label for="PartyName"> Party Name:</label>
<input type="text" name="PartyName" id="PartyName">
</div>

<div class="input_div">
<label for="VoterId"> Voter ID:</label>
<input type="text" name="VoterId" id="VoterId">
</div>

<div class="input_div"> 
<label for="candidateId">Candidate ID:</label>
<input type="text" name="candidateId" id="candidateId" onkeypress="return isNumber(event)">
</div>

<div class="input_div">
<label for="AadharNumber"> Aadhar Number:</label>
<input type="number" name="AdharNumber" maxlength="12" id="AadharNumber" onkeypress="return isNumber(event)">
</div>

<div class="input_div">
<label for="Email"> Email ID:</label>
<input type="email" name="email" id="email">
</div>

<div class="input_div">
<label for="ContactNumber"> Contact Number:</label>
<input type="text" name="ContactNumber" id="ContactNumber" onkeypress="return isNumber(event)">
</div>

<div class="input_div">
<label for="Qualification"> Qualification:</label>
<input type="text" name="Qualification" id="Qualification">
</div>


<label for="Position">Position:</label>
<br>
<select id="position" name="candidate_position" class="select">
<option value="" disabled selected>Select position From Here</option>
<%
		Connection cnn = null;
		Statement stt = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql1 ="select * from add_position";
   		st=cn.createStatement();
        rs=st.executeQuery(sql1);
        
        while(rs.next())
        {
   
   
   %>    
<option><%=rs.getString("position") %></option>
<%} %>

</select>


<div class="input_div">
<label for="candidateDOB"> Date of Birth:</label>
<input type="date"  name="candidateDOB" id="candidateDOB">
</div>

<div class="input_div">
<label for="Address"> Address:</label>
<textarea id="Address" name="Address"rows="2"></textarea>
</div>

<div class="input_div">
<label for="candidatePhoto">Candidate Photo:</label>
<input type="file" name="candidatePhoto" id="candidatePhoto">
</div>

<div class="input_div">
<label for="candidateAadharFile">Upload Aadhar File:</label>
<input type="file" name="candidateAadharFile" id="candidateAadharFile">
</div>

<div class="input_div">
<label for="candidateVoterIdFile">Upload Voter ID File:</label>
<input type="file" name="candidateVoterIdFile" id="candidateVoterIdFile">
</div>
  <div class="input_div">
<label for="partylogo">Party Logo</label>
<input type="file" name="partylogo" id="partylogo">
</div>
<div class=" input_div submit-button">
<button type="submit" name="submit" value="ADD CANDIDATE">ADD CANDIDATE</button>
</div>
</div>
</form>


</body>
</html>