<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<html> 
	<head>
		<title>JSP for Search_appointmentHistoryForm form</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
		
		<link href="displaytag.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
	<br/><br/><br/>
	<%@ include file="Temp.jsp"%>
		   
		   <div id="search">
		<html:form action="/search_appointmentHistory">
		
		<select name="search" style="padding:4px 2px; border:solid 1px #aacfe4;">
			<option value="..."   >...</option>
			<option value="Date">AppointmentDate</option>
			<option value="Time">AppointmentTime</option>
			<option value="Doctor">Doctor</option>
			<option value="Department">Department</option>
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Value : <input type="text" id="value" name="value" style="padding:4px 2px; border:solid 1px #aacfe4;"/>
			<html:submit value="search" styleClass="small button black"/>
		</html:form>
		
		<br/><br/><br/><br/><br/>
		</div>
		
	<div  id="dp">	
	
	<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>My Appointment History</h3></display:caption>
	<display:column property="id" title="ID" sortable="true"/>
	<display:column property="insuranceno" title="InsuranceNo" sortable="true"/>
	<display:column property="doctorname" title="Doctor" sortable="true" />
	<display:column property="department" title="Department" sortable="true"/>
	<display:column property="date" title="Date" sortable="true"/>
    <display:column property="time" title="Time" sortable="true"/>
    <display:setProperty name="export.excel.filename" value="InsuranceDetails.xls"/>
    <display:setProperty name="export.pdf.filename" value="InsuranceDetails.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
    
    </display:table></div><br/>
		
	</body>
	<div id="wrapper2">
  <br/><br/><br/>
 <%@ include file="footer.jsp" %>
 </div>
</html>

