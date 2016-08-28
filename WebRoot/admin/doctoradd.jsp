<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Doctor add</title>
		<link rel="stylesheet" href="../css/form.css" type="text/css" />
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
	<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	
	<script type="text/javascript">
            
            function rax()
            {
            	
            	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                var phoneno = /^\d{10}$/; 
    		    var n = document.getElementById('name').value;
    			var des = document.getElementById('designation').value;
    			var em = document.getElementById('email').value;
    			var p = document.getElementById('contactno').value;
    			var e = document.getElementById('department');
    			var depart = e.options[e.selectedIndex].value;
    			
    			
    			if(n.length==0 || des.length == 0 || e.length==0 || p.length==0 || depart=="")
    			{
    				alert("Please Enter All Fields");
    				return false;
    			}
    			else if(!p.match(phoneno))
    			{
    				alert("Enter Valid phoneno");
    				return false;
    			}
    			else if(!filter.test(em))
    			{
    				alert("Enter Valid Email");
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
		<html:form action="/doctoradd">
		
		<h1>Docter Add Form</h1><br/><br/><br/>
		 <label>Name
		 <span class="small">Doctor Name</span>
		 </label>
		 <input type="text" name="name" id="name" size="30"/> <br/> <br/>
	  
	  <label>Department
		 <span class="small">Doctor's Department</span>
		 </label> 
		 <select name="department" id="department">
			<option value=""></option>
			<option value="ENT">ENT</option>
			<option value="Gastrology">Gastrology</option>
			<option value="Orthopadic">Orthopadic</option>
			<option value="Cancer">Cancer</option>
			<option value="Endoscopic">Endoscopic</option>
			<option value="Neurology">Neurology</option>
		</select><br/><br/>
    
     <label>EmailID
		 <span class="small">Doctor's Email</span>
		 </label>  
		 <input type="text" name="email" id="email" size="30"/> <br/> <br/>	 
	  
	  <label>Designation
		 <span class="small">Doctor's Designation</span>
		 </label>  
		 <input type="text" name="designation" id="designation" size="30"/> <br/> <br/>
	  
	   <label>PhoneNo
		 <span class="small">Doctor's ContactNo</span>
		 </label>  
		 <input type="text" name="contactno" id="contactno" size="30"/> <br/> <br/>
	  
			<input type="submit"  onclick="return rax();"  style="margin-left: 90px"  value="Insert" class="large button black"/>
			
			 <div class="spacer"></div>
		</html:form>
		</div>
		
		
		<div id="wrapper2">
 <%@ include file="footer.jsp" %>
 </div>
	</body>
</html>

