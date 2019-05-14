<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
    <title>Welcome <% session.getAttribute("Username"); %></title>
</head>
<%@ include file="header.jsp" %>
<body>
<!-- Main Container -->
<div class="main-container">

<%
if(!(loggedIn))
{
%>
<jsp:forward page="login.jsp" /> 
<%
}
%>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String uid=(String)session.getAttribute("user");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT My_Course FROM students WHERE User_id='"+uid+"'";

result=st.executeQuery(query);
	
	if(result.next())
	{
		String mycourse=result.getString("My_Course");
%>
<h5>Dear <%= session.getAttribute("Username") %> You have registered for <% out.print(mycourse); %></h5>
<%
}
%>
</div>
<!-- Main Container /-->
</body>
<%@ include file="footer.jsp" %>
</html>
