<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'AdmitPaitentAction.jsp' starting page</title>
    
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
   DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
   
   Date date = new Date();
   
   String admitdate = dateFormat.format(date);
   String ino = request.getParameter("insuranceno");
   
   System.out.println(admitdate);
   System.out.println(ino);
   
   Session sess1 = HibernateUtil.getSessionFactory().openSession();
   Transaction t1 = sess1.beginTransaction();
   
   Query q = sess1.createQuery("From PaitentPOJO where insuranceno = :k");
   q.setString("k",ino);
   
   List<PaitentPOJO> list =(List<PaitentPOJO>)q.list();
   
   
   if(list.size()>0)
   {
   
   for(PaitentPOJO e1 : list)
   {
   		String foo = e1.getStatus();
   		if(foo.equals("1"))
   		{
   			 Session sess = HibernateUtil.getSessionFactory().openSession();
             Transaction t = sess.beginTransaction();
   			 Query qq = sess.createQuery("UPDATE PaitentPOJO set Status = :s where insuranceno = :i");
             qq.setString("s",admitdate);
             qq.setString("i",ino);
             int result = qq.executeUpdate();
             sess.getTransaction().commit();
             sess.close();
             
             %>
              <jsp:forward page="AdminHome.jsp"></jsp:forward>
             
             <%
   		}
   		else
   		{
   		%>
   		<jsp:forward page="ALLFAILURE.jsp?e=Paitent is already Admited..!!"></jsp:forward>
   		<%
   		}
   		
   }
   
   }
   else
   {
   %>
   <jsp:forward page="ALLFAILURE.jsp?e=Record Not Found...!!!"></jsp:forward>
   <%
   }
  %>
 
         
   
  </body>
</html>
