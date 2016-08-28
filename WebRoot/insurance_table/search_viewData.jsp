<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>


<html> 
	<head>
	
		<title>JSP for Search_viewDataForm form</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
		<link href="displaytag.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@ include file="Temp.jsp"%>
		<div id="dark">
		<html:form action="/search_viewData"> 
		
			<select name="search" style="padding:4px 2px; border:solid 1px #aacfe4;">
			<option value="..."   >...</option>
			<option value="Insuranceno">InsuranceNo</option>
			<option value="Name">Name</option>
			<option value="Email">Email</option>
			<option value="Policy">Policy</option>
			<option value="Gender">Gender</option>
			<option value="Phoneno">Phoneno</option>
			
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Value : <input type="text" id="value" name="value" style="padding:4px 2px; border:solid 1px #aacfe4;"/>
			<input type="submit" value="Search" class="small button orange" />
			
		</html:form>
		</div>
		
	
	<div  id="dp">
		 <display:table  id="data" name="sessionScope.data"   requestURI="/viewDataEntryData.do"  pagesize="5"  export="true" >
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
	<display:column  title="Edit"  sortable="true"  media="html"><a href="insurance_table/dataEdit.jsp?${data.id}" >Edit</a> </display:column>
    <display:column  title="Delete"  sortable="true"  media="html"><a href="insurance_table/deleteData.jsp?${data.id}" >Delete </a></display:column>
   
    <display:setProperty name="export.excel.filename" value="ActorDetails.xls"/>
            <display:setProperty name="export.pdf.filename" value="ActorDetails.pdf"/>
            <display:setProperty name="export.pdf" value="true" />
            
  </display:table></div><br> 
  
 <div id="wrapper2">
 <%@ include file="footer.jsp" %>
 </div>
		
	</body>
</html>

