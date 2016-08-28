<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query" %>
<%@page import="com.sanjivni.doctor.*" %>
<%@page import="com.sanjivni.mail.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>Accept</title>
    
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
    String _id = request.getQueryString();
    String to = null;
    String status="IACCEPT";
    Session sess =HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    Query q = sess.createQuery("UPDATE PrescriptionPOJO set status = :n  where id='"+_id+"'");
    q.setString("n",status);  
    
    int row=q.executeUpdate();
	System.out.println("Number of row updated "+row);
    sess.getTransaction().commit();
    
    
    
    
    Session sess1 = HibernateUtil.getSessionFactory().openSession();
 			Transaction t1 = sess1.beginTransaction();
		  	
	  		Query q1  =	sess1.createQuery("from PrescriptionPOJO where  id = :i");
	  		q1.setString("i", _id);
	  	
	  		
	  		List<PrescriptionPOJO> detail =(List<PrescriptionPOJO>)q1.list();
		
	  		t1.commit();
	  		 
	  		 
	 		
	 		for(PrescriptionPOJO e1 : detail)
	 		{
	 				to = e1.getEmail();
	 				System.out.println(to); 	
	 		}
    
    
    Mail m = new Mail();
			
			m.setTo(to);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("Congrats..!!");
			m.setMessage("Hello....Your Claim is been approved by Insurance Company...For Further Detalis Contact Hospital's Medical Officer and InsuranceCompany");
			to = m.getTo();
			m.setFrom("Sanjivni-Helth-Care");
			
			int result;


			result = m.sendMail();


			if(result == 0)
			{
			   
			 System.out.println(" Mail Successfully Sent to "+to);
			 %>
			<jsp:forward page="claimRequest.jsp"></jsp:forward>
			 <%
			}
			else
			{
			
			 %>
			 <jsp:forward page="ALLFAILURE.jsp?e=Error in sending Mail....Check Your Internet Connection"></jsp:forward>
			 <%
			
			}
    
     
     %>
     
  </body>
</html>
