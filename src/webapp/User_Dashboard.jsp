<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User_Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/User_Dashboard.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/User_Dashboard.css" %> </style>	    
</head>
<body>

	  <div class="navbar">
	     <b><h1>ONLINE VOTING SYSTEM</h1></b>  
	  </div>

      <div class="sidenav">
      <div class="profile">
	       <a class="p5" href="userprofile.jsp"> <img src="images/<%=session.getAttribute("Image") %>" alt="emp"></a>
	      </div>
	      <br>
        <a href="#dashboard"><i class ="margin-left">Dashboard</i><i class="fa fa-home home"></i></a>
        <br>
         <a href="userviewcandidate.jsp"><i class ="margin-left">Candidates</i><i class="fa fa-user-circle-o cand"></i></a>
        <br>
         <a href="View_All_Election.jsp"><i class ="margin-left">Elections</i><i class="fa fa-hand-o-up vote"></i></a>
        <br>
         <a href="Admin_ShowResult.jsp"><i class ="margin-left">Result</i><i class="fa fa-file-text-o result"></i></a>
         <br>
         <a href="faq.jsp"><i class ="margin-left">FAQ</i><i class="fa fa-reply-all faq"></i></a>
       	<br>
        <a href="Home_Page.jsp"><i class ="margin-left">Log-Out<i class="fa fa-sign-out leaver"></i></i></a>
      </div>
    
   <div class="box1">
   <div class="user">
        <i class="fa fa-users icons2"></i> 
        <a class="p2" href="View_All_Election.jsp"><p class="p1">Elections<br></p></a>
      </div>
   </div>
   <div class="box2">
    <div class="department">
        <i class="fa fa-user-circle-o  icons1"></i> 
        <a class="p2" href="userviewcandidate.jsp"><p class="p3">Candidates<br></p></a>
      </div>
   </div>
   <div class="box3">
    <div class="leave"> 
         <i class="fa fa-file-text-o icons"></i> 
          <a class="p2" href="Admin_ShowResult.jsp"><p class="p3">Result</p></a>
      </div>
 	</div>
  
</body>
</html>