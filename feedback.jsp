<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%
if(!(loggedIn))
{
response.sendRedirect("login.jsp");
}
%>
        <!-- Content section -->
 <div class="content-section module">
	<div class="row">
	<form name="feedback" action="feedback2.jsp" method="post">
                    <div class="medium-9 small-12 columns">
                    	<h2>Feedback</h2>
						<div class="contact-form">
							<div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	User Name:
                                    </label>    
                                     <%= session.getAttribute("Username") %>
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	User ID:
                                    </label>
                                    <%= session.getAttribute("user")%>
                                </div>
                            </div><!-- Row Ends /-->
                            <div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Your rating out of 10
                                        <input type="text" value="" placeholder="Please provide rating" id="rating" name="rating" required/>
                                    </label>    
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Feedback
                                        <input type="text" value="" placeholder="Please Provide Your valuable feedback" id="feedback" name="feedback" required/>
                                    </label>
                                </div>
                            </div><!-- Row Ends /-->
                            
                            
                            <div class="row">
                            	<div class="medium-4 small-12 columns">
									<input type="submit" class="button primary" value="Submit" />
                                </div>
                                <div class="medium-4 small-12 columns">
									<input type="reset" class="button primary" value="Clear" />
                                </div>
                                
                            </div><!-- Row Ends /-->
				</div><!-- Contact Form /-->
			</div>
</form>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>