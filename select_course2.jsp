<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<html lang="en">
<head>
</head>
<%@ include file="header.jsp" %>
<body>
<%
String c_id=request.getParameter("course");
String u_id=(String)session.getAttribute("user");
String u_name=(String)session.getAttribute("Username");
Date curdate = new Date();
String datenow=curdate.toString();
int count=0;
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
String sql="INSERT INTO tutorial(U_ID, Name, Date) VALUES(?,?,?,?)";
PreparedStatement insertquery = conn.prepareStatement(sql);


insertquery.setString(1,u_id);
insertquery.setString(2,u_name);
insertquery.setString(3,datenow);

count=insertquery.executeUpdate();
if(count>0)
{
out.println("Done!");
}
else
{
out.println("Error");
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</div>
<!-- Main Container /-->
</body>
<%@ include file="footer.jsp" %>
</html>