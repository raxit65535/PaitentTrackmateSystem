<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'EditDetailAction.jsp' starting page</title>
    
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
  
  String abc = request.getQueryString();
    if(abc==null)
  {
  %>
  <jsp:forward page="paitent/paitentHome.jsp"></jsp:forward>
  <%
  }
  
  String nm = request.getParameter("name");
  String em = request.getParameter("email");
  String phno = request.getParameter("phone");
  

  
  HttpSession paitent = request.getSession();
  String ii = (String)paitent.getAttribute("Insuranceno");
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query q = sess.createQuery("Update PaitentPOJO set name = :n , email = :e , phoneno =:p where insuranceno = :k");
  q.setString("n",nm);
  q.setString("e",em);
  q.setString("p",phno);
  q.setString("k",ii);
  
  int result = q.executeUpdate();
  
  t.commit();
  sess.close();
  
   %>
   <jsp:forward page="paitenthome.jsp"></jsp:forward>
  </body>
</html>
