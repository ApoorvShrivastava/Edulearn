<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <title>Select Course</title>
</head>

<body>
<%@ include file="header.jsp" %>
<!-- Main Container -->
<div class="main-container">
	<h5>Welcome <%= session.getAttribute("Username") %></h5>
	<h2>Please select course you want to learn</h2>
                        <div class="contact-form">
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT * FROM courses";

result=st.executeQuery(query);

%>
<form name="form1" action="select_course2.jsp" method="post">
<table width="100%" border=0>
		<tr>
			<td align="center"><b>Course Title</b></td>
			<td align="center"><b>Course Description</b></td>
			<td align="center"><b>Selection</b></td>
		</tr>
			<%
			while(result.next())
            {
            %>
		<tr>
			<td align="center"><%=result.getString("Course_Name") %></td>
			<td align="center"><%=result.getString("Description") %></td>
			<td><input type="hidden" id="course" name="course" value="<%=result.getString("Course_ID")%>"></td>
			<td><input type="submit" class="button primary" value="Select" /></td>
		</tr>
			<%
			}
			%>
			<tr>
			<td colspan=3>
			<input type="" class="button primary" value="" /></td>
			</tr>
	</table>
	</form>

			
</div>
<%@ include file="footer.jsp" %>
</body>
</html>