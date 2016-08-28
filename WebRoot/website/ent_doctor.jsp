<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.raxit.hibernate.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ENT DOCTORS</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/smoothDivScroll.css" type="text/css" rel="Stylesheet">
<link href="../css/pageStyle.css" type="text/css" rel="Stylesheet"> 

<link href="../css/doctor.css" rel="stylesheet" type="text/css" media="all" />

<link href="../css/style2.css" rel="stylesheet" type="text/css" />
<SCRIPT src="../js/jquery.min.js" type=text/javascript></SCRIPT>
<link rel="stylesheet" href="../css/raxit.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="../css/heli.css" type="text/css" media="screen" />
<script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="../js/slide.js" type="text/javascript"></script>
<SCRIPT src="../js/jquery.ui.widget.js" type=text/javascript></SCRIPT>
<SCRIPT src="../js/jquery.smoothDivScroll-1.1-min.js" type=text/javascript></SCRIPT>


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
	
</div> <!--panel -->
 <div id="home">
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
        	<a href="contact.jsp">Contact</a> <span></span>
        	
        </li>
      </ul>
	
	</div>
    <br class="clear" />
</div></div>
      
    

<div id="content">
<center>
<table cellspacing="0" cellpadding="0" border="0" style="width:450px;"><tbody><tr><td class="normalmatter" height="20">
<a class="normalmatter" style="text-decoration:none;" href="ENT.jsp">
      Overview
    </a></td><td> &nbsp; </td>
	<td id="general_info" class="normalmatter">
	<a class="normalmatter" style="text-decoration:none;" href="ent_doctor.jsp">
      Doctors
    </a></td><td> &nbsp;</td></tr>
	<tr>
	<td valign="top" height="20">
	<div class="activeline">&nbsp;</div></td><td>&nbsp; </td>
	<td valign="top"><div class="normalline">&nbsp; </div></td>
	<td valign="top"> &nbsp; </td>
	<td valign="top">
	</td></tr></tbody></table></center>
	<div id="content_cen">
	
    <div id="content_sup" class="head_pad">
    
    
 <%
 String name = null;
 String designation = null;
 String email = null;
 String phone = null;
 String image = null;
 String dep = "ENT";
 Session sess = HibernateUtil.getSessionFactory().openSession();
 Transaction t = sess.beginTransaction();
 Query q = sess.createQuery("From DoctorPOJO where Department = :d");
 q.setString("d",dep);
 
 List<DoctorPOJO> list = (List<DoctorPOJO>)q.list();
 
 %>

<table>
 
 
 <%
 for(DoctorPOJO e : list)
 {
 	
 	name = e.getName();
 	email = e.getEmail();
 	phone = e.getContact_No();
 	image = e.getImage();
 	designation = e.getDesignation();
 	%>
 	<tr>
 	<td><img src="../images/doctor/<%=image %>" width="115" height="128"/></td>
 	<td><table>
 	<tr><td><%=name %></td></tr>
 	<tr><td><%=email %></td></tr>
 	<tr><td><%=phone %></td></tr>
 	<tr><td><%=designation %></td></tr>
 	</table></td>
 	</tr>
 
 	<%
 	
 }
 
 
  %>
 
    
 </table>   
	<div id="welcome_pan">
	
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
    <p>&copy; Your Copyright Rserved</p>
  </div>
</div>
  </body>
</html>
