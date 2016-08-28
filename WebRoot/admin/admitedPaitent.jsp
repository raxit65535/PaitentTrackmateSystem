<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Paitent</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	</head>
	<body>
	<%@ include file="Temp.jsp" %>
	<center>
	
	
	
	<h3>
	<br/><br/><br/><br/><br/><br/>
	<a href="admin/AdmitPaitent.jsp" class="large button orange">Admit Paitent</a><br/><br/><br/>
	
	<a href="admin/dischargePaitent.jsp" class="large button orange">Discharge Paitent</a><br/><br/><br/>
	
		
		<html:form action="/admitedPaitent">
			<html:submit  value="View adminted Paitents"  styleClass="large button orange" />
		</html:form>
	</h3>
	</center>
	
	<div id="wrapper4">
 <%@ include file="footer.jsp" %>
 </div>
	</body>
</html>

