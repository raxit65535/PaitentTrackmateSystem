<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title> Claim Request</title>
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		
	</head>
	<body>
	<%@ include file="Temp.jsp" %>
	<center>
	<h3>
	<br/><br/><br/><br/><br/>
	<a href="insurance_table/iClaimDetails1.jsp" class="large button orange"> Processed Claim</a><br/><br/><br/><br/>
	
	
		<html:form action="/claimRequest">
			<input type="submit" value="View Claim Requests" class="large button orange"/>
		</html:form>
		</h3>
		</center>
		
		<div id="wrapper2">
		<%@ include file="footer.jsp" %>
		</div>
		
	</body>
</html>

