<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title> User login Page</title>
	<link rel="stylesheet" type="text/css" href="css/User_login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/User_login.css" %> </style>
	<script type="text/javascript" src="js/validation.js"></script>
</head>
<body>
<center>
<form name="User_Login" action="User_Login" method="post">
	<div class="login_div">
	<br>
	<h2><b> VOTER LOGIN </b> </h2>
	<BR>
	
	<input type="text" name="Adhar_Number" class="textbox" placeholder= "  Enter Adhar_Number " onkeypress="return isNumber(event)"><i class="fa fa-id-card"></i>
	<br>
	<br>
	<input type="password"  name="Password"  class="textbox" placeholder= "  Enter Password"><i class="fa fa-lock"></i>
	<br> 
	<br>


	<button type="submit" name="submit" value="LOGIN" class="button"> <b> LOGIN </b></button>
	<br>
	<br>
	<label> Not Registered ?
	<a href="User_SignUP.jsp" class="register" > Register Now </a></label>
	
	</div> 
</form>
</center>
</body>
</html>