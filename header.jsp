<!doctype html>
<html lang="en">
<head>
    <!-- important for compatibility charset -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <title></title>
    
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">


    
    <!-- important for responsiveness remove to make your site non responsive. -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- FavIcon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
    
    <!-- Animation CSS -->
    <link rel="stylesheet" type="text/css" href="css/animate.css" media="all" />
    
    <!-- Foundation CSS File -->
    <link rel="stylesheet" type="text/css" href="css/foundation.min.css" media="all" />
    
    <!-- Font Awesome CSS File -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="all" />
    
    <!-- Owl Carousel CSS File -->
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="all" />
    
    <!-- Lightbox IMage Gallery Plugin CSS -->
    <link rel="stylesheet" type="text/css" href="css/lightbox.min.css" media="all" />
    
    <!-- Theme Styles CSS File -->
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />

</head>
<!-- Main Container -->
<div class="main-container">
        <!-- Top Bar Starts -->
        <div class="topBar topbar-new">
        	<div class="row">
            
            	<div class="large-6 medium-6 small-12 columns topbar-new text-left">
                	<ul class="menu">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="course_list.jsp">Courses</a></li>
                    </ul>
                </div><!-- Left Column Ends /-->
            
            	<div class="large-6 medium-6 small-12 columns">
                    <ul class="menu text-right">
					<li><a href="">About</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                        <li><a href="adminlogin.jsp">Admin</a></li>
                        
<%
boolean loggedIn = session != null && session.getAttribute("user") != null;
if(loggedIn)
{
String Name=(String)session.getAttribute("Username");  
%>
<li>Welcome  <%= Name %></li>
<li><a href="user_profile.jsp">My Profile</a></li>
<li><a href="logout.jsp">Log Out</a></li> 
<%
}
else
{
%>
<li><a href="login.jsp">Sign In</a></li> 
<%
}
%>
                    </ul>
                </div><!-- Right column Ends /-->
            
            </div><!-- Row ends /-->
        </div>
        <!-- Top bar Ends /-->
        
        
        <!-- Header Starts -->
        <div class="header header-new">
        	<div class="row">
            	
                <div class="medium-4 small-12 columns">
                	<div class="logo">
                    	<a href="index.jsp">
                        	<img src="images/edulearn.png" alt="EduLearn" />
                        </a>    
                    </div><!-- logo /-->
                </div><!-- left Ends /-->
                
                <div class="large-8 medium-8 small-12 columns text-right">
                	<p><i class="fa fa-phone"></i> 9123123000</p>
                </div><!-- Left Column Ends /-->
                
            </div><!-- Row Ends /-->
        </div>
        <!-- Header Ends /-->
        
        <!-- Navigation Wrapper -->
        <div class="navigation-style-two">
            <div class="row nav-wrap">
                <!-- navigation Code STarts here.. -->
                <div class="top-bar">
                    <div class="top-bar-title">
                        <span data-responsive-toggle="responsive-menu" data-hide-for="medium">
                            <a data-toggle><span class="menu-icon dark float-left"></span></a>
                        </span>
                    </div>
                  
                    <nav id="responsive-menu">
                        <ul class="menu vertical medium-horizontal" data-responsive-menu="accordion medium-dropdown">
                            <li class="single-sub parent-nav">
                            	<a href="index.jsp">Home</a>
                            </li>
                            
                            <li class="single-sub parent-nav">
                            <a href="course_list.jsp">Courses</a>
                            </li>
                            
                             <li class="single-sub parent-nav">
                            <a href="">Register Here</a>
                                <ul class="child-nav menu vertical">
                                    <li><a href="student_reg.jsp">Sign Up</a></li>
                                    <li><a href="login.jsp">Login Now</a>
                                  	</li>                                        
                                </ul>
                            </li>
                            <li class="single-sub parent-nav">
                            	<a href="adminlogin.jsp">Admin</a>
                            </li>
                            
                            
                             <li class="single-sub parent-nav">
                            	<a href="aboutus.jsp">About Us</a>
                            </li>
                            
                            <li class="single-sub parent-nav">
                            	<a href="contact.jsp">Contact</a>
                            </li>
                            <li class="single-sub parent-nav">
                            	<a href="">FAQ</a>
                            </li>
                        </ul>
                	</nav>
                </div><!-- top-bar Ends -->
                <!-- Navigation Code Ends here -->
            </div><!-- Row Nav-wrap Ends /-->
		</div>
        <!-- Navigation Wrapper Ends /-->
    
    <!-- Including Jquery so All js Can run -->
    <script type="text/javascript" src="js/jquery.js"></script>
    
    <!-- Including Foundation JS so Foundation function can work. -->
    <script type="text/javascript" src="js/foundation.min.js"></script>
    
    <!-- Including Owl Carousel File -->
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    
    <!-- Webful JS -->
    <script src="js/webful.js"></script>
    
    <!-- Including LightBox Plugin Delete if not using -->
    <script src="js/lightbox.min.js"></script>
</div>
<!-- Main Container /-->
</html>
        