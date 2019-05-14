<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>


<%

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");


String adminemail=request.getParameter("email");

String adminpassword=request.getParameter("password");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT * FROM admin WHERE Email='" + adminemail + "' and Password='" + adminpassword + "' ";

result=st.executeQuery(query);

	
	if(result.next())
	{
		session.setAttribute("admin",adminemail);
	      
	    response.sendRedirect("page_admin.jsp");
	
	}

	
	else 
	{
		out.println("Invalid password");
	}
%>