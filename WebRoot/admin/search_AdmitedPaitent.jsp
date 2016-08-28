<%@ page language="java" pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
 
<html> 
	<head>
		<title>Search AdmitedPaitent</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
		
		<link href="displaytag.css" rel="stylesheet" type="text/css" />
		
		
		


	</head>
	<body>
	
	<%@ include file="Temp.jsp"%>
		   
		   <div id="search">
		<html:form action="/search_AdmitedPaitent">
		
		<select name="search" style="padding:4px 2px; border:solid 1px #aacfe4;">
			<option value="..."   >...</option>
			<option value="Admited">Admited</option>
			<option value="Name">Name</option>
			<option value="Email">Email</option>
			<option value="Insuranceno">Insuranceno</option>
			<option value="DOB">DOB</option>
			<option value="Policy">Policy</option>
			<option value="Gender">Gender</option>
			<option value="Phoneno">Phoneno</option>
			
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Value : <input type="text" id="value" name="value" style="padding:4px 2px; border:solid 1px #aacfe4;" />
		
			<html:submit value="Search" styleClass="small button orange"/>
		</html:form>
		
		
		<br/><br/><br/><br/><br/>
		</div>
		
		
	<div  id="dp">
	 <display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>Admited Paitent Details</h3></display:caption>
	<display:column property="id" title="id" sortable="true"/>
	<display:column property="name" title="Name" sortable="true" />
	<display:column property="email" title="Email" sortable="true"/>
	<display:column property="phoneno" title="Phoneno" sortable="true"/>
	<display:column property="gender" title="Gender" sortable="true"/>
	<display:column property="insuranceno" title="InsuranceNo" sortable="true"/>
	<display:column property="policy" title="Policy" sortable="true"/>
	<display:column property="dob" title="DOB" sortable="true"/>
	<display:column property="idproof" title="IDProof" sortable="true"/>
	<display:column property="value" title="Value" sortable="true"/>
	<display:column property="status" title="AdmitDate" sortable="true"/>
	
    <display:setProperty name="export.excel.filename" value="InsuranceDetails.xls"/>
    <display:setProperty name="export.pdf.filename" value="InsuranceDetails.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
            
            
  </display:table></div><br>
		
		<div id="wrapper2">
  <br/>
 <%@ include file="footer.jsp" %>
 </div>
	</body>
</html>

