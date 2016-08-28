<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@page import="com.sanjivni.mail.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>Doctor Password</title>
    
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
   String _uuid = null;
   String to = request.getQueryString();
   
 			Session sess = HibernateUtil.getSessionFactory().openSession();
 			Transaction t = sess.beginTransaction();
		  	
	  		Query q  =	sess.createQuery("from DoctorPOJO where  email = :e");
	  		q.setString("e", to);
	  	
	  		
	  		List<DoctorPOJO> detail =(List<DoctorPOJO>)q.list();
		
	  		t.commit();
	  		 
	  		 
	 		
	 		for(DoctorPOJO e1 : detail)
	 		{
	 			_uuid = e1.getUUID();
	 			System.out.println(_uuid);	 	
	 		}
	 		Mail m = new Mail();
			
			m.setTo(to);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("Doctor Password");
			m.setMessage("Your Password   : "+_uuid);
			to = m.getTo();
			m.setFrom("Sanjivni-Helth-Care");
			
			int result;


			result = m.sendMail();


			if(result == 0)
			{
			   
			 System.out.println(" Mail Successfully Sent to "+to);
			 %>
			 <jsp:forward page="displayHeli.jsp"></jsp:forward>
			 <%
			}
			else
			{
			
			 %>
			 <jsp:forward page="ALLFAILURE.jsp?e=Error in sending Mail....Check Your Internet Connection"></jsp:forward>
			 <%
			
			}
    %>
   
  </body>
</html>
