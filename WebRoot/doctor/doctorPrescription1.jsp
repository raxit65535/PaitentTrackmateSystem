<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Prescription Step1</title>
	<link rel="stylesheet" href="../css/form.css" type="text/css" />
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />


<script type="text/javascript">
            
            function rax()
            {
    			var ino = document.getElementById('insuranceno').value;
    			if(ino.length==0)
    			{
    				alert("please Enter Paitent's InsuranceNo");
    				return false;
    			}
    			else
    			{
    				return true;
    			}
    	    	
    	    }
            
        </script>
  </head>
  
  <body>
  	
  <%@ include file="Temp.jsp" %>
 
   <div id="stylized" class="myform">
		<html:form action="/doctorPrescription1">
		<h2>Prescription Step-1<br/><br/></h2>
		
		<label>InsuranceNo
		<span class="small">Paitent's Insuranceno</span>
		</label>
		<input type="text" id="insuranceno" name="insuranceno"/>
			<html:submit value="Next" onclick="return rax();" styleClass="large button black" style="margin-left:90px"/>
			
			<div class="spacer"></div>
		</html:form>
		</div>
		
		
		
		
		
	</body>
	<div id="wrapper4">
 <%@ include file="footer.jsp" %>
 </div>
</html>

