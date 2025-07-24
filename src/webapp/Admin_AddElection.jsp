<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add_Elections</title>
	<link rel="stylesheet" type="text/css" href="css/Add_Election.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css"> <%@include file="css/Add_Election.css" %></style>
	<script type="text/javascript" src="js/validation.js"></script>

</head>
<body>
<ul class="navbar">
<li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
<li><a href="#"> Elections <i class="fa fa-caret-down"></i></a> 
	<ul class="drodown">
	<li><a>Add Election</a></li>
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

<form name="Admin_AddElection" action="Admin_AddElection" method="post">

<div class= "form-container">
<div class="form-title"><b>Add Election</b></div>
<div class="form-section">
<div>
<label for="election-name">Election Name:-</label>
<input type="text"  name ="election_name" required>
</div>
<div>
<label for="election-type">Election Type:-</label>
<input type="text" name ="election_type" required>
</div>
</div>
<div class="form-section">
<div>
<label for="election-date">Election Date:-</label>
<input type="date" name ="election_date" required>
</div>
<div>
<label for="start-time">Start Time:-</label>
<input type="time" name="start_time" required>
</div>
</div>
<div class="form-section">
<div>
<label for="end-time">End Time:-</label>
<input type="time" name="end_time" required>
</div>
<div>
<label for="result-date">Result Date:-</label>
<input type="date" name ="result_date" required>
</div>
</div>
<div>
<label for="rules" class="rules">Rules:-</label><br>
<textarea id="rules" rows="3" name="rules" ></textarea>
</div>
<button type="submit" name="submit" value="Add Election" class="submit-button">Add Election</button>
</form>
</div>
</form>
</body>
</html>