<%@ page language="java" pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>SearchAdmited Paitent</title>
    
	<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		
		
		<link href="displaytag.css" rel="stylesheet" type="text/css" />


  </head>
  
  <body>
   <%@ include file="Temp.jsp"%>
  
   <div  id="dp">
	<display:table  id="data" name="sessionScope.data"  pagesize="10" export="true" >
	<display:caption><h3>Admited Paitent  Details</h3></display:caption>
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
  
  <div id="wrapper3">
  <br/>
 <%@ include file="footer.jsp" %>
 </div>
  </body>
</html>
