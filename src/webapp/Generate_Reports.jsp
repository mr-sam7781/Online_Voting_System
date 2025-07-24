<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Generate_Reports.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Generate_Reports.css" %> </style>	

<title>Generate_Repots</title>
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
<br>
<br>
<center><b>
<p>Click one of the below to generate report.<i class="fa fa-caret-down "></i></p>
</b></center>
<br>
<br>
<form name="view_report.jsp" action="view_report.jsp" method="post" >
<div class="box">

	<input type="submit" name="submit" class="button1" value="Admin List">
	<input type="submit" name="submit" class="button1" value="Candidate List">
	<input type="submit" name="submit" class="button1" value="Voter List"><br>
	<input type="submit" name="submit" class="button1" value="Elections List">
	<input type="submit" name="submit" class="button1" value="Positions">
	<input type="submit" name="submit" class="button1" value="Votings">
</div>	
	<br>
	<label class="label_id">Enter ID : </label>
	<input type="text" class="textbox" name="id" placeholder="  Enter ID to fetch">
	<br>
	<br>
	<div class="box">
	<input type="submit" name="submit" class="button4" value="ID wise Admin List">
	<input type="submit" name="submit" class="button4" value="ID wise Candidate List">
	<input type="submit" name="submit" class="button4" value="ID wise Elections List"><br>
	<input type="submit" name="submit" class="button4" value="ID wise Positions">
	<input type="submit" name="submit" class="button1" value="ID wise Votings">
	<input type="submit" name="submit" class="button4" value="ID wise Voter List"><br>
	<br>
	</div>
</form>
</body>
</html>