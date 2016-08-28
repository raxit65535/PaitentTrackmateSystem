<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>PaitentLogin</title>
	

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<link rel="stylesheet" href="../css/form.css" type="text/css" />
<link rel="stylesheet" href="styles.css" type="text/css" />

		
		 <script type="text/javascript" lang="javascript">
            
             function b()
             {
                 var user = document.getElementById('loginid').value;
                 var pass = document.getElementById('passwd').value;
                 var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                  /*var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;*/
                 
                 if(user.length==0)
                     {
                         alert("Please Enter Username..");
                         return false;
                     }
                    else if(pass.length==0)
                    {
                        alert("Please Enter Password..");
                        return false;
                    }
                    
                        else if(reg.test(user)==false)
                            {
                              alert("only gmail is availvable in our service...please registor with gmailID");
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
	<div class="allContent">
        <div class="leftSidebar">
        	<div class="sidebarDoctor"><img src="images/login theam.jpg" alt="" /></div>
        	<h1>What we do!</h1>
            <p>
            	An extensive number of unique Flash Templates is at your service. All templates on our site were created specially for you! Our independent designers created flash professional templates. Also our templates are unique. It means you can use our flash templates to create your own site!<br />
                <span><a href="">see more</a></span><br /><br />
                Our studio offers a big choice of free flash templates categories for your business and personal needs. By using our unique products, you can create an excellent animated website and spend minimum time and money on it. Most of our templates are<br />
                <span><a href="">see more</a></span> 
            </p>
        </div></div>
        <div class="rightSidebar" >                
        

   
       	<div id="stylized" class="myform">	
	
<html:form action="/paitentLogin">
	<center><h1>Member Login<br/><br/></h1></center>
		<label>Email
		<span class="small">Enter EmailID</span>
		</label>
		<input class="field" type="text" name="loginid" id="loginid" value="" size="23" />
					
		<label>Password
		<span class="small">Enter Password</span>
		</label>
		<input class="field" type="password" name="passwd" id="passwd" size="23" />		
		
			
					
		<input type="submit" name="submit" value="Login" style="margin-left: 90px" onclick="return b();"/>
					
					
			<div class="spacer" style="margin-bottom: -300px"></div>		
		</html:form>
		
		<a href="forgotPass.jsp">forgot password ?</a>
		<a href="paitentRegistration.jsp">Register now</a>
		
		</div>
		
		 <h2><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></h2>
		 <h1>All website template is released under a Creative Commons Avttribution 2.5 License</h1>
     
       
  
       <br class="clearfloat" />
       
   
		<div id="footer">
        <p>
       
        Copyright &copy; SecureInfosoft
        </p>
    </div></div>
		
		
	</body>
</html>

