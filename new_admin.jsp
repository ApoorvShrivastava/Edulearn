<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="header.jsp" %>
<body>
<div class="row">
<form action="add_admin.jsp" method="post">

                                <div class="medium-6 small-12 columns">
                                		<label>
                                    	Email
                                    	</label>
                                        <input type="email" value="" placeholder="Your Email here..."  name="email" id="email" required/>
                                </div>
                                <div class="medium-6 small-12 columns">
                                		<label>
                                    	Password
                                    	</label>
                                        <input type="password" value="" placeholder="Your Password here..."  name="email" id="email" required/>
                                    
                                </div>
                            <!-- Row Ends /-->
                            <div class="medium-6 small-12 columns">
                            			<label>
                                    	Picture
                                    	</label> 
                                        <input type="file" value=""  name="" id="" />
							</div>
							<div class="medium-6 small-12 columns">
		                    <label>
									Details
							</label>
								<input type="text" value="" placeholder="Details..."  name="detail" id="detail" required/>
							</div>
                            <div class="medium-6 small-12 columns">
                            <input type="submit" class="button primary" value="Add Admin" />
                            </div>
</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>