<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for DoctorScheduleForm form</title>
	<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
	<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
	</head>
	<body>
	
	<%@ include file="Temp.jsp" %>
	<center>
	
	
	
	<h3>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<html:form action="/doctorSchedule">
			<html:submit value="View Schedule" styleClass="large button green"/>
		</html:form>
		</h3>
		</center>
	</body>
	<div id="wrapper4">
 <%@ include file="footer.jsp" %>
 </div>
</html>

