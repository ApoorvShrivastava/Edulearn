<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <title></title>
</head>

<body>
<%@ include file="header.jsp" %>

<%
String uname=(String)session.getAttribute("Username") ;
String uid=(String)session.getAttribute("user");
String rating=request.getParameter("rating");
String feedback=request.getParameter("feedback");
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");


ResultSet result;

String sql="INSERT INTO feedback VALUES(?,?,?,?)";

PreparedStatement query = conn.prepareStatement(sql);
query.setString(1,uname);
query.setString(2,uid);
query.setString(3,rating);
query.setString(4,feedback);
int count=query.executeUpdate();
if(count==1)
{
%>
<div class="row">
<h4> <%out.println("Feedback Submitted Successfully!");%></h4>
</div>
<%}
else 
	{
		out.println("Unable to submit feedback");
	}
%>
<%@ include file="footer.jsp" %>
</body>
</html>