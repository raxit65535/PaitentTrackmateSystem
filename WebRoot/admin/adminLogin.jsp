<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 

	<%  
	//String s1 = request.getParameter("e"); 
	String s2 = request.getQueryString();
	String rk = "7405098120";
	System.out.println(s2);
	//HttpSession admin = request.getSession();
	//admin.setAttribute("URL",s1);
	//String attrib = (String)admin.getAttribute("URL");
	  if(!s2.equals(rk))
	  {
	  %>
	  <jsp:forward page="../danger.html"></jsp:forward>
	  <%
	  }
	   %>
	  
	   
<html>
<head>
  	<title>Admin</title>
  	<meta name="description" content="Demo of a Sliding Login Panel using jQuery 1.3.2" />
  	<meta name="keywords" content="jquery, sliding, toggle, slideUp, slideDown, login, login form, register" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />	

	<!-- stylesheets -->
  	<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="css/slide.css" type="text/css" media="screen" />
	
  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="js/pngfix/supersleight-min.js"></script>
	<![endif]-->
	 
    <!-- jQuery - the core -->
	<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<!-- Sliding effect -->
	<script src="js/slide.js" type="text/javascript"></script>

</head>

<body>
<!-- Panel -->
<div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<h1>Welcome to Web-Kreation</h1>
				<h2>Sliding login panel Demo with jQuery</h2>		
				<p class="grey">You can put anything you want in this sliding panel: videos, audio, images, forms... The only limit is your imagination!</p>
				<h2>Download</h2>
				<p class="grey">To download this script go back to <a href="http://web-kreation.com/index.php/tutorials/nice-clean-sliding-login-panel-built-with-jquery" title="Download">article &raquo;</a></p>
			</div>
			<div class="left">
				<!-- Login Form -->
				<form action="../adminLogin.do"  class="clearfix" method="post">
				
					<h1>Admin Login</h1>
					<label class="grey" for="log">ID:</label>
					<input class="field" type="text" name="adminloginid" id="adminloginid" value="" size="23" />
					<label class="grey" for="pwd">Password:</label>
					<input class="field" type="password" name="adminpasswd" id="adminpasswd" size="23" />
	            	<label><input name="rememberme" id="rememberme" type="checkbox" checked="checked" value="forever" /> &nbsp;Remember me</label>
        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					
				</form>
			</div>
			<div class="left right">			
				<!-- Register Form -->
				<form action="LOGINFAILURE.jsp?e=Please Contact the Developer For Password" method="post">
					<a class="lost-pwd" href="#">Lost your password?</a>
					<br/>
					<input type="submit" name="submit" value="Help" class="bt_register" />
				</form>
			</div>
		</div>
</div> <!-- /login -->	

	<!-- The tab on top -->	
	<div class="tab">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<li>Hello Administrator!</li>
			<li class="sep">|</li>
			<li id="toggle">
				<a id="open" class="open" href="#">Log In </a>
				<a id="close" style="display: none;" class="close" href="#">Close Panel</a>			
			</li>
			<li class="right">&nbsp;</li>
		</ul> 
	</div> <!-- / top -->
	
</div> <!--panel -->

    
</body>
</html>


