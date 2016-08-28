<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Rejected Claims</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	</head>
	<body>
	<%@ include file="Temp.jsp" %>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<center style="margin-top:150px">
		<html:form action="/iClaimDetails2">
		
			<input type="submit" value="View Rejected Claims" class="large button orange"/>
		</html:form>
		</center>
		
		<div id="wrapper2">
		<%@ include file="footer.jsp" %>
		</div>
	</body>
</html>

