<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/adminuploadelectionresult.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">
	<style type="text/css"> <%@ include file="css/adminuploadelectionresult.css" %> </style>
<title>adminuploadelectionresult</title>
</head>
<body>


    <div class="container">
        <h1>Upload Election Results</h1>
        <form name="adminuploadelectionresult"  action="adminuploadelectionresult" method="post" >
            <div class="form-group">
                <label for="candidate-name">Candidate Name:</label>
                <input type="text" id="candidate-name" name="candidatename" >
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="candidate-photo">Candidate Photo:</label>
                    <input type="file" id="candidate-photo" name="candidatephoto" accept="image/*" >
                </div>
                <div class="form-group">
                    <label for="party-logo">Party Logo:</label>
                    <input type="file" id="party-logo" name="partylogo" accept="image/*" >
                </div>
            </div>
            <div class="form-group">
                <label for="party-name">Party Name:</label>
                <input type="text" id="party-name" name="partyname" >
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="number-of-votes">Number of Votes:</label>
                    <input type="number" id="number-of-votes" name="numberofvotes" >
                </div>
                <div class="form-group">
                    <label for="average">Average:</label>
                    <input type="text" id="average" name="average" >
                </div>
            </div>
            <button type="submit" value="Submit" name="submit" class="submit-btn">Submit</button>
        </form>
    </div>



</body>
</html>