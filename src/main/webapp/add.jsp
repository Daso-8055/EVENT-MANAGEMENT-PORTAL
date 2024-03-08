<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<%

Connection c= null;
PreparedStatement pst = null;
String Url = "jdbc:mysql://localhost/office";
String Username = "root";
String Pass = "";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	c = DriverManager.getConnection(Url,Username,Pass);

String name = request.getParameter("ename");
String loc = request.getParameter("eloc");
String nopp = request.getParameter("nop");
String ehnn = request.getParameter("ehn");
String durr = request.getParameter("dur");
String payy = request.getParameter("pay");
String ett = request.getParameter("et");
String status = "Application In Progress";




	String Query = "insert into event(ename,eloc,nop,ehn,dur,pay,et,status)values(?,?,?,?,?,?,?,?)";
	pst = c.prepareStatement(Query);
	pst.setString(1,name);
	pst.setString(2,loc);
	pst.setString(3,nopp);
	pst.setString(4,ehnn);
	pst.setString(5,durr);
	pst.setString(6,payy);
	pst.setString(7,ett);
	pst.setString(8,status);
	pst.executeUpdate();
	
	response.sendRedirect("record.jsp");

}catch(Exception e){
e.printStackTrace();
}
%>