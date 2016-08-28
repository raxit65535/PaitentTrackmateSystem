<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Customer Data</title>
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	</head>
	<body>
	<div id="wrapper">
	<jsp:include page="Temp.jsp"></jsp:include>
	<center>
	
	<h3>
	<br/><br/><br/><br/><br/>
	<a href="insurance_table/insuranceTable.jsp" class="large button orange">Enter Data</a>
	<br/>
	<br/><br/>
	<br/>
	
	
		<html:form action="/viewDataEntryData">
			<input type="submit" value="DisplayData" class="large button orange"/>
		</html:form>
		</h3>
		</center>
		
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</body>
</html>

