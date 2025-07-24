<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate Login Page </title>
<link rel="stylesheet" href="css/Candidate_login.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<script type="text/javascript" src="js/validation.js"></script>
<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
<style type="text/css">  <%@ include file="css/Candidate_login.css" %> </style>
</head>
<body>
<form name="Candidate_Login1" action="Candidate_Login1" method="post">

<center>
  	<div class= "login_div">
  	<br>
 	<h2><b> CANDIDATE LOGIN  </b></h2> 
 	<br>
   <input type="text" name="Adhar_Number" class="textbox" placeholder= " Enter Adhar_Number  " onkeypress="return isNumber(event)"><i class="fa fa-id-card"></i>
	<br>
	<br>
	<input type="password"  name="password"  class="textbox" placeholder= "  Enter Password"><i class="fa fa-lock"></i>
	<br> 
	<br>


	<button type="submit" name="submit" value="LOGIN" class="button"> <b>  </b>LOGIN</button>
	<br>
	<br>
	<label> Not Registered ?
	<a href="Candidate_SignUP.jsp" class="register" > <u> Register Now </u></a></label>
	</div>

</center>	

</form>

</body>
</html>