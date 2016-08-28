<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Admit Paitent</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="../css/form.css" type="text/css" />
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />

 <script type="text/javascript">
            
            function rax()
            {
    			var ino = document.getElementById('insuranceno').value;
    			
    			if(ino.length==0)
    			{
    				alert("Please Enter InsuranceNo");
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
   <form action="admin/AdmitPaitentAction.jsp">
   
   <label>InsuranceNo :
   <span class="small">Paitent's InsuranceNo :</span>
   </label>
    <input type="text" id="insuranceno" name="insuranceno"><br/><br/>
   <input type="submit"  onclick="return rax();" value="Admit" class="large button blue" style="margin-left: 90px"/>
   <div class="spacer"></div>
   </form>
   </div>
   
   <div id="wrapper2">
 <%@ include file="footer.jsp" %>
 </div>
   
  </body>
</html>
