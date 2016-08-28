<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page  import="java.security.MessageDigest"%>
<%@ page  import="com.sanjivni.struts.action.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.UUID"%>
<%@page import="com.raxit.hibernate.*"%>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>My JSP 'AdmindataAction.jsp' starting page</title>
    
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
  String _id = request.getParameter("id");
  String _pass = request.getParameter("pass");
  String _emm = request.getParameter("email");
  String p = null;
  String uuid =null;
  UUID idOne = UUID.randomUUID();
		uuid = idOne.toString();
  
   try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input = _pass;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		p=sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
  
  
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Admin ob = new Admin();
  ob.setAdminID(_id);
  ob.setPassword(p);
  ob.setEmail(_emm);
  ob.setUuid(uuid);
 
 sess.save(ob);
 t.commit();
  sess.close();
  
  
   %>
   <jsp:forward page="AdminData.jsp"></jsp:forward>
  </body>
</html>
