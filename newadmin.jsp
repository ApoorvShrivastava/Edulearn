<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="header.jsp" %>
<body>
<div class="row">
<form action="">
		<div class="row">
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
		</div>
		<!-- Row Ends /-->
		<div class="row">
			
			<div class="medium-6 small-12 columns">
				<label>
					Details
				</label>
				<input type="text" value="" placeholder="Details..."  name="detail" id="detail" required/>
			</div>
		</div><!--Row Ends/-->
		<div class="row">
		<input type="submit" class="button primary" value="Add Admin" />
		</div>
</form>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>