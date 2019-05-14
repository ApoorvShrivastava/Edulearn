<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>

<html lang="en">
<head>
    <title>User Home Page</title>
</head>
<%@ include file="header.jsp" %>
<body>
<%
if(!(loggedIn))
{
%>
<script type="text/javascript">
function alert()
{
alert("Please Login to continue");
} 
</script>
<%
response.sendRedirect("login.jsp");
}
%>
<!-- Main Container -->
<div class="main-container">
<h5>Welcome <%= session.getAttribute("Username") %></h5>
		<div class="row">
		<jsp:forward page="index.jsp" /> 
		</div>
</div>
<!-- Main Container /-->
</body>
<%@ include file="footer.jsp" %>
</html>