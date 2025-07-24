<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css"> <%@include file="css/admineditelection.css" %></style>
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
<form name="admineditelection" action="admineditelection" method="post">
<div class="form-container">
<div class="form-title"><b>Edit Election</b></div>
<div class="form-section">
<div>
<label for="election-name">Election Name:-</label>
<input type="text"  name ="election_name" value="<%= session.getAttribute("election_name") %>">
</div>
<div>
<label for="election-type">Election Type:-</label>
<input type="text" name ="election_type" value="<%= session.getAttribute("election_type") %>">
</div>
</div>
<div class="form-section">
<div>
<label for="election-date">Election Date:-</label>
<input type="date" name ="election_date" value="<%= session.getAttribute("election_date") %>">
</div>
<div>
<label for="start-time">Start Time:-</label>
<input type="time" name="start_time" value="<%= session.getAttribute("start_time") %>">
</div>
</div>
<div class="form-section">
<div>
<label for="end-time">End Time:-</label>
<input type="time" name="end_time" value="<%= session.getAttribute("end_time") %>">
</div>
<div>
<label for="result-date">Result Date:-</label>
<input type="date" name ="result_date" value="<%= session.getAttribute("result_date") %>">
</div>
</div>
<div>
<label for="rules" class="rules">Rules:-</label><br>
<textarea id="rules" rows="3" name="rules" value="<%= session.getAttribute("rules") %>" ></textarea>
</div>
<button type="submit" name="submit" value="Edit Election" class="submit-button">Edit Election</button>

</div>
</form>
</body>
</html>