<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%@ include file="header.jsp" %>
<%

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String course_id=request.getParameter("courseid");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT * FROM courses WHERE Course_ID='"+course_id+"'";

result=st.executeQuery(query);

	
	result.next();
		out.println("Record Found");
		String c_id=result.getString("Course_ID");
		String C_name=result.getString("Course_Name");
		String c_desc=result.getString("Description");
			
	
%>
			<table width="100%">
			<tr>
			<td align="center"><% out.print(c_id); %></td>
			<td align="center"><% out.print(C_name); %></td>
			<td align="center"><% out.print(c_desc); %></td>
			</tr>
			</table>
 
<%@ include file="footer.jsp" %>