<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "java.sql.*"%>

<%
Connection c= null;
PreparedStatement pst = null;
ResultSet rst = null;


String Url = "jdbc:mysql://localhost/office";
String Username = "root";
String Pass = "";
String id = request.getParameter("id");
String Query = "select * from event where id = ?";
 try{
 		Class.forName("com.mysql.cj.jdbc.Driver");
		c = DriverManager.getConnection(Url,Username,Pass);
		pst = c.prepareStatement(Query);
		pst.setInt(1, Integer.parseInt(id));
		rst = pst.executeQuery();
	while(rst.next()){
%>

<center>
<h2 style="color:blue;"><u><b>Candidate Participation Details Update Form</b></u></h2>
<form action="ud.jsp" method="post">
<table border="5">

<tr>
<td>Participants ID</td>
<td><input type="text"  name="id" value="<%=rst.getString("id") %>" readonly></td>
</tr>

<tr>
<td>Event Name</td>
<td><input type="text" value="<%=rst.getString("ename") %>"  name="ename" required></td>
</tr>

<tr>
<td>Event Location</td>
<td><input type="text" value="<%=rst.getString("eloc") %>"  name="eloc" required></td>
</tr>

<tr>
<td>No of Participants</td>
<td>
<center>
<select  value="<%=rst.getString("nop") %>" name="nop" required>
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
<td>Event Holder Name</td>
<td><input type="text" value="<%=rst.getString("ehn") %>" name="ehn" required></td>
</tr>

<tr>
<td>Duration</td>
<td>
<center>
<select  value="<%=rst.getString("dur") %>" name="dur" required>
<option> 03 HOURS</option>
<option> 06 HOURS</option>
<option> 09 HOURS</option>
</select>
</center> 
</td>
</tr>

<tr>
<td>Payment Mode</td>
<td>
<center>
<select  value="<%=rst.getString("pay") %>" name="pay" required>
<option>UPI</option>
<option>DEBIT CARD</option>
<option>CREDIT CARD</option>
</select> 
</center>
</td>
</tr>

<tr>
<td>Event Type</td>
<td>
<center>
<select  value="<%=rst.getString("et") %>" name="et" required>
<option>TECHNICAL</option>
<option>NON TECHNICAL</option>
</select> 
</center>
</td>
</tr>

<tr>
<td><center><button type="reset">RESET</button></center></td>
<td><center><button type="submit">UPDATE</button></center></td>
</tr>

</table>
</form>
</center>

<% 
	}
}catch(Exception e){
	 e.printStackTrace();
 }
%>