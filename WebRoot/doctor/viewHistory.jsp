<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>MyHistory</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
	</head>
	<body>
	<jsp:include page="Temp.jsp"></jsp:include>
	
 <center>
 <h3>
 <br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<html:form action="/viewHistory">
			<html:submit value="ViewHistory" styleClass="large button green"/>
		</html:form>
		</h3>
		</center>
		
		<div id="wrapper2">
 <jsp:include page="footer.jsp"></jsp:include>
  </div>
	</body>
</html>

