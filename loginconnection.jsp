<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<%
String id=request.getParameter("u_id");

String password=request.getParameter("password");

if(password=="null")
out.println("Password can't be blank");
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet result=null;
try
{
Class.forName("com.mysql.jdbc.Driver");

conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

String sql="SELECT * FROM students WHERE User_ID=? AND Password=?";
pstmt= conn.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.setString(2,password);
result=pstmt.executeQuery();
		
		if(result.next())
		{
		String Student_name=result.getString("First_Name")+"\t"+result.getString("Last_Name");
			session.setAttribute("user", id);
		    session.setAttribute("Username",Student_name ); 
			response.sendRedirect("user_home.jsp");
	}

		
		else 
		{
			out.println("Invalid password");
		}
		
}
catch(Exception e)
{
e.printStackTrace();
}
finally
{
conn.close();
pstmt.close();
}
%>

<%@ include file="footer.jsp" %>
</body>
</html>