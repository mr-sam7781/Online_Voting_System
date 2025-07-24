<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Admin_SignUp.css">
<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
<script type="text/javascript" src="js/validation.js"></script>
<style type="text/css" > <%@include file="css/Admin_SignUp.css" %> </style>

<title>Admin_SignUp</title>
<form action="Admin_SignUp" name="Admin_SignUp" method="post">

 <div class="signup-div">
 
<h1> SIGN UP</h1>


<input type="text" id="username" class="textbox" name="username" placeholder="User Name" onkeypress="return isString(event)"> <i class="fa fa-user"></i>

           
<input type="email" id="email" class="textboxe" name="email" placeholder=" Email "  required> <i class="fa fa-envelope"></i>

               
<input type="password" id="password" class="textbox" name="Password" placeholder="Password" required> <i class="fa fa-lock"></i>

               
<input type="password" id="confirm_Password"  class="textbox" name="confirm_Password" placeholder="Confirm Password" required><i class="fa fa-lock"></i>

<button name ="submit" class="button" value="SIGN UP" type="submit">SIGN UP</button>


<p> Already have an account? <a href="Admin_Login.jsp">Log in</a></p>
</div>
</form>

</body>
</html>