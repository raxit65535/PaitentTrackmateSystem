<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.sanjivni.admin.DeleteDoctor"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>DeleteDoctor</title>
    
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
	
	String s1 = request.getQueryString(); 
	request.getSession().setAttribute("id",s1);
	String demo = (String)session.getAttribute("id");
	int id = Integer.parseInt(demo);
	
	DeleteDoctor ob1 = new DeleteDoctor();
	int status=ob1.deletDoctor(id);
	%>
	<jsp:forward page="displayHeli.jsp"></jsp:forward>
	<%
	%>
	
	   
   
  </body>
</html>
