<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 


 
<html>
    <head>
        <title>Paitent Registration</title>
         <link rel="stylesheet" href="styles.css" type="text/css" />
         <link rel="stylesheet" href="../datepicker/jquery-ui.css" />    
        <link rel="stylesheet" href="../css/form.css" type="text/css" />
       
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
      
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
  
  <script type="text/javascript">
            
            function rax()
            {
            
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            var phoneno = /^\d{10}$/;
            var insuranceno = /^\d{13}$/;
             var nm,em,ph,gen,e,dob,pol,addr,f,idp,g,val,ino,exp,pas,cpas;
             
             nm = document.getElementById('name').value;
             em = document.getElementById('email').value;
             ph = document.getElementById('phoneno').value;
             e = document.getElementById('gender');
    	     gen = e.options[e.selectedIndex].value;
    	     dob =document.getElementById('dob').value;	
    	     f = document.getElementById('policy');
    	     pol = f.options[f.selectedIndex].value; 
    	     pas = document.getElementById('pass').value;
    	     cpas = document.getElementById('cpass').value;
    		g = document.getElementById('idproof');
    		idp = g.options[g.selectedIndex].value;
    		val = document.getElementById('value').value;
    	    ino = document.getElementById('insuranceno').value;
    	   
    	    
    	    
    	    if(nm.length==0 || em.length==0 || ph.length==0 || pas.length==0 || cpas.length==0 || gen=="" || dob.length==0 || idp=="" | val.length==0 || ino.length==0 || pol=="" )
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
    	    
    	    else if(pass.length<5)
    	    {
    	    	alert("Please Choose more than 5 charactor for password");
	    	    return false;
    	    }
    	    
    	    else if(pas!=cpas)
    	    {	
    	    	alert("Password doesnt match");
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
  <div id="header">
    	<div class="logo">Sanjivni Clinic</div>
    	<h2><br/><br/></h2>
      <div class="slogan1">Provide Better Care</div>
        <h2><br/><br/></h2>
        <div class="slogan2">with exellence</div>
       
        
    </div>

        
         <div id="stylized" class="myform">
         
        <form action="../paitentRegistration.do">
		
		<center><h1>Paitent Registration Form<br/><br/></h1></center>
		
		<label>Name(Full/Capital)
		<span class="small">Your Name</span></label>
		 <input type="text" name="name" id="name" size="30"/> <br/> <br/>
	                 
      <label>Email      
	   <span class="small">Customer Email</span></label> 
	    <input type="text" name="email" id="email" size="30"/><br/><br/>
      
      <label>Password      
	   <span class="small">minimum 6 character</span></label>
	   <input type="password" id="pass" name="pass" size="30"/><br/><br/>
      
      <label>ConformPassword      
	   <span class="small">should match</span></label> 
	   <input type="password" id="cpass" name="cpass" size="30"/><br/><br/>
            
      <label>PhoneNo      
	   <span class="small">Your Phone Number</span></label>
	   <input type="text" name="phoneno" id="phoneno" size="30"/> <br/> <br/>
      
      
      <label>Gender      
	   <span class="small">select</span></label>
	   <select name="gender" id="gender">
			<option value=""></option>
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			<option value="Other">other</option>
		</select><br/><br/>
		
		<label>Date-of-Birth      
	   <span class="small">Your DOB</span></label>
	   <input type="text" name="dob" id="dob"/><br/><br/>
               
    <label>Policy      
		<span class="small">Customer Policy</span></label>    
		<select name="policy" id="policy">
			<option value=""></option>
			<option value="LIC">LIC</option>
			<option value="ICICI">ICICI</option>
		</select><br/><br/>
                   
     <label>ID-Proof      
		<span class="small">Your Identitiy</span></label>            
        <select name="idproof" id="idproof">
			<option value=""></option>
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
	   <span class="small">Your InsuranceNo</span></label> 
	   <input type="text" name="insuranceno" id="insuranceno" size="30"/> <br/> <br/>
	  	 
	
            
                                  
                     
           
           
           
       <input type="submit"  value="Registor" onclick="return rax();" style="margin-left: 90px"/>
		
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

