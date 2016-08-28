<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'AdminData.jsp' starting page</title>
    
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
  <center>
  <br/><br/><br/><br/><br/><br/>
    <form action="AdmindataAction.jsp">
    
    AdminID  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" id="id" name="id" size="30"/><br/><br/>
    
    
    Admiin Password : <input type="text" id="pass" name="pass" size="30"/><br/><br/>
    
    Email : <input type="text" id="email" name="email"/>
    
   <input type="submit" value="Insert"/>
    
    </form>
    </center>
  </body>
</html>
