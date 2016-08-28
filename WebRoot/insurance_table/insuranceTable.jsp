<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>DataEntry</title>

<link rel="stylesheet" href="../css/form.css" type="text/css" />
<link rel="stylesheet" href="css/search.css" type="text/css" />



		
<link rel="stylesheet" href="../datepicker/jquery-ui.css" />  

  
  

  
        <script src="../datepicker/jquery-1.9.1.js"></script>
         <script src="../datepicker/jquery-ui.js"></script>
         
        
         
        <script>
  $(function() {
    $( "#dob" ).datepicker({
      changeMonth: true,
	  yearRange: '1960:2013',
      changeYear: true,
      dateFormat: 'dd-mm-yy' 
	  
    });
  });
  </script>  
  
          <script>
  $(function() {
    $( "#expdate" ).datepicker({
      changeMonth: true,
	  yearRange: '2013:2025',
      changeYear: true,
      dateFormat: 'dd-mm-yy' 
	  
    });
  });
  </script>
  

<script type="text/javascript">
            
            function rax()
            {
            
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            var phoneno = /^\d{10}$/;
            var insuranceno = /^\d{13}$/;
             var nm,em,ph,g,e,dob,pol,addr,f,idp,g,val,ino,exp;
             
             nm = document.getElementById('name').value;
             em = document.getElementById('email').value;
             ph = document.getElementById('phoneno').value;
             e = document.getElementById('gender');
    	     g = e.options[e.selectedIndex].value;
    	     dob =document.getElementById('dob').value;	
    	   
    		addr = document.getElementById('address').value;
    		g = document.getElementById('idproof');
    		idp = g.options[g.selectedIndex].value;
    		val = document.getElementById('value').value;
    	    ino = document.getElementById('insuranceno').value;
    	    exp = document.getElementById('expdate').value;
    	    
    	    
    	    if(nm.length==0 || em.length==0 || ph.length==0 || g=="" || dob.length==0 || addr.length==0 || idp=="" | val.length==0 || ino.length==0 || exp.length==0)
    	    {
    	    	alert("Please Enter All Fields");
    	    	return false;
    	    }
    	    else if(!filter.test(em))
    	    {
    	    	alert("Enter Valid Email_ID");
    	    	return false;
    	    }
    	       else if(!ph.match(phoneno))
    	    {
    	    	alert("Enter Valid PhoneNo");
    	    	return false;
    	    }
    	     else if(!ino.match(insuranceno))
    	    {
    	    	alert("Insuranceno is not valid");
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
 
<center>
<%
HttpSession insurance = request.getSession();
String policy = (String)insurance.getAttribute("Admin");

 %>

	 <div id="stylized" class="myform">
		
		<html:form action="/insuranceTable" method="post" onsubmit="return k()"  > 
		<h1>Customer DataEntry</h1><br/><br/><br/>
		
		<input type="hidden" value="<%=policy %>" id="policy" name="policy"/>
		
		<label>Name(Full/Capital)
		<span class="small">Customer Name</span></label>
	    <input type="text" name="name" id="name" size="30"/> <br/> <br/>
	   
	   <label>Email      
	   <span class="small">Customer Email</span></label>              
       <input type="text" name="email" id="email" size="30"/><br/><br/>
      
      <label>PhoneNo      
	  <span class="small">Customer PhoneNo</span></label> 
      <input type="text" name="phoneno" id="phoneno" size="30"/> <br/> <br/>
      
      <label>Address      
	  <span class="small">Customer Address</span></label> 
      <textarea rows="4" cols="23" id="address" name="address" ></textarea><br/><br/>
      
      <label>Gender      
		<span class="small">Customer Gender</span></label> 
      <select name="gender" id="gender">
			<option value=""   ></option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			<option value="Other">other</option>
		</select><br/><br/>
		
		<label>Date of Birth      
		<span class="small">Customer DOB</span></label> 
		<input type="text" name="dob" id="dob"/><br/><br/>
        
    
		    
       
        
        <label>ID-Proof      
		<span class="small">Customer Identitiy</span></label>            
        <select name="idproof" id="idproof">
			<option value=""   ></option>
			<option value="VotingCard">VotingCard</option>
			<option value="Licence">Licence</option>
			<option value="Passport">Passport</option>
			<option value="PanCard">PanCard</option>
		</select><br/><br/>
		
		
		<label>ID-Number
		<span class="small">Id proof No.</span>
		</label>
		<input type="text" name="value" id="value"/><br/><br/>
		
		
      
      <label>InsuranceNo      
		<span class="small">Customer InsuranceNo</span></label>                 
	  <input type="text" name="insuranceno" id="insuranceno" size="30"/> <br/> <br/>
	  
	  <label>Expire-Date      
		<span class="small">Expdate of insurance</span></label> 	 
	  <input type="text" name="expdate" id="expdate" size="30"/> <br/> <br/><br/><br/>
			
			
		<center><input type="submit" value="Insert" onclick="return rax();" class="large button blue" style="margin-left: 90px"></input></center>
			
			<div class="spacer"></div>
		</html:form>
	</div>	
	</center>
	
	<div id="wrapper6">
	<%@ include file="footer.jsp" %>
	</div>
	</body>
</html>

