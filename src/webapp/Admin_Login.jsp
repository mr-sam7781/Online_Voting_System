<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>  Admin login Page</title>
	<link rel="stylesheet" type="text/css" href="css/Admin_login.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/validation.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Admin_login.css" %> </style>
</head>
<body>
<form name="Admin_Login" action="Admin_Login" method="post">
<center>
<div class="login_div">
<br>
<h2><b> ADMIN LOGIN </b> </h2>
<br>
	
	<input type="text" name="Username" class="textbox" placeholder= "  Enter Username " onkeypress="return isString(event)"><i class="fa fa-user"></i>
	<br>
	<br>
	<input type="password"  name="Password"  class="textbox" placeholder= "  Enter Password" required><i class="fa fa-lock"></i>
	<br> 
	<br>


	<button type="submit" name="submit" value="LOGIN" class="button"> <b> LOGIN </b></button>
	<br>
	<br>
	<label> Not Registered ?
	<a href="Admin_SignUp.jsp" class="register" > <a href="Admin_SignUp.jsp">Register Now </a></label>
	
</div> 

</center>
</form>
</body>
</html>