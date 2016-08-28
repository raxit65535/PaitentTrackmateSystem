<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ForgotPassForm form</title>
		 <link rel="stylesheet" href="styles.css" type="text/css" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		
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
    			else if(!filter.test(e))
    			{
    				alert("Enter Valid Email ");
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
    	<div class="logo">Sanjivni Clinic</div>
    	
      <div class="slogan1">Provide Better Care</div>
       
        <div class="slogan2">with exellence</div>
       
        
    </div>
	
	<div id="stylized" class="myform">
		<html:form action="/forgotPass">
		<center><h1>Forgot passwd form<br/><br/></h1></center>	
		<label>Email
		<span class="samll">Enter Your Email_ID</span>
		</label>
		<input type="text" id="email_id" name="email_id"/><br/>
		<br/><br/>
			<html:submit styleClass="large button black"  onclick="return rax();" style="margin-left:90px" />
		<div class="spacer"></div>
			
		</html:form>
		</div>
		
		
		<div id="footer">
        <p>
       
        Copyright &copy; SecureInfosoft
        </p>
    </div>
	</body>
</html>

