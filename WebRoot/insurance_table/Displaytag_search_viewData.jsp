<%@ page language="java" pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Insurance Details</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		
	<link href="displaytag.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <%@ include file="Temp.jsp"%>
  <div id="dp">
   	 <display:table  id="data" name="sessionScope.data"  pagesize="5" export="true" >
	<display:caption><h3>Insurance Details</h3></display:caption>
	<display:column property="id" title="id" sortable="true"/>
	<display:column property="name" title="Name" sortable="true" />
	<display:column property="email" title="Email" sortable="true"/>
	<display:column property="phoneno" title="Phoneno" sortable="true"/>
	<display:column property="address" title="Address" sortable="true"/>
	<display:column property="gender" title="Gender" sortable="true"/>
	<display:column property="idProof" title="IDproof" sortable="true"/>
	<display:column property="proofvalue" title="ProofValue" sortable="true"/>
	<display:column property="insuranceno" title="InsuranceNo" sortable="true"/>
	<display:column property="policy" title="Policy" sortable="true"/>
	<display:column property="expireDate" title="ExpDate" sortable="true"/>
	<display:column  title="Edit"  sortable="true" media="html"><a href="insurance_table/dataEdit.jsp?${data.id}">Edit</a> </display:column>
    <display:column  title="Delete"  sortable="true" media="html"><a href="insurance_table/deleteData.jsp?${data.id}">Delete </a></display:column>
    <display:setProperty name="export.excel.filename" value="InsuranceDetails.xls"/>
    <display:setProperty name="export.pdf.filename" value="InsuranceDetails.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
            
            
  </display:table></div><br>
  
  <div id="wrapper3">
  <%@ include file="footer.jsp" %>
  </div>
  </body>
</html>
