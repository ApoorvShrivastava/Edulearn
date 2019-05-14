<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html lang="en">
<head>
</head>
<%@ include file="header.jsp" %>
<body>
<%
String current_user=(String)session.getAttribute("user");
if(current_user=="null")
{
response.sendRedirect("login.jsp");
}
%>
<%
String mycourse=(String)session.getAttribute("file");
Integer id=(Integer)session.getAttribute("count");
String filenum=id.toString();
Class.forName("com.mysql.jdbc.Driver");
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet result=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
String sql="SELECT * FROM "+mycourse+" WHERE File_ID=?";
pstmt= conn.prepareStatement(sql);
pstmt.setString(1,filenum);
result=pstmt.executeQuery();

if(result.next())
{
%>
<%=result.getString("File")%>
<%=session.getAttribute("count")%>
<h2>Title :  <%= session.getAttribute("c_name")%><br></h2>

<table width="100%" border="0">
<tr>
	<td><a href="start_course.jsp?<%session.setAttribute("count",(id-1)) ;%><%=session.getAttribute("count")%>" class="secondary button">Previous</a></td>
	<td><a href="start_course.jsp?<%session.setAttribute("count",(id+1)) ;%><%=session.getAttribute("count")%>" class="secondary button">Next</a></td>
</tr>
  <tr>
  <td>
	<embed src="<%=result.getString("File")%>" type="video/mp4" width="1000px" height="768px" autostart="false" align="middle" alt="This browser is not configured to display video">
	</embed>
	</td>
  </tr>
<%
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
</table>
</body>
<%@ include file="footer.jsp" %>
</html>