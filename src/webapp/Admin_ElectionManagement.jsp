<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.text.SimpleDateFormat, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/Admin_ElectionManagement.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/Admin_ElectionManagement.css" %> </style>
	
<title>Election Management</title>
</head>
<body>
<ul class="navbar">
<li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
<li><a href="#"> Elections <i class="fa fa-caret-down"></i></a> 
	<ul class="drodown">
	<li><a href="Admin_AddElection.jsp">Add Election</a></li>
		<li><a href="Admin_add_Position.jsp">Add Position</a></li>
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
 <li><a href="Home_Page.jsp"><i class ="margin-left">Log-Out<i class="fa fa-sign-out  leaver"></i></i></a></li>

</ul>

<div class="table_container">
<center>
<h1><b>Election Management</b></h1>
</center>
<header>
<a href="Admin_AddElection.jsp"><button class ="addbtn" id="addElectionBtn">+ Add Election</button></a>
</header>
<table>
<thead>

	<tr>
		<th>Sr No</th>
		<th>Election Name</th>
		<th> Election Type </th>
		<th> Date</th>
		<th>Start Time</th>
		<th>End Time</th>
		<th>Result</th>
		<th>Rules</th>
		<th>Status</th>
		<th>Actions</th>
	</tr>
	</thead>
	<tbody>	
	  <%
                    Connection cn = null;
                    Statement st = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System", "root", "root");
                        String sql = "SELECT * FROM addelection";
                        st = cn.createStatement();
                        rs = st.executeQuery(sql);

                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                        Date today = sdf.parse(sdf.format(new Date())); 

                        while (rs.next()) {
                            String electionDateStr = rs.getString("election_date");
                            Date electionDate = sdf.parse(electionDateStr);
                            String status;

                            if (electionDate.before(today)) {
                                status = "Completed";
                            } else if (electionDate.equals(today)) {
                                status = "Ongoing";
                            } else {
                                status = "Scheduled";
                            }
                %>
	<form action="Admin_ElectionManagement" method="post">
	
	<input type="hidden" name="id" value="<%=rs.getString("Election_Id") %>">
	<input type="hidden" name="election_name" value="<%=rs.getString("election_name") %>">
	<input type="hidden" name="election_type" value="<%=rs.getString("election_type") %>">
	<input type="hidden" name="start_time" value="<%=rs.getString("start_time") %>">
	<input type="hidden" name="end_time" value="<%=rs.getString("end_time") %>">
	<input type="hidden" name="result_date" value="<%=rs.getString("result_date") %>">
	<input type="hidden" name="rules" value="<%=rs.getString("rules") %>">
	<input type="hidden" name="status" value="<%=rs.getString("status") %>">
	
		<tr>   
		<td> <%= rs.getString("Election_Id") %> </td>
		<td> <%= rs.getString("election_name") %> </td>
		<td> <%= rs.getString("election_type") %> </td>
		<td> <%= rs.getString("election_date") %> </td>
		<td> <%= rs.getString("start_time") %> </td>
		<td> <%= rs.getString("end_time") %> </td>
		<td> <%= rs.getString("result_date") %> </td>
		<td> <%= rs.getString("rules") %> </td>
		<td > <%= status %> </td>
		<td>
		<button type="submit" value="edit" name="submit" class="edit-btn">Edit </button>
		<button type="submit" value="delete" name="submit" class="delete-btn">Delete</button>
		</td>
	</tr>
	</form>
	
	                <%
                        }
                    } catch (Exception e) {
                       
                    }
                %>
	</tbody>
	</table>
</div>
<br>
<br>
<br>
</body>
</html>