<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="raxit.attempts.*"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'display.jsp' starting page</title>
    
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
  Session session1 = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session1.beginTransaction();
 Query q = session1.createQuery("from Bean");
 List<Bean> check = (List<Bean>)q.list();
		
		//InputStream img = null;
		for(Bean r : check)
		{
		%>
			<table>
			<tr>
			<td>
			<%=r.getName()%>
			</td>
			<td>
			<%
			
			Blob bl = r.getContent();
			int len = (int)bl.length();
			byte[] b = new byte[len];
			response.getOutputStream().write(b,0,len);
			response.getOutputStream().flush();
			%>
			</td>
			</tr>
			</table>
		<%
			
			
		}
  
  
   %>
  </body>
</html>
