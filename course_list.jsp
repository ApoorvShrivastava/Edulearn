<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
    <title>Courses</title>
</head>
<body>
<%@ include file="header.jsp" %>
        <!-- Content section -->
 <div class="content-section module">
	<div class="row">
                    	<h2>Courses</h2>
<%

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

Statement st=con.createStatement();

ResultSet result;

String query="SELECT * FROM courses";

result=st.executeQuery(query);

			while(result.next())
            {
            %>
			<p><br></p>
				<div class="course">
					<h3><%=result.getString("Course_Name") %></h3>
					<p><%=result.getString("Description") %></p>
					<a href="student_reg.jsp" class="secondary button">Register Yourself!</a>
					</div><!--Course /-->
			<%
			}
			%>

</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>