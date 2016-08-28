<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ImgattemptForm form</title>
	</head>
	<body>
		<html:form action="/imgattempt"> 
			  Name : <input type="text" name="name" id="name" size="30"/> <br/> <br/>
	          <html:file property="content"/> <br/> <br/>
               
		
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

