<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>userviewelectiondetails</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/userviewelectiondetails.css" %> </style>	
</head>
<body>
<ul class="navbar">
<li><a href="candidate_dashbord.jsp">Dashboard</a></li>
<li><a href="candidateforelection.jsp">Candidates  </a> 
</li>
<li><a href="userviewelectiondetails.jsp"> Elections </a>
</li>
<li><a href="Candidate_ViewResult.jsp"> Result </a>	
</li>
<li><a href="Home_Page.jsp"> Log-Out </a>	
</li>
</ul>


    <div class="container">
        <h1>Election Details</h1>
        <table>
            <thead>
                <tr>
                    <th>Election Name</th>
                    <th>Election Type</th>
                    <th>Election Date</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                    <th>Result Date</th>
                    <th>Rules of Election</th>
                </tr>
            </thead>
            <%
		Connection cn = null;
		Statement st = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");
   		String sql ="select * from addelection";
   		st=cn.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
   
   
   %>
            <tbody>
                <tr>
               <td> <%= rs.getString("election_name") %> </td>
		       <td> <%= rs.getString("election_type") %> </td>
		      <td> <%= rs.getString("election_date") %> </td>
		      <td> <%= rs.getString("start_time") %> </td>
		      <td> <%= rs.getString("end_time") %> </td>
		      <td> <%= rs.getString("result_date") %> </td>
		      <td> <%= rs.getString("rules") %> </td>
                </tr>
            </tbody>
            <%} %>
        </table>
        
    </div>




</body>
</html>