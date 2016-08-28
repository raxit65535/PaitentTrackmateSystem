<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Forward.jsp' starting page</title>
    
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
    String status="HACCEPT";
    Session sess =HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    Query q = sess.createQuery("UPDATE PrescriptionPOJO set status = :n  where id='"+_id+"'");
    q.setString("n",status);  
    
    int row=q.executeUpdate();
	System.out.println("Number of row updated "+row);
    sess.getTransaction().commit();
     
     %>
     <jsp:forward page="claimRequests.jsp"></jsp:forward>
  </body>
</html>
