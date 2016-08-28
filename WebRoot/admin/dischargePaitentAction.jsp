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
  
    
    <title>My JSP 'dischargePaitentAction.jsp' starting page</title>
    
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
  
   
   String status = "1";
   String ino = request.getParameter("insuranceno");
   
   
    Session sess1 = HibernateUtil.getSessionFactory().openSession();
   Transaction t1 = sess1.beginTransaction();
   
   Query qq = sess1.createQuery("From PaitentPOJO where insuranceno = :k");
   qq.setString("k",ino);
   
   List<PaitentPOJO> list =(List<PaitentPOJO>)qq.list();
   
   
   if(list.size()>0)
   {
   
       for(PaitentPOJO e1 : list)
        {
   		      String foo = e1.getStatus();
   		      if(foo.equals("1"))
   		           {
   		           
   		           	%>
   		            <jsp:forward page="ALLFAILURE.jsp?e=Paitent you are trying to discharge is not Admited...!!"></jsp:forward>
   		            <%
   		           
                   }
   		       else
   		          {
   	              	  Session sess = HibernateUtil.getSessionFactory().openSession();
            Transaction t = sess.beginTransaction();
   
            Query q = sess.createQuery("UPDATE PaitentPOJO set Status = :s where insuranceno = :i");
            q.setString("s",status);
            q.setString("i",ino);
            int result = q.executeUpdate();
            sess.getTransaction().commit();
            sess.close();
            
            %>
             <jsp:forward page="AdminHome.jsp"></jsp:forward>
            <%
   		         }
   		
   }
   
   }
   
   else
   {
   %>
   <jsp:forward page="ALLFAILURE.jsp?e=Record Not Found...!!"></jsp:forward>
   <%
   }
  %>
 
   
   
  </body>
</html>
