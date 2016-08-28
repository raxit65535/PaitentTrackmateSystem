<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.sanjivni.struts.action.CheckAppointmentAvailability"%>
<%@page import="com.raxit.hibernate.AppointmentsPOJO"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>checkAvailability</title>
    
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
   
   HttpSession paitent = request.getSession();
   String _department = (String)paitent.getAttribute("department");
   String _name = (String)paitent.getAttribute("Name");
	String _email = (String)paitent.getAttribute("Email");
	String _insuranceno = (String)paitent.getAttribute("Insuranceno");
   
   String _doctoruuid = request.getParameter("appointment2");
   String _doctorname = null;
   Session sesss = HibernateUtil.getSessionFactory().openSession();
   Transaction tt = sesss.beginTransaction();
   Query qq = sesss.createQuery("from DoctorPOJO where UUID = :u");
   qq.setString("u",_doctoruuid);
   
 List<DoctorPOJO> check = (List<DoctorPOJO>)qq.list();
 Iterator itr = check.iterator();
 while(itr.hasNext())
 {
 	DoctorPOJO dc = (DoctorPOJO)itr.next();
 	 _doctorname = dc.getName();
 }
   
   String _time = request.getParameter("Time");
   String _date = request.getParameter("date");
   System.out.println(_doctorname);
   System.out.println(_doctoruuid);
   System.out.println(_department);
   System.out.println(_date);
   System.out.println(_time);
   
   
   boolean rax;
   
   CheckAppointmentAvailability chk = new CheckAppointmentAvailability();
   rax = chk.check(_doctoruuid,_department,_time, _date); 
   
   if(rax == false)
   {
   %>
   <jsp:forward page="Afailure.jsp"/>
  <%
   }
   out.println("you are in success");
   int s=0;
    Session sess = HibernateUtil.getSessionFactory().openSession();
   Transaction t = sess.beginTransaction();
   AppointmentsPOJO ap = new AppointmentsPOJO();
   ap.setDoctorname(_doctorname);
   ap.setDepartment(_department);
   ap.setTime(_time);
   ap.setDate(_date);
   ap.setName(_name);
   ap.setEmail(_email);
   ap.setDoctoruuid(_doctoruuid);
   ap.setInsuranceno(_insuranceno);
   ap.setStatus("0");
   s = (Integer)sess.save(ap);
   t.commit();
   sess.close();
   if(s>0)
   {
   %>
   <jsp:forward page="Asuccess.jsp"></jsp:forward>
   <%
   
   }
     %>
     <jsp:forward page="Afailure.jsp"></jsp:forward>
  </body>
</html>
