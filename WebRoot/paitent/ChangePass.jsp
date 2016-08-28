<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>Change Password</title>
    
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
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	

  
  <script type="text/javascript">
            
            function rax()
            {
    			var ol = document.getElementById('oldpass').value;
    			var ne = document.getElementById('newpass').value;
    			
    			if(ol.length ==0 || ne.length ==0)
    			{
    				alert("Please Enter all fields");
    				return false;
    			}
    			else if(ne.length<5)
    			{
    				alert("Please choose more than 5 charactor for new password");
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
 
  
   <%@ include file="Temp.jsp"%>
   
   
   <div id="stylized" class="myform">
   
    <form action="paitent/ChangePassAction.jsp">
    
    
    <center><h1>Change Password Form<br/><br/><br/></h1></center>
    
    
    <label>Password 
    <span class="small">Current passwor</span>
    </label>
    <input type="password" id="oldpass" name="oldpass"/>
    
    <label>New Password 
    <span class="small">New passwor</span>
    </label>
    <input type="password" id="newpass" name="newpass"/>
    
    <input type="submit"   onclick="return rax();" value="Reset" class="large button black" style="margin-left: 90px"/>
    
    </form>
    <div class="spacer"></div>
    </div>
    <h2><br/><br/></h2>
  </body>
  
  <div id="wrapper6">
  <br/>
 <%@ include file="footer.jsp"  %>
 </div>
</html>
