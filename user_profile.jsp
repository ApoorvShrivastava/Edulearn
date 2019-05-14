<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
    <title>My Profile</title>
</head>

<body>
<%@ include file="header.jsp" %>
 <!-- Main Container -->
<div class="main-container">
<form name="user" action="modify_profile.jsp" method="post">	
	<h2>User Profile</h2>
	<div class="large-2 medium-9 small-12 columns">
	<form name="logout" action="logout.jsp" method="post">
			<input type="submit" name=Logout id=logout value=Logout class="button primary">
		</form>
		<br>
		<h5>User Operations</h5>
		<a href="modify_profile.jsp" class="secondary button">Modify Account</a>
		<br>
		<a href="remove_account.jsp" class="secondary button">Delete Account</a>
	</div>
	
<%
String current_user=(String)session.getAttribute("user");
if(current_user=="null")
{
response.sendRedirect("login.jsp");
}
%>
<%  try
  {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
		Statement st=con.createStatement();
		ResultSet result;
			String query="SELECT * FROM students WHERE User_ID='" + current_user +"' ";
			result=st.executeQuery(query);
			if(result.next())
			{
			String mycourse=result.getString("My_Course");
			session.setAttribute("c_name",mycourse) ;
%>
<div class="row">
	<div class="medium-9 small-12 columns">

	<div>Roll Number <%= current_user %></div>
	<div>Name <%= result.getString("First_Name") %> <%= result.getString("Last_Name") %></div>
	<div>Gender   <%= result.getString("Gender") %></div>
	<div>DOB   <%= result.getString("DOB") %></div>
	<div>Email   <%= result.getString("Email") %></div>
	<div>Password   <%= result.getString("Password") %></div>
	<div>Address   <%= result.getString("Address") %></div>
	<div>Mobile   <%= result.getString("Mobile") %></div>
	
	</div>
	</div>
	<div class="row">
	<div class="medium-6 small-6 columns">
		<h5>Dear <%= session.getAttribute("Username") %> You have registered for <%= session.getAttribute("c_name")%></h5>
		<%
	}
  }
	catch(Exception e)
		{
			e.printStackTrace();
		}
%>
<%
String courname=(String)session.getAttribute("c_name");
session.setAttribute("file",null) ;
session.setAttribute("count",1) ;
Class.forName("com.mysql.jdbc.Driver");
Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
PreparedStatement pstmt=null;
ResultSet result2;
String query2="SELECT * FROM coursefile WHERE Course_Name=?";
pstmt= con2.prepareStatement(query2);
pstmt.setString(1,courname);

result2=pstmt.executeQuery();
if(result2.next())
{
String c_id=result2.getString("Course_ID");
session.setAttribute("file",c_id) ;
}
%>
		<a href="start_course.jsp" class="secondary button">Start my course</a>
	</div>
	</div>

</div><!-- Main Container -->

<br>
</body>
<%@ include file="footer.jsp" %>
</html>