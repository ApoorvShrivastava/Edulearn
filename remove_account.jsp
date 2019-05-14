<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
    <title>Remove Account</title>
</head>
<%@ include file="header.jsp" %>
<body>
<!-- Main Container -->
<div class="main-container">
		<form name="deactivate" action="deactivate.jsp" method="post">
                    	<h2>Deactivate Account</h2>
						<div class="row">
						<div class="contact-form">
							
                        	<div class="medium-4 small-6 columns">
							<h6>Please confirm User_ID to deactivate your account</h6>
                            	<div>
                                	<label>
                                    	User ID*
                                        <input type="text" value="" placeholder="Please Enter your User ID" id="u_id" name="u_id" required/>
                                    </label>    
                                </div>
                                <div>
                                        <input type="submit" class="button primary" value="Remove Account" />
                                </div>
							</div>
                        </div>    
                            <!-- Row Ends /-->
					</div>
<br>
</div>
<!-- Main Container /-->
<%@ include file="footer.jsp" %>
</body>
</html>