<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <title></title>
</head>

<body>
<%@ include file="header.jsp" %>
<!-- Main Container -->
<div class="main-container">
        	<div class="row">
	<form name="reg" action="regconnection.jsp" method="post" enctype="multipart/form-data">
                    <div class="medium-9 small-12 columns">
                    	<h2>Student Registration</h2>
                        <div class="contact-form">

                        	<div class="row">

                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Your First Name
                                        <input type="text" value="" placeholder="Your name here..." name="fname" id="fname" required/>
                                    </label>    
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Your Last Name
                                        <input type="text" value="" placeholder="Your last name here..." name="lname" id="lname" required/>
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
                                        <input type="text" value="" placeholder="Enter your Date of Birth(DD/MM/YYYY)" name="dob" id="dob" required/>
                                    </label>    
                                </div>
				</div><!-- Row Ends /-->
                                <div class="row">
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Email
                                        <input type="email" value="" placeholder="Your Email here..."  name="email" id="email" required/>
                                    </label>
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Select Course
                                        <select name="course">
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
                                            <option value="<%=result.getString("Course_Name")%>"><%=result.getString("Course_Name")%></option>
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
                                    	Address
                                        <input type="text" value="" placeholder="Enter your Address..." name="address" id="address" required/>
                                    </label>    
                                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Mobile
                                        <input type="text" value="" placeholder="Enter your Mobile Number..." name="mobile" id="mobile" required/>
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

<%@ include file="footer.jsp" %>
</body>
</html>