<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>Doctor Home</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />

    <style type="text/css">

.leftNav
{
    width: 30%;
    height: 70%;
    float: left;
    margin-left: 50px;
   
}


</style>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
  </head>
  
  <body>
  <%
  
  HttpSession doctor = request.getSession();
  String uuid = (String)doctor.getAttribute("UUID");
  String name = (String)doctor.getAttribute("Name");
   String email = (String)doctor.getAttribute("Email");
   String designation = (String)doctor.getAttribute("Designation");
   String department = (String)doctor.getAttribute("Department");
   String contact = (String)doctor.getAttribute("Contact_No");
   String image =null;
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query q = sess.createQuery("From DoctorPOJO where UUID = :i");
  q.setString("i",uuid);
  
  List<DoctorPOJO> detail =(List<DoctorPOJO>)q.list();
	  		sess.getTransaction().commit();
	  		
	  		
	  		for(DoctorPOJO e : detail)
	  		{
	  			image = e.getImage();
	  		}
  
   %>

	<jsp:include page="Temp.jsp"></jsp:include>
	
  <div class="leftNav"> 
    
    <h2><br/><br/><br/></h2>

   <img src="../images/doctor/<%=image %>" width="115" height="128" style="margin-left = 20px"/>      
   
   <h2><br/><br/><br/><br/></h2>
   

   
   <a href="doctor/ImageInsert.jsp" class="large button blue">Upload Photograph</a><br/><br/>


    </div>
   
 <table  class="gridtable" style="margin-top :70px">
<tr>
<th>
Name
</th>
<td>
<%=name %>
</td>
</tr>

<tr>
<th>
Designation
</th>
<td>
<%=designation %>
</td>
</tr>

<tr>
<th>
Department
</th>
<td>
<%=department %>
</td>
</tr>

<tr>
<th>
Email
</th>
<td>
<%=email %>
</td>
</tr>

<tr>
<th>
Phone No
</th>
<td>
<%=contact%>
</td>
</tr>
</table>
<h2><br/></h2>
 <div id="wrapper4">
 
 <jsp:include page="footer.jsp"></jsp:include>
  </div>
  </body>
</html>
