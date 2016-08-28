<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Query"%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'AdminDataView.jsp' starting page</title>
    
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
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query q = sess.createQuery("From Admin");
   List<Admin> yo = (List<Admin>)q.list();
   %>
   	<table border="1">
   		<tr>
   		<th>Id</th>
   		<th>Admin Id</th>
   		<th>Admin Password</th>
   		<th>email</th>
   		<th>uuid</th>
   		<th>Edit</th>
   		<th>Delete</th>
   		</tr>
   <%
   for(Admin e : yo)
   {
   			int ii = e.getId();
   			String i = e.getAdminID();
   			String ps = e.getPassword();
   			String em = e.getEmail();
   			String u = e.getUuid();
   			
   			%>
   			<tr>
   			<td><%=ii %></td>
   			<td><%=i %></td>
   			<td><%=ps %></td>
   			<td><%=em %></td>
   			<td><%=u %></td>
   			
   			<td><a href="developer/Edit.jsp?<%=e.getId() %>">Edit</a></td>
   			<td><a href="developer/Delet.jsp?<%=e.getId() %>">delete</a></td></tr>
   			<%
   
   }
   
    %>
    </table>
  </body>
</html>
