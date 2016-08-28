<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.raxit.hibernate.*"  %>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'searchDoctorSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		
		
		<link href="displaytag.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
  <%@ include file="Temp.jsp"%>
  
   <div  id="dp">
    
	<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>Doctor Details</h3></display:caption>
	<display:column property="id" title="id" sortable="true"/>
	<display:column property="name" title="Name" sortable="true" />
	<display:column property="email" title="Email" sortable="true" />
	<display:column property="department" title="Department" sortable="true"/>
	<display:column property="designation" title="Designation" sortable="true"/>
	<display:column property="contact_No" title="Contact_no" sortable="true"/>
	<display:column  title="Edit"  sortable="true" media="html"><a href="admin/editDoct.jsp?${data.id}">Edit</a> </display:column>
    <display:column  title="Delete"  sortable="true" media="html"><a href="admin/deleteDoctor.jsp?${data.id}">Delete </a></display:column>
     <display:column  title="Password"  sortable="true" media="html"><a href="admin/doctorpass.jsp?${data.email}">Password </a></display:column>
    <display:setProperty name="export.excel.filename" value="DoctorDetails.xls"/>
    <display:setProperty name="export.pdf.filename" value="DoctorDetails.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
            
            
  </display:table></div><br>
		
		<div id="wrapper3">
  <br/>
 <%@ include file="footer.jsp" %>
 </div>
  </body>
</html>
