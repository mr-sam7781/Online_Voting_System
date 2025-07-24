<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/editcandidate.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/editcandidate.css" %> </style>
<title>Insert title here</title>
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
<li><a href="Home_Page.jsp">Log-Out</a></li>

</ul>
<form name="editcandidate" action="editcandidate" method="post">
<div class="form-container">

<h2><B>EDIT CANDIDATE</B></h2>

<div class="input_div"> 
<label for="candidateName">Candidate Name:</label>
<input type="text" name="candidateName" id="candidateName "value="<%= session.getAttribute("candidateName") %>">
</div>

<div class="input_div">
<label for="PartyName"> Party Name:</label>
<input type="text" name="PartyName" id="PartyName" value="<%= session.getAttribute("PartyName") %>">
</div>

<div class="input_div">
<label for="VoterId"> Voter ID:</label>
<input type="text" name="VoterId" id="VoterId" value="<%= session.getAttribute("VoterId") %>">
</div>

<div class="input_div"> 
<label for="candidateId">Candidate ID:</label>
<input type="text" name="candidateId" id="candidateId" value="<%= session.getAttribute("candidateId") %>">
</div>

<div class="input_div">
<label for="AadharNumber"> Aadhar Number:</label>
<input type="number" name="AdharNumber" maxlength="12" id="AadharNumber" value="<%= session.getAttribute("AdharNumber") %>">
</div>

<div class="input_div">
<label for="Email"> Email ID:</label>
<input type="email" name="email" id="email" value="<%= session.getAttribute("email") %>">
</div>

<div class="input_div">
<label for="ContactNumber"> Contact Number:</label>
<input type="text" name="ContactNumber" id="ContactNumber" value="<%= session.getAttribute("ContactNumber") %>">
</div>

<div class="input_div">
<label for="Qualification"> Qualification:</label>
<input type="text" name="Qualification" id="Qualification" value="<%= session.getAttribute("Qualification") %>">
</div>

<div class="input_div">
<label for="Position">Position:</label>
<input type="text" name="candidate_position" id="candidate_position" value="<%= session.getAttribute("candidate_position") %>">
</div>

<div class="input_div">
<label for="candidateDOB"> Date of Birth:</label>
<input type="date"  name="candidateDOB" id="candidateDOB" value="<%= session.getAttribute("candidateDOB") %>">
</div>

<div class="input_div">
<label for="Address"> Address:</label>
<textarea id="Address" name="Address"rows="2" value="<%= session.getAttribute("Address") %>"></textarea >
</div>

<div class="input_div">
<label for="candidatePhoto">Candidate Photo:</label>
<input type="file" name="candidatePhoto" id="candidatePhoto" value="<%= session.getAttribute("candidatephoto") %>">
</div>

<div class="input_div">
<label for="candidateAadharFile">Upload Aadhar File:</label>
<input type="file" name="candidateAadharFile" id="candidateAadharFile" value="<%= session.getAttribute("candidateadharcard") %>">
</div>

<div class="input_div">
<label for="candidateVoterIdFile">Upload Voter ID File:</label>
<input type="file" name="candidateVoterIdFile" id="candidateVoterIdFile" value="<%= session.getAttribute("candidatevoterid") %>">
</div>
  <div class="input_div">
<label for="partylogo">Party Logo</label>
<input type="file" name="partylogo" id="partylogo" value="<%= session.getAttribute("partylogo") %>">
</div>
<div class=" input_div submit-button">
<button type="submit" name="submit" value="EDIT CANDIDATE">EDIT CANDIDATE</button>
</div>
</div>
</form>
</body>
</html>