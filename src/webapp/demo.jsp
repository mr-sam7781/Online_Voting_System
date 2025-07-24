<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>College Election Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 15px 0;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        td img {
            height: 50px;
        }
    </style>
</head>
<body>
    <header>
        <h1>College Election Results</h1>
    </header>
    <table>
        <tr>
            <th>Candidate Name</th>
            <th>Party Name</th>
            <th>Logo</th>
            <th>Position</th>
            <th>Vote Count</th>
        </tr>
        <tr>
            <td>Amit Singh</td>
            <td>Unity Party</td>
            <td><img src="logo1.png" alt="Logo"></td>
            <td>President</td>
            <td>1023</td>
        </tr>
        <tr>
            <td>Priya Sharma</td>
            <td>Youth Wing</td>
            <td><img src="logo2.png" alt="Logo"></td>
            <td>Vice President</td>
            <td>980</td>
        </tr>
        <tr>
            <td>Rahul Mehta</td>
            <td>Future Vision</td>
            <td><img src="logo3.png" alt="Logo"></td>
            <td>Treasurer</td>
            <td>750</td>
        </tr>
    </table>
</body>


</html>
