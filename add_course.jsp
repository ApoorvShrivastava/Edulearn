<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@ include file="header.jsp" %>

<%

String id=request.getParameter("id");

String title=request.getParameter("name");

String details=request.getParameter("details");

String located=request.getParameter("location");

try
{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String sql="INSERT INTO courses VALUES (?,?,?,?)";
PreparedStatement query = conn.prepareStatement(sql);
query.setString(1,id);
query.setString(2,title);
query.setString(3,details);
query.setString(4,located);
int flag=query.executeUpdate(sql);

if(flag==1)

{

out.println("Added!");
response.sendRedirect("login.jsp");

}

else

{

out.println("Failed");
response.sendRedirect("index.jsp");

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