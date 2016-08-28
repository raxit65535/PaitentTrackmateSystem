<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page  import="java.security.MessageDigest"%>
<%@ page  import="com.sanjivni.struts.action.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'resetPassAction.jsp' starting page</title>
    
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
   String code =(String)request.getSession().getAttribute("Code");
   String p1= null;
   String p2 = null;
   String f1 = request.getParameter("newpass");
   String f2 = request.getParameter("cnpass");
   
   try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=f1;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		p1=sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		  try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=f2;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		p2=sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		
		Query q = sess.createQuery("Update Admin set Password = :p where uuid = :u");
		q.setString("p",f2);
		q.setString("u",code);
		int result = q.executeUpdate();
		t.commit();
		sess.close();
   
    %>
    <jsp:forward page="insuranceLogin.jsp?7405098120"></jsp:forward>
  </body>
</html>
