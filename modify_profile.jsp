<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
    <title></title>
</head>
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
%>
<body>
<%@ include file="header.jsp" %>
<!-- Main Container -->
<div class="main-container">
        	<div class="row">
	<form name="reg" action="regconnection.jsp" method="post" enctype="multipart/form-data">
                    <div class="medium-9 small-12 columns">
                    	<h2>Modify Profile</h2>
                        <div class="contact-form">

                        	<div class="row">

                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Your First Name
                                        <input type="text" value="<%= result.getString("First_Name") %>" placeholder="Your name here..." name="fname" id="fname" required/>
                                    </label>    
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Your Last Name
                                        <input type="text" value="<%= result.getString("Last_Name") %>" placeholder="Your last name here..." name="lname" id="lname" required/>
                                    </label>
                                </div>
                            </div><!-- Row Ends /-->
                            
                            <div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Gender
									</label> 
										  <input type="radio" name="gender" value="Male"> Male
										  <input type="radio" name="gender" value="Female"> Female
										  <input type="radio" name="gender" value="Other"> Other  
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Your Date of Birth
                                        <input type="text" value=" <%= result.getString("DOB") %>" placeholder="Enter your Date of Birth(DD/MM/YYYY)" name="dob" id="dob" required/>
                                    </label>    
                                </div>
				</div><!-- Row Ends /-->
				                          
                            <div class="row">	
                                            <div class="medium-6 small-12 columns">
                                	<label>
                                    	Address
                                        <input type="text" value="<%= result.getString("Address") %>" placeholder="Enter your Address..." name="address" id="address" required/>
                                    </label>    
                                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Mobile
                                        <input type="text" value="<%= result.getString("Mobile") %>" placeholder="Enter your Mobile Number..." name="mobile" id="mobile" required/>
                                    </label>    
                                </div>
                            </div><!-- Row Ends /--> 
                                <div class="row">
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Email
                                        <input type="email" value=" <%= result.getString("Email") %>" placeholder="Your Email here..."  name="email" id="email" required/>
                                    </label>
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Select Course
                                        <select name="course">
<%

Class.forName("com.mysql.jdbc.Driver");

Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");

Statement st2=con2.createStatement();

ResultSet result2;

String query2="SELECT * FROM courses";

result2=st.executeQuery(query2);

			while(result2.next())
            {
            %>
                                            <option value="<%=result2.getString("Course_Name")%>"><%=result2.getString("Course_Name")%></option>
            <%
            }
            %>
                                        </select>
                                    </label>
                                </div>
                            </div><!-- Row Ends /-->
                            
                            <div class="row">
                            <div class="medium-6 small-12 columns">
                                	<label>
                                    	Password
                                        <input type="password" value="" placeholder="Your Password here..."  name="passkey" id="passkey" required/>
                                    </label>
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Confirm Password
                                        <input type="password" value="" placeholder="Confirm Password"  name="confirmpass" id="confirmpass" required/>
                                    </label>
                                </div>
                            </div><!-- Row Ends /-->
                           
                            <div class="row">							
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Profile Picture
                                        <input type="file" value="" name="pic" id="pic"/>
                                    </label>    
                                </div>
                            </div><!-- Row Ends /--> 
                            <div class="row">
                            	<div class="medium-12 small-12 columns">
                                	<input type="submit" class="button primary" value="Register" />
                                </div>
                            </div><!-- Row Ends /-->
                        </div><!-- Contact form /-->
                    </div><!-- Right Column Ends /-->
                    </form>
            </div><!-- Row /-->
<br>
</div>
<!-- Main Container /-->
<%
	}
  }
	catch(Exception e)
		{
			e.printStackTrace();
		}
%>
<%@ include file="footer.jsp" %>
</body>
</html>