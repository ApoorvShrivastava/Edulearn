<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="header.jsp" %>
<body>
<div class="content-section module">
<form action="add_course.jsp">
						<div class="row">
                                <div class="medium-6 small-12 columns">
                                		<label>
                                    	Course ID
                                    	</label>
                                        <input type="text" value=""name="" id="id" required/>
                                </div>
                                <div class="medium-6 small-12 columns">
                                		<label>
                                    	Course Title
                                    	</label>
                                        <input type="text" value=""  name="" id="name" required/>
                                    
                                </div>
						</div>
                            <!-- Row Ends /-->
							<div class="row">
								<div class="medium-6 small-12 columns">
								<label>
										Details
								</label>
									<input type="text" value=""   name="details" id="details" required/>
								</div>
								<div class="form_group">
                    <label>Upload File</label><span id="colon">: </span><input id="fileAttachment" type="file" name="fileUpload" multiple="multiple" />
                    <span id="fileUploadErr">Please Upload A File!</span>
                </div>
									<div class="medium-6 small-12 columns">
                                		<label>
                                    	Tutorial Location
                                    	</label>
                                        <input type="text" value=""   name="location" id="location" required/>
                                    </div>
                                </div><!-- Row Ends /-->
						<div class="row">
                            <div class="medium-6 small-12 columns">
                            <input type="submit" class="button primary" value="Add Course" />
                            </div>
						</div><!-- Row Ends /-->
</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>