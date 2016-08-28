<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="com.sanjivni.struts.action.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>Change Password </title>
    
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
  HttpSession paitent = request.getSession();
  String ino = (String)paitent.getAttribute("Insuranceno");
  String old = request.getParameter("oldpass");
  String ne= request.getParameter("newpass");
  
  String f1 = null;
  String f2 = null;
  String _old = null;
  
  
  try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=old;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		f1=sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
  
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query  q = sess.createQuery("From PaitentPOJO where insuranceno = :i");
  q.setString("i",ino);
  
  List<PaitentPOJO> p = (List<PaitentPOJO>)q.list();
  
  for(PaitentPOJO e : p)
  {
  		_old = e.getPass();	
  }
  
  if(f1.equals(_old))
  {
  
  	try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=ne;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		f2=sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
  
  		Session sess1 = HibernateUtil.getSessionFactory().openSession();
  Transaction t1 = sess1.beginTransaction();
  Query qq = sess1.createQuery("Update PaitentPOJO set pass = :p , cpass= :cp where insuranceno = :i");
  qq.setString("p",f2);
  qq.setString("cp",f2);
  qq.setString("i",ino);
  
  int result = qq.executeUpdate();
  t1.commit();
  sess1.close();
  %>
  <jsp:forward page="paitenthome.jsp"></jsp:forward>
  <%
  	
  	
  }
  else 
  {
  	%>
  	<jsp:forward page="ALLFAILURE.jsp?e=Your old password doesn't match....!!!"></jsp:forward>
  	<%
  }
    
  
   %>
  </body>
</html>
