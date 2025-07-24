<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" type="text/css" href="css/Contact_Us.css.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file= "css/Contact_Us.css" %> </style>	
	<script type="text/javascript" src="js/validation.js"></script>
</head>
<body>
<div class="navbar">    
    <div class="logo">
      <img src="images/logov.png" alt="Logo">
    </div>
  
    <div class="center-text">
      <h1>ONLINE VOTING SYSTEM</h1>
    </div>
    <div class="nav-links">
      <a class="active" href="Home_Page.jsp">Home</a>
      <a class="active" href="Admin_SignUp.jsp">Admin</a>
      <a class="active" href="User_Login.jsp">Voter</a>
      <a class="active" href="Candidate_Login.jsp">Candidate</a>
      <a class="active" href="aboutpage.jsp">About</a>
      <a class="active" href="contactus.jsp">Contact Us</a>
    </div>
  </div>
       <div class="tel">
	       <i class="fa fa-phone-square phn" aria-hidden="true"></i>
	       <h3><b>Contact Number</b></h3><br><br>
	       <p class="dd">1950 (Toll-free Number)</p>
       </div>
       
       <div class="mail">
	       <i class="fa fa-envelope env" aria-hidden="true"></i>
	       <h3 class="ad1">Email</h3>
	       <p class="add"><a href=" complaints@eci.gov.in">complaints@eci.gov.in</a></p>
       </div>
       
       <div class="location">
	       <i class="fa fa-map-marker loc" aria-hidden="true"></i>
	        <h3 class="ad">Location</h3>
			<p class="add">Election Commission Of India, Nirvachan Sadan, Ashoka Road, New Delhi 110001</p>
       </div>
       
        <div class="Social_Media">
			<h3 class="flw"> Follow Us On</h3>
			<div>
			<p class="so">
			<a href="https://www.instagram.com/ecisveep/" target="_blank">
			<i class="fa fa-instagram" aria-hidden="true"></i></a>
			<a href="https://www.facebook.com/ECI/" target="_blank">
			<i class="fa fa-facebook-square" aria-hidden="true"></i></a>
			<a href="https://x.com/SpokespersonECI?mx=2" target="_blank">
			<i class="fa fa-twitter-square" aria-hidden="true"></i></a>
			</p>
			</div>
       </div>
       
       <div class="contactus">
        <h2><b><center>Contact Us</center></b></h2>
           <form name="Contact_Us" action="Contact_Us" method="post" >
                <label for="name">Name:</label>
                <input type="text" id="name" name="Name" placeholder="Enter Your Name" onkeypress="return isString(event)">
                <label for="email">Email:</label>
                <input type="email" id="email" name="Email" placeholder="Enter a valid email address">
                <label for="message">Message:</label>
                <textarea id="message" name="Message"></textarea>
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter Mobile Number" onkeypress="return isNumber(event)">
                <button type="SUBMIT" name="SUBMIT" value="SUBMIT"><b>SUBMIT</b></button>
            </form>
       </div>
       </body>
</html>