<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>Cancer Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../css/raxit.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="../css/heli.css" type="text/css" media="screen" />
<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="../js/slide.js" type="text/javascript"></script>
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style2.css" rel="stylesheet" type="text/css" />

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
 

     <a href="index.jsp" class="logo">
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
<center>
<table cellspacing="0" cellpadding="0" border="0" style="width:450px;"><tbody><tr><td class="normalmatter" height="20">
<a class="normalmatter" style="text-decoration:none;" href="cancer.jsp">
      Overview
    </a></td><td>&nbsp; </td>
	<td id="general_info" class="normalmatter">
	<a class="normalmatter" style="text-decoration:none;" href="cancer_doctor.jsp">
      Doctors
    </a></td><td> &nbsp;</td></tr>
	<tr>
	<td valign="top" height="20">
	<div class="activeline">&nbsp;</div></td><td> &nbsp;</td>
	<td valign="top"><div class="normalline">&nbsp; </div></td>
	<td valign="top"> &nbsp;</td>
	<td valign="top">
	</td></tr></tbody></table></center>

  <div id="content_cen">
    <div id="content_sup" class="head_pad">
      <div id="welcom_pan">
        <h2><span>MCUBE</span> Services</h2>
        <p> Cancer is potentially curable if diagnosed and treated in early stages. Even in late stages where cure may not be possible patient can be treated to have meaningful life with disease. Correct diagnosis and management is of paramount importance.

The Centre for Cancer brings together the expertise within the hospital to provide comprehensive and coordinated care for patients with all types of cancers, including solid tumours and blood related diseases. We offer broad scope of cancer services, ranging from public education, screening and diagnosis, to treatment, pain management and palliative care.</p>
      </div>
      <div id="service_pan">
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
