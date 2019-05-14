<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@ include file="header.jsp" %>
<%

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String id=request.getParameter("u_id");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT * FROM students WHERE User_ID='"+id+"' ";

result=st.executeQuery(query);
%>

<%	if(result.next())
	{
%>	
<table width="100%" border=0>
	<tr>
	<td align="center"><b>Roll Number</b></td>
	<td align="center"><b>First Name</b></td>
	<td align="center"><b>Last Name</b></td>
	<td align="center"><b>Gender</b></td>
	<td align="center"><b>Date of Birth</b></td>
	<td align="center"><b>Email</b></td>
	<td align="center"><b>Password</b></td>
	<td align="center"><b>Address</b></td>
	<td align="center"><b>Mobile</b></td>
	
	</tr>

	<tr>
	<td align="center"><%= result.getString("User_ID") %></td>
	<td align="center"><%= result.getString("First_Name") %></td>
	<td align="center"><%= result.getString("Last_Name") %></td>
	<td align="center"><%= result.getString("Gender") %></td>
	<td align="center"><%= result.getString("DOB") %></td>
	<td align="center"><%= result.getString("Email") %></td>
	<td align="center"><%= result.getString("Password") %></td>
	<td align="center"><%= result.getString("Address") %></td>
	<td align="center"><%= result.getString("Mobile") %></td>
	</tr>
	</table>
<%
}
else 
	{
		out.println("User ID invalid !!");
	}
%>
			
<%@ include file="footer.jsp" %>