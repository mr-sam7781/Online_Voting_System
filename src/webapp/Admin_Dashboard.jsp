<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Admin Dashboard</title>
	<link rel="stylesheet" type="text/css" href="css/Admin_Dashboard.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Admin_Dashboard.css" %> </style>	
</head>
<body>
<%
  int Total_voters=0;
  int Total_candidates=0;
  int Voters_voted=0;
  
  
  Connection cn =null;
  Statement st= null;
  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");

  String sql="SELECT * FROM user_signup;";
  st=cn.createStatement();
  ResultSet rs =st.executeQuery(sql);
  while(rs.next())
  {
	  Total_voters++;
	  
  }
  sql="SELECT * FROM admin_add_candidate;";
  st=cn.createStatement();
  rs =st.executeQuery(sql);
  while(rs.next())
  {
	  Total_candidates++;
	  
  }
  
  sql="SELECT * FROM votings;";
  st=cn.createStatement();
  rs =st.executeQuery(sql);
  while(rs.next())
  {
	  Voters_voted++;
	  
  }
  
	
%>
	  <div class="navbar">
	      <h1><b>ONLINE VOTING SYSTEM</b></h>
	  </div>

           <div class="sidenav">
           	<i class="fa fa-user-circle usr" aria-hidden="true"></i>
			<h3><%= session.getAttribute("Username")%>!</h3>
			
        	<a href="#dashboard"><i class ="margin-left">Dashboard</i><i class="fa fa-home home"></i></a>
        	<br>
        
        	 <button class="dropdown-btn"><i class ="margin-left">Election<i class="fa fa-cogs  depart "></i></i>
	          <i class="arrow"></i>
	        </button>
	        <div class="container">
	          <a href="Admin_AddElection.jsp">Add Election</a>
	          	<li><a href="Admin_add_Position.jsp">Add Position</a></li>
	          <a href="Admin_ElectionManagement.jsp">Manage Election</a>
	        </div>
        
        	<br>
	        <button class="dropdown-btn"><i class ="margin-left">Candidate<i class="fa fa-users emp "></i></i>
	          <i class="arrow"></i>
	        </button>
	        <div class="container">
	          <a href="Admin_AddCandidate.jsp">Add Candidate</a>
	          <a href="Admin_ManageCandidates.jsp">Manage Candidate</a>
	        </div>
        
        	<br>
        	<button class="dropdown-btn"><i class ="margin-left">Voter<i class="fa fa-user  voter"></i></i>
	          <i class="arrow"></i>
	        </button> 
        	<div class="container"> 
          		<a href="Admin_ManageVoters.jsp">Voter Verification</a>
          		<a href="verifiedvoterlist.jsp">Voter List</a>
        	</div>
        	<br>
	        <button class="dropdown-btn"><i class ="margin-left">Results <i class="fa fa-file-text tsk "></i></i>
	          <i class="arrow"></i>
	        </button>
	        <div class="container">
	          <a href="adminuploadelectionresult.jsp">Upload Result</a>
	          <a href="#">Previous Results</a>
	        </div>
      		 <br>
         	<a href="Admin_view_ContactUs.jsp"><i class ="margin-left">Contact Us<i class="fa fa-phone-square mob" aria-hidden="true"></i></a>
        	
		<a href="Generate_Reports.jsp"><i class ="margin-left">Report</i><i class="fa fa-book book"></i></a>
        	
        	<a href="Home_Page.jsp"><i class ="margin-left">Log-Out<i class="fa fa-sign-out  leaver"></i></i></a>
      </div>
   <div class="box1">
   <div class="user">
        <i class="fa fa-users icons2"></i> 
        <p class="p1">Total Voters <br> <%= Total_voters %></p>
      </div>
   </div>
   <div class="box2">
    <div class="department">
        <i class="fa fa-user-plus  icons1"></i> 
        <p class="p2">Candidate<br> <%=Total_candidates %></p>
      </div>
   </div>
   <div class="box3">
    <div class="leave"> 
         <i class="fa fa-user-circle-o icons"></i> 
        <p class="p3">Voters voted <br><%= Voters_voted%></p>
      </div>
     
   </div>
   <!--  Create page generate report and link to the component -->
   
 <script>
        var dropdown = document.getElementsByClassName("dropdown-btn");
        var i;
    
        for (i = 0; i < dropdown.length; i++) {
          dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
              dropdownContent.style.display = "none";
            } else {
              dropdownContent.style.display = "block";
            }
          });
        }
      </script>
</body>
</html>
</body>
</html>