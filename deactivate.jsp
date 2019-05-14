<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<%
String id=request.getParameter("u_id");
try
{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection
("jdbc:mysql://localhost:3306/college","root","root");


String sql="DELETE FROM students WHERE User_ID = ?";
PreparedStatement query = conn.prepareStatement(sql);
query.setString(1,id);

int count=query.executeUpdate();
if(count==1)
{
out.println("Your Account has been permanentaly deactivated!");
session.removeAttribute("user");
}
else
{
out.println("User ID is invalid!");
}
}
catch(SQLException ex)
{
ex.printStackTrace();
}
catch(Exception e)
{
e.printStackTrace();
}
%>