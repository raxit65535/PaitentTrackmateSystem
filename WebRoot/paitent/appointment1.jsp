<%@ page language="java" pageEncoding="ISO-8859-1"%>

 
<html> 
	<head>
		<title>Appointment Step1</title>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
        <link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
      <link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
        
        <script type="text/javascript">
            
            function rax()
            {
    			
    			var e = document.getElementById('department');
    			var depart = e.options[e.selectedIndex].value;
    			
    			if(depart=="")
    			{
    				alert("Please select Department");
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
	

	 <div id="stylized" class="myform">
	 <h2>Appointment Step1 :<br/><br/><br/></h2>
	
	<h2><font size="2">In which Department you want appointment???</font><br/><br/><br/></h2>
		<form action="paitent/appointment2.jsp" >
		
		<label>Department
		<span class="small">Doctor's Department</span>
		</label>
		<select name="department" id="department">
			<option value=""   ></option>
			<option value="ENT">ENT</option>
			<option value="Gastrology">Gastrology</option>
			<option value="Phisiology">Phisiology</option>
			<option value="Cancer">Cancer</option>
			<option value="Endoscopic">Endoscopic</option>
			<option value="Neurology">Neurology</option>
		</select><br/><br/>
		
			<input type="submit" onclick="return rax();"  value="Next" class="large button black" style="margin-left: 90px"/>
			<div class="spacer"></div>
		</form>
		</div>
	</center>
	<div id="wrapper5">
	
	<%@ include file="footer.jsp" %>
	</div>
	</body>
</html>

