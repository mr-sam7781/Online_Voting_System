
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Candidate_SignUp.css">
<script type="text/javascript" src="js/validation.js"></script>
<style type="text/css"> <%@include file="css/Candidate_SignUp.css" %> </style>
<title>Registration Form</title>
</head>
<body>
<form name="Candidate_SignUP" action="Candidate_SignUP" method="post" >
<div class="container">
<h1>Registration Form</h1>
<div class="form-row">
<div class="form-group">
<input type="text" name="First_Name" placeholder="Enter First Name" onkeypress="return isString(event)">
</div>
<div class="form-group">
<input type="text"  name="Middle_Name" placeholder="Enter Middle Name" onkeypress="return isString(event)">
</div>
<div class="form-group">
<input type="text"  name="last_Name" placeholder="Enter Last Name" onkeypress="return isString(event)">
</div>
</div>
<div class="form-row">
<div class="form-group">
<input type="email"  name="Email_ID" placeholder="Enter Email ID" required>
</div>
<div class="form-group">
<input type="tel"  name="Mobile_Number" placeholder="Enter Mobile Number" onkeypress="return isNumber(event)">
</div>
</div>
<div class="form-row">
<div class="form-group">        
<select id="State" name="State">
<option value="">Select Your State</option>
<option value="AP"> Andhra Pradesh</option>
<option value="AR"> Arunachal Pradesh</option>
<option value="AS"> Assam </option>
<option value="BR"> Bihar </option>
<option value="CT"> Chhattisgharh </option>
<option value="CD"> Chandigharh </option>
<option value="DL"> Delhi </option>
<option value="GA"> Gujrat </option>
<option value="HR"> Haryana </option>
<option value="HP"> Himachal Pradesh </option>
<option value="JK"> Jharkhand </option>
<option value="KA"> Karnataka </option>
<option value="KL"> Kerala </option>
<option value="MP"> Madhya Pradesh </option>
<option value="MH"> Maharashtra </option>
<option value="NL"> Nagaland </option>
<option value="OR"> Odisha </option>
<option value="PB"> Panjab </option>
<option value="RJ"> Rajsthan </option>
<option value="TN">Tamil Nadu</option>
<option value="UT"> Uttarkhand </option>
<option value="UT"> Uttar Pradesh </option>
</select>	
</div>
<div class="form-group">
<input type="text" name="District" placeholder="District" required>
</div>
</div>
<div class="address">
<div class="address">
<textarea name="Address" placeholder="Enter Address" rows="2" required></textarea>
</div>
</div>
<div class="gender">
<div class="gender">
<select name ="gender" required>
<option value="" disabled selected>Select Gender</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select>
</div>      
<div class="form-row">
<div class="form-group">
<input type="text" name="Voter_ID" placeholder="Enter Voter ID" >
</div>
<div class="form-group">
<input type="number"  name="Adhar_Number" placeholder="Enter Adhar Number" onkeypress="return isNumber(event)">
</div>
</div>        
<div class="form-row">
<div class="form-group">
<input type="password" name="Password" placeholder="Password" required>
</div>
<div class="form-group">
<input type="password"  name="Confirm_Password"placeholder="Confirm Password" required>
</div>
</div>
<div class="DOB">
<label>Birth Date:</label>
<input type="date" name="Birth_Date" required>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label>Upload Voter ID:</label>
<input type="file"  name="VoterIDCard">
</div>
<div class="form-group">
<label>Upload Adhar-Card:</label>
<input type="file" name="AdharCard" required>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="personImage">Upload Your Image:</label>
<input type="file" name="Image"required>
</div>
</div>
<button type="submit" name="submit" value="Submit">Submit</button>

</div>
</form>	
</body>
</html>