<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.innerfade.js"></script>
<script type="text/javascript" src="../js/css_browser_selector.js"></script>
<script type="text/javascript" src="../js/jquery.easytabs.js"></script>
<script type="text/javascript" src="../js/slides.min.jquery.js"></script>
<script type="text/javascript" src="../js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="../js/jquery.easing.js"></script>
<script type="text/javascript" src="../js/jquery.accordion.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<link rel="stylesheet" href="../css/raxit.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="../css/heli.css" type="text/css" media="screen" />
<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="../js/slide.js" type="text/javascript"></script>
</head>
<body>
<!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<h1>Welcome to Sanjivani Hospitals</h1>
				
			</div>
			<div class="left">
				<!-- Login Form -->
				
				<form action="../paitent/paitentLogin.jsp">
					<h4>Member Login</h4>
					
					<input type="submit" name="submit" value="Login" class="bt_login" />
					
				</form>
			</div>
			<div class="left right">			
				<!-- Register Form -->
				<form action="../paitent/paitentRegistration.jsp" method="post">
					<h1>Not a member yet? Sign Up!</h1>				
					
					<input type="submit" name="submit" value="Register" class="bt_register" />
				</form>
			</div>
		</div>
</div> <!-- /login -->	

	<!-- The tab on top -->	
	<div class="tab">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<li>Hello Guest!</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Log In | Register</a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>			
			</li>
			<li class="right">&nbsp;</li>
		</ul> 
	</div> <!-- / top -->
	
</div> <!--panel --> 
<div id="home">
   <div id="top">
 

     <a href="./index.jsp" class="logo">
<img src="../images/s2.jpeg" alt="" /></a>

<br class="clear" />
</div>
</div>
<div class="mainmenu">
    <div class="wrapper">
    <ul class="menu" id="menu">
		        <li class="small_link ">
                 <a href="index.jsp">Home</a>
        	<a href="about.jsp">About</a> 
            <span></span>            
		
        
        	<a href="services.jsp">Departments &amp; Services</a> 
            <span></span>
		
        <li class="contact_links ">
        	<a href="contact.jsp">Contact</a> <span></span>
        	
        </li>
      </ul>

	
	</div>
    <br class="clear" />
</div>
<div id="content">
  <div id="content_cen">
    <div id="content_sup" class="head_pad">
      <div id="welcom_pan">
        <h2><span>MCUBE</span> Services</h2>
        
      </div>
      <div id="service_pan">
        <ul>
          <li>
            <h5> ENT</h5>
             <a href="ENT.jsp"><img src="../images/images.jpg" width="300"/></a>
          </li>
          <li>
            <h5>Neurology</h5>
            <a href="neurology.jsp"><img src="../images/n0.jpg"/></a>
          </li>
          <li>
            <h5>Gastroentro Surgery</h5>
            <a href="gastrosurgery.jsp"><img src="../images/g005.jpg" width="250"/></a>
          </li>
          <li>
            <h5>Endoscopic</h5>
                        <a href="endoscopic.jsp"><img src="../images/endoscopic.jpg"/></a>
          </li>
          <li>
            <h5>Cancer</h5>
             <a href="cancer.jsp"><img src="../images/cancer.jpg"/></a>
          </li>
          <li>
            <h5>Orthopadic</h5>
             <a href="ortho.jsp"><img src="../images/ortho2.jpg"/></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div id="foot">
  <div id="foot_cen">
<center>
    <a href="index.jsp">
<img src="../images/s2.jpeg" alt="" /></a>
    <ul>
     <li><a href="index.jsp">HOME</a></li>
     <li class="space">|</li>
     <li><a href="about.jsp">ABOUT</a></li>
     <li class="space">|</li>
     <li><a href="services.jsp">SERVICES</a></li>
     <li class="space">|</li>
     <li><a class="active" href="contact.jsp">CONTACT</a></li>
    </ul></center>
    <p>&copy; All Copyright Info Reserved</p>
  </div>
</div>
</body>
</html>
