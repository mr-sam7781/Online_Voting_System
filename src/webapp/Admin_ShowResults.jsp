<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View_Election</title>
<link rel="stylesheet" type="text/css" href="css/ViewElections.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style type="text/css"> <%@ include file="css/ViewElections.css" %> </style>
	
</head>
<body>
<ul class="navbar">
<li><a href="User_Dashboard.jsp">Dashboard</a></li>
<li><a href="userviewcandidate.jsp">Candidates  </a> 
</li>
<li><a href="View_All_Election.jsp"> Elections </a>
</li>
<li><a href="Admin_ShowResult.jsp"> Result </a>	
</li>
<li><a href="Home_Page.jsp"> Log-Out </a>	
</li>
</ul>

<div class="election-container">
 
<div class="title"><%=session.getAttribute("election_name") %> Result</div>
 
<table>
<tr>
<th>S/N</th>
<th>Candidate Name</th>
<th>Candidate Photo</th>
<th>Party Name</th>
<th>Party Logo</th>
<th>Position</th>
<th>Vote</th>
</tr>
<tr>
 
<%
    Connection cn = null;
    Statement st = null;
    Class.forName("com.mysql.jdbc.Driver");
    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System", "root", "root");

    // Get highest votes for each position
    String maxVotesQuery = "SELECT candidate_position, MAX(votes) AS max_votes FROM admin_add_candidate WHERE Select_election = '"
            + session.getAttribute("election_name") + "' GROUP BY candidate_position";
    
    Statement maxVotesStmt = cn.createStatement();
    ResultSet maxVotesRs = maxVotesStmt.executeQuery(maxVotesQuery);

    while (maxVotesRs.next()) {
        String position = maxVotesRs.getString("candidate_position");
        int maxVotes = maxVotesRs.getInt("max_votes");

        // Get the winning candidate for this position
        String winnerQuery = "SELECT * FROM admin_add_candidate WHERE Select_election = '" 
            + session.getAttribute("election_name") + "' AND candidate_position = '" + position 
            + "' AND votes = " + maxVotes;

        Statement winnerStmt = cn.createStatement();
        ResultSet rs = winnerStmt.executeQuery(winnerQuery);

        while (rs.next()) {
%>
<tr>
    <td><%= rs.getString("candidate_id") %></td>
    <td><%= rs.getString("candidateName") %></td>
    <td><img src="images/<%= rs.getString("candidatephoto") %>" width="50"></td>
    <td><%= rs.getString("PartyName") %></td>
    <td><img src="images/<%= rs.getString("partylogo") %>" alt="Party-Logo" class="Party-Logo"></td>
    <td><%= rs.getString("candidate_position") %></td> 
    <td><%= rs.getString("votes") %></td> 
</tr>
<%
        }
    }
    cn.close();
%>

</table>
</div> 
</body>
</html>