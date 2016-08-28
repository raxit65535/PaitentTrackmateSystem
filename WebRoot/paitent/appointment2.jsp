<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Appointment Step2</title>
	<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
        <link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
         <link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
	<link rel="stylesheet" href="../datepicker/jquery-ui.css" />  
        <script src="../datepicker/jquery-1.9.1.js"></script>
         <script src="../datepicker/jquery-ui.js"></script>		
		<script>
$(function() {
$( "#date" ).datepicker({ minDate: 0, maxDate: "+3D", dateFormat: 'dd-mm-yy' });
});
</script>

<script type="text/javascript">
            
            function rax()
            {
    			var e,f,time,doct,date;
    		    e = document.getElementById('Time');
    		    time = e.options[e.selectedIndex].value;
    		    
    		    f = document.getElementById('appointment2');
    		    doct = f.options[f.selectedIndex].value;
    			
    			date = document.getElementById('date').value;
    			if(doct=="" || time=="" || date.length==0)
    			{
    				alert("Please enter all field");
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
	
	<%
	String _d = request.getParameter("department");
	
	if(_d==null)
	{
	%>
	<jsp:forward page="appointment1.jsp"></jsp:forward>
	<%
	}
	
	HttpSession paitent = request.getSession();
	paitent.setAttribute("department",_d);
	
	
	
	Session sess = HibernateUtil.getSessionFactory().openSession(); 
	Transaction tr = sess.beginTransaction();
	Query q = sess.createQuery("from DoctorPOJO where Department = :d");
	q.setString("d",_d);
	List<DoctorPOJO > heli = (List<DoctorPOJO>)q.list();
	
	Iterator itr = heli.iterator();
	%>
	<center>
	 <div id="stylized" class="myform">
	 <h2>Appointment Step2 :<br/><br/><br/></h2>
	<form action="paitent/checkAvailability.jsp" method="post">
		
		 <label>Doctors Available
		 <span class="small">select Doctor</span>
		 </label>
		<select name="appointment2" id="appointment2">
		 <option value=""></option>
	<%
	while(itr.hasNext())
	{
		DoctorPOJO doc = (DoctorPOJO)itr.next();
		String dd = doc.getName();
		String uu =doc.getUUID();
		
		%>
		
		   
			<option value="<%=uu %>"  ><%=dd %></option>
			
		
		
		
		
		<%	
	}
	
	 %>
	 </select><br/><br/>
	 
	 <label>Date
	 <span class="small">select Date</span>
	 </label>
	 <input type="text" id="date" name="date"/><br/><br/>
	 
	 
	 <label>Time
	 <span class="small">select Time</span>
	 </label>
	 <select name="Time" id="Time">
			<option value=""></option>
			<option value="10:00AM">10:00 AM</option>
			<option value="11:00AM">11:00 AM</option>
			<option value="12:00AM">12:00 AM</option>
			<option value="1:00PM">1:00 PM</option>
			<option value="2:00PM">2:00 PM</option>
			<option value="3:00PM">3:00 PM</option>
			<option value="4:00PM">4:00 PM</option>
			<option value="5:00PM">5:00 PM</option>
		</select><br/><br/>
		
		<input type="submit" onclick="return rax();" value="Finish" class="large button black" style="margin-left: 90px"/>
		
		<div class="spacer"></div>
		
	 </form>
	 </div>
		</center>
		<div id="wrapper6">
	
	<%@ include file="footer.jsp" %>
	</div>
		
	</body>
</html>

