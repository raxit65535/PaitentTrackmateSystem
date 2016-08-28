<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ForgotPassForm form</title>
		<link rel="stylesheet" href="styles.css" type="text/css" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		
			<script type="text/javascript">
            
            function rax()
            {
    			var e;
    			 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    			e= document.getElementById('email').value;
    			
    			if(e.length==0)
    			{
    				alert("Please Enter Email ID");
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
	
	<div id="header">
    	<div class="logo">&copy;Secure-Infosoft</div>
    	
      <div class="slogan1">Think Beyond Limits...!!</div>
       
        <div class="slogan2"></div>
       
        
    </div>
	
	
	<div id="stylized" class="myform">
		<form action="forgetPassword.jsp">
		<center><h1>Forgot passwd form<br/><br/></h1></center>	
		<label>AdminID
		<span class="samll">Enter Administratior ID</span>
		</label>
		<input type="text" id="adminid" name="adminid"/><br/>
		<br/><br/>
			<html:submit  onclick="return rax();" />
		<div class="spacer"></div>
			
		</form>
		</div>
		
		<div id="footer">
        <p>
        Copyright &copy; SecureInfosoft
        </p>
    </div>
	</body>
</html>

