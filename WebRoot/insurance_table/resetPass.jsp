<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Reset Password</title>
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
	<script type="text/javascript">
            
            function rax()
            {
    			var p1,p2;
    			p1 = document.getElementById('newpass').value;
	    		p2 = document.getElementById('cnpass').value;
	    		
	    		if(p1.length==0 || p2.length==0)
	    		{
	    			alert("Enter All Fields");
	    			return false;
	    		}
	    		else if(p1.length<5)
	    		{
	    			alert("Please Choose more than 5 charactor for password");
	    			return false;
	    		}
	    		else if(p1!=p2)
	    		{
	    			alert("password not match");
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
	<%  
	String s1 = request.getQueryString(); 
	    
	   //HttpSession sen = request.getSession(); 
	   //sen.setAttribute("Code",s1); 
	   request.getSession().setAttribute("Code",s1);
	   String code = (String)session.getAttribute("Code"); 
	   if(code==null) 
	   { 
	   %>
	   <jsp:forward page="insuranceLogin.jsp?7405098120"></jsp:forward>
<%
	 }
	     %>
	     <div id="stylized" class="myform">
		<form action="insurance_table/resetPassAction.jsp">
		
		<center><h1>Reset password<br/><br/></h1></center>
		
		<label>Password
		<span class="small">Level-1</span>	
		</label>
		<input type="password" name="newpass" id="newpass" size="30"/> <br/> <br/>
 
        <label>Conform-Password
		<span class="small">Level-2</span>	
		</label>
		<input type="password" name="cnpass" id="cnpass" size="30"/> <br/> <br/>			
      
		
			<input type="submit" onclick="return rax();"   value="Reset"/>
			
			<div class="spacer"></div>
		</form>
		
		</div>
	</body>
</html>

