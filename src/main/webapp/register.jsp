<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMP</title>
</head>
<body>

<center>
<h2 style= "color:blue;"><u>EVENT MANAGEMENT PORTAL</u></h2>
<marquee scrollamount="15">REGISTRATION WILL BE CLOSED ON 10TH MARCH</marquee>
<form action="add.jsp" method="post">


<table border="5">
<tr>
<td>EVENT NAME</td>
<td><input type="text" name= "ename" required></td> 
</tr>

<tr>
<td>EVENT LOCATION</td>
<td><input type="text"  name= "eloc" required></td> 
</tr>

<tr>
<td>NO OF PARTICIPANTS</td>
<td>
<center>
<select name="nop" required>
	<option>1</option>
	<option>2</option>
	<option>3</option>
	<option>4</option>
	<option>5</option>
	<option>6</option>
</select>
</center>
</td>
</tr>

<tr>
<td>EVENT HOLDER NAME</td>
<td><input type="text"  name= "ehn" required></td> 
</tr>

<tr>
<td>DURATION</td>
<td>
<center>
<select name="dur" required>
<option> 3 HOURS</option>
<option> 6 HOURS</option>
<option> 9 HOURS</option>
</select>
</center> 
</td>
</tr>

<tr>
<td>PAYMENT MODE</td>
<td>
<center>
<select name="pay" required>
<option>UPI</option>
<option>DEBIT CARD</option>
<option>CREDIT CARD</option>
</select>
</center> 
</td>
</tr>

<tr>
<td>EVENT TYPE</td>
<td>
<center>
<select name="et" required>
	<option> Technical </option>
	<option> Non-Technical </option>
</select>
</center>
</td>
</tr>

<tr>
<td><center><button type="reset">RESET</button></center></td>
<td><center><button type="submit">REQUEST</button></center></td>
</tr>

</table>

</form>

</center>

</body>
</html>