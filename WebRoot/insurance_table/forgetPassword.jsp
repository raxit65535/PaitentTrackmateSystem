<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.sanjivni.mail.*" %>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.raxit.hibernate.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>forgetPassword</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  String aid = request.getParameter("adminid");
  String to = null;
  String code = null;
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  Query q = sess.createQuery("From Admin where AdminID = :a");
  q.setString("a",aid);
  
  List<Admin> ad = (List<Admin>)q.list();
  
  if(ad.size()<=0)
  {
  	%>
  	<jsp:forward page="LOGINFAILURE.jsp?e=Record Not Found..!!!"></jsp:forward>
  	<%
  	
  }
  
  for(Admin e : ad)
  {
  	to = e.getEmail();
  	code = e.getUuid();
  }
  
  
  
  
  
  //String to = "engineerraxit@gmail.com";
    Mail m = new Mail();
			
			m.setTo(to);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("reSetPassword");
			m.setMessage("http://raxit:8080/PaitentTrackmateSystem/insurance_table/resetPass.jsp?" +code);
			to = m.getTo();
			m.setFrom("Sanjivni-Helth-Care");
			
			int result;


			result = m.sendMail();


			if(result == 0)
			{
			   
			 System.out.println(" Mail Successfully Sent to "+to);
			 %>
			 <jsp:forward page="adminLogin.jsp?7405098120"></jsp:forward>
			 <%
			 
			}
			
			
    
   %>
   <jsp:forward page="LOGINFAILURE.jsp?e=Error in sending mail.....Check your Internet Connection  !!!"></jsp:forward>
  </body>
</html>
