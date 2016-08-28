<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.Admin"%>
<%@page import="org.hibernate.Query"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
   
   String _a = request.getParameter("a");
   String _b = request.getParameter("b");
   String _c = request.getParameter("c");
   HttpSession dev = request.getSession();
   String i = (String)dev.getAttribute("id");
    Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
   Query q = sess.createQuery("UPDATE Admin set AdminID = :ii , Password = :p , email = :e where id = :id");
   q.setString("id",i);
   q.setString("ii",_a);
   q.setString("p",_b);
   q.setString("e",_c);
   int result  = q.executeUpdate();
   
   t.commit();
   sess.close();
    
   
    %>
    <jsp:forward page="AdminDataView.jsp"></jsp:forward>
  </body>
</html>
