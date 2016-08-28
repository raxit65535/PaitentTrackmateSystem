<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>Neurology</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/smoothDivScroll.css" type="text/css" rel="Stylesheet">
<link href="../css/pageStyle.css" type="text/css" rel="Stylesheet"> 

<SCRIPT src="../js/jquery.min.js" type=text/javascript></SCRIPT>
<SCRIPT src="../js/jquery.ui.widget.js" type=text/javascript></SCRIPT>
<SCRIPT src="../js/jquery.smoothDivScroll-1.1-min.js" type=text/javascript></SCRIPT>
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style2.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/raxit.css" type="text/css" media="screen" />
  <link rel="stylesheet" href="../css/heli.css" type="text/css" media="screen" />
<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="../js/slide.js" type="text/javascript"></script>
<script type="text/javascript">
		$(window).load(function() {
			$("div#makeMeScrollable").smoothDivScroll({ autoScroll: "onstart", 
														autoScrollDirection: "backandforth",
														autoScrollStep: 1,
														autoScrollInterval: 15,
														startAtElementId: "startAtMe",
														visibleHotSpots: "always" });

		});
	</script>
	
<style type="text/css">#makeMeScrollable {
	WIDTH: 732px; HEIGHT: 75px;
}
#makeMeScrollable DIV.scrollableArea  {
}
body {
	margin-top: 5px;
	margin-left: 0px;
	margin-right: 0px;
	margin-bottom: 5px;
}
</style>

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
	
</div> <!--panel --> <div id="home">
   <div id="top">
 
  
     <a href="index.jsp" class="logo">
<img src="../images/s2.jpeg" alt="" /></a>
<div class="top_right">

<!--social_icons end-->

</div>
<div class="mainmenu">
    <div class="wrapper">
    <ul class="menu" id="menu">
		        <li class="small_link ">
<a href="index.jsp">Home</a>
        	<a href="about.jsp">About</a> 
            <span></span>            
			            
        	
        </li>

		   
        <li >
        
        	<a href="services.jsp">Departments &amp; Services</a> 
            <span></span>      
		
        <li class="contact_links ">
        	<a href="contact.hjsp">Contact</a> <span></span>
        	
        </li>
      </ul>
	
	</div>
    <br class="clear" />
</div>      
    

<div id="content">
	<center>
<table cellspacing="0" cellpadding="0" border="0" style="width:450px;"><tbody><tr><td class="normalmatter" height="20">
<a class="normalmatter" style="text-decoration:none;" href="neurology.jsp">
      Overview
    </a></td><td> &nbsp; </td>
	<td id="general_info" class="normalmatter">
	<a class="normalmatter" style="text-decoration:none;" href="neu_doctor.jsp">
      Doctors
    </a></td><td> &nbsp; </td></tr>
	<tr>
	<td valign="top" height="20">
	<div class="activeline"> &nbsp;</div></td><td> &nbsp; </td>
	<td valign="top"><div class="normalline"> &nbsp; </div></td>
	<td valign="top"> &nbsp; </td>
	<td valign="top">
	</td></tr></tbody></table></center>

  <div id="content_cen">
    <div id="content_sup" class="head_pad">
      <div id="welcom_pan">
        <h2><span>Neuro</span> Surgery</h2>
<p>Diseases of the Brain, Spinal Cord and Nerves need special care. At Shalby we have the best infrastructure and highly trained doctors and paramedical staff to treat the most challenging neurological diseases.
 The department of Neurology is backed by Neurosurgery and Neuro Radiology; together these three departments deliver the most aggressive treatment in cases of Stroke.TREATMENT OF ALL BRAIN, SPINAL CORD & NERVE DISEASES
 
	Stroke Unit: Acute Stroke with medicines and interventions 	
	Paralyses of all types.
	Epilepsy, Refractory Epilepsy
	Headaches like migraine, tension & cluster headache.
	Parkinson's disease (slowing of daily activities)
	Dementia (loss of memory)
	Tingling & numbness in limbs
	Reduced or loss of sensation
	Sudden loss of vision

 </p>
      </div>
      <div id="service_pan">

  <div id="wrapper">
<div id="mainColumn">
  <div id="makeMeScrollable">
    <div class="scrollWrapper">
<div style="width: 936px;" class="scrollableArea">
<img src="../images/n1.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n2.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n3.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n4.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n5.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n6.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n7.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/> 
<img src="../images/n8.jpg" style="border: solid 1px; border-color:#000000;" height="75" width="115"/>


</div>
</div>
  </div></div></div>


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
