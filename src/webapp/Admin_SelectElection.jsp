<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/Admin_SelectElection.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Admin_SelectElection.css" %> </style>
	
<title> Select_election</title>
</head>
<body>
<div class="container">
<h2><b> Select Election here </b></h2>
 <form name="Admin_SelectElection" action="Admin_SelectElection" method="post">
 
<select id="election" name="election">                            	
<option value="" disabled selected>Select Election</option>
<option value="Indian General Election 2024">Indian General Election 2024</option>
<option value="President Election 2025">President Election 2025</option>
<option value="Grampanchayat Election 2025">Grampanchayat Election 2025</option>
</select>
<br>
<br>
<button type="submit" name="submit" value="NEXT"><b>NEXT</b></button>
</div>
</form> 
</body>
</html>