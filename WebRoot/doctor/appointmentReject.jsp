<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Appointment Reject</title>
    
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
   String _id = request.getQueryString();
   
   Session sess = HibernateUtil.getSessionFactory().openSession();
   Transaction t = sess.beginTransaction();
   
   Query q = sess.createQuery("DELETE from AppointmentsPOJO where id = :i");
   q.setString("i",_id);
   int result = q.executeUpdate();
   t.commit();
   sess.close();
   
    %>
    <jsp:forward page="search_AppointmentRequest.jsp"></jsp:forward>
  </body>
</html>
