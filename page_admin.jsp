<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<%
boolean chkadmin= session != null && session.getAttribute("admin") != null;
if(!(chkadmin))
{
response.sendRedirect("adminlogin.jsp");
%>
<script type="text/javascript">
function alertName()
{
alert("Sorry You are not authorised to view this page !");
} 
</script>
<%
}
%>
<%@ include file="header.jsp" %>
        <!-- Content section -->
        <div class="content-section module">
        	<div class="row">
		            <div class="">
					<form name="logout" action="logout.jsp" method="post">
		                    	<h2>Admin Panel </h2><h5><%= session.getAttribute("admin")%></h5>
								<input type="submit" name=Logout id=logout value=Logout class="button primary">
					</form>
					</div>
		                    	
					<div class="">
						<div>
		                    	<h4><a href="new_admin.jsp" class="secondary button">Add Admin</a></h4>
						</div>
					</div>

					<div class="">
						<h2>Student Details</h2>
		                        <div>
		                        <form name="" action="srchstudent.jsp">
		                        	<label>User ID</label>
		                        	<input type="text" name="u_id" id="u_id" value=""></input>
		                        	<input type="submit" name=search id=search value=search class="button primary">
		                        </form>
		                        </div>
					</div>
					<div class="">
						<h2>List of All students</h2>
					</div>
					<div class="">
						<div>
		                    	<h4><a href="new_course.jsp" class="secondary button">Add New Course</a></h4>
						</div>
					</div>
					<div class="">
		                    	<h2>Courses Details</h2>
		                    	<div>
		                        <form name="" action="srchcourses.jsp">
		                        	<label>Course ID</label>
		                        	<input type="text" name="courseid" id="courseid" value=""></input>
		                        	<input type="submit" name=search id=search value=search class="button primary">
		                        </form>
		                        </div>
					</div>
					
		</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>