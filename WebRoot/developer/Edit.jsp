<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.Admin"%>
<%@page import="org.hibernate.Query"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'Edit.jsp' starting page</title>
    
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
    String i= request.getQueryString();
    System.out.println(i);
    HttpSession dev = request.getSession();
    dev.setAttribute("id",i);
    Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
   Query q = sess.createQuery("From Admin where id = :id");
   q.setString("id",i);
    
   
   List<Admin> admin = (List<Admin>)q.list();
   String aid = null;
   String apass = null;
   String aem = null;
   for(Admin e : admin)
   {
   
   		aid = e.getAdminID();
   		apass = e.getPassword();	
   	
   }
     %>
     
     <form action="update.jsp">
     
     Admin id :<input type="text" id="a" value="<%=aid %>"/><br/><br/>
     
     Admin Password : <input type="text" id="b" value="<%=apass %>"/> <br/><br/>
     
      Admin Email : <input type="text" id="c" value="<%=aem %>"/> <br/><br/>
      
      <input type="submit"/>
     
     </form>
  </body>
</html>
