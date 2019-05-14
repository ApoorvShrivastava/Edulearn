<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <title></title>
</head>

<body>
<%@ include file="header.jsp" %>
<%
String email=request.getParameter("email");

String password=request.getParameter("password");

String details=request.getParameter("details");

if(password=="null")
out.println("Password can't be blank");
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String sql="INSERT INTO admin VALUES(?,?,?,?)";
PreparedStatement query = conn.prepareStatement(sql);
query.setString(1,email);
query.setString(2,password);
query.setString(3,details);
int count=query.executeUpdate();
if(count==1)
{
out.println("Added!");
}
}
catch(SQLException ex)
{
out.println(ex);
}
catch(Exception e)
{
out.println(e);
}
%>
<%@ include file="footer.jsp" %>
</body>
</html>