<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query" %>
<%@page import="com.sanjivni.mail.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>Appointment Accept</title>
    
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
    String status="1";
    Session sess =HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    Query q = sess.createQuery("UPDATE AppointmentsPOJO set status = :n  where id='"+_id+"'");
    q.setString("n",status);  
    
    int row=q.executeUpdate();
	
    sess.getTransaction().commit();
     if(row>0)
     {
     	String email = null;
     	String time = null;
     	String date =null;
     	Session sesss = HibernateUtil.getSessionFactory().openSession();
     	Transaction tt = sesss.beginTransaction();
     	
     	Query qq = sesss.createQuery("From AppointmentsPOJO where id = :i");
     	qq.setString("i",_id);
     	List<AppointmentsPOJO> a = (List<AppointmentsPOJO>)qq.list();
     	Iterator itr = a.iterator();
     	while(itr.hasNext())
     	{
     		AppointmentsPOJO aa = (AppointmentsPOJO)itr.next();
     		email = aa.getEmail();
     		time = aa.getTime();
     		date = aa.getDate();
     	}
     	
     	
     	 Mail m = new Mail();
			String sl ="------Time :";
			m.setTo(email);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("Appointment Conformation");
			m.setMessage("Your Appointment is conformed -----Date:"+date+sl +time);
		
			email = m.getTo();
			m.setFrom("Sanjivni-Helth-Care");
			
			int result;


			result = m.sendMail();


			if(result == 0)
			{
	%>
     
     <jsp:forward page="appointmentRequest.jsp"></jsp:forward>
  	
  	<%
			
			}
			%>
			<jsp:forward page="ALLFAILURE.jsp?e=Error in sending mail.....Check your Internet Connection"></jsp:forward>
			<%
     	
     	
     %>
     <jsp:forward page="appointmentRequest.jsp"></jsp:forward>
  	
  	<%
  	}
  	 %>
  	 <jsp:forward page="ALLFAILURE.jsp?e=Server is busy.....try after some time...Thank you...!!"></jsp:forward>
  </body>
</html>
