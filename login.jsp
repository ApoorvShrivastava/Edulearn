<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <title>Login</title>
</head>
<%
boolean userloggedIn = session != null && session.getAttribute("user") != null;
if(userloggedIn)
{
response.sendRedirect("user_profile.jsp");
}
%>
<%@ include file="header.jsp" %>
<body>

 <!-- Main Container -->
<div class="main-container">
	<div class="row">
		<form name="login" action="loginconnection.jsp" method="post">
                    <div class="medium-9 small-12 columns">
                    	<h2>Login Here</h2>
                        <div class="contact-form">

                        	<div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	User ID*
                                        <input type="text" value="" placeholder="Please Enter your User ID" id="u_id" name="u_id" required/>
                                    </label>    
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Password*
                                        <input type="password" value="" placeholder="Please Enter your Password" id="password" name="password" required/>
                                    </label>
                                </div>
                            </div>
                            <!-- Row Ends /-->
                            
                            
                            <div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<input type="submit" class="button primary" value="Login" />
                                </div>                              
                                <div class="medium-6 small-12 columns">
                                	   <input type="reset" class="button primary" value="Clear" />
                                </div>
                                
                            </div><!-- Row Ends /-->
			</div>
			</div>
</form>
</div>
</div>
<br>
</body>
<%@ include file="footer.jsp" %>
</html>