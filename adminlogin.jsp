<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<%
boolean chkadmin= session != null && session.getAttribute("admin") != null;
if(chkadmin)
{
response.sendRedirect("page_admin.jsp");
}
%>
<%@ include file="header.jsp" %>

        <!-- Content section -->
 <div class="content-section module">
	<div class="row">
	<form name="login" action="loginchk_admin.jsp" method="post">
                    <div class="medium-9 small-12 columns">
                    	<h2>Administrator Login</h2>
                        <div class="contact-form">
                                                   
                        	<div class="row">
                            	<div class="medium-6 small-12 columns">
                                	<label>
                                    	Email*
                                        <input type="email" value="" placeholder="Your Email here..." id="email" name="email" required/>
                                    </label>    
                                </div>
                                <div class="medium-6 small-12 columns">
                                	<label>
                                    	Password*
                                        <input type="password" value="" placeholder="Your password here..." id="password" name="password" required/>
                                    </label>
                                </div>
                            </div><!-- Row Ends /-->
                            
                            
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
<%@ include file="footer.jsp" %>
</body>
</html>