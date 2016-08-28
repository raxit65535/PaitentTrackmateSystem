<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>

<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@page import="com.insurance.table.*" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html> 
	<head>
		<title>Data EditForm</title>
		
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		
		<script type="text/javascript">
            
            function rax()
            {  
            var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            var phoneno = /^\d{10}$/;
             var  nm = document.getElementById('name').value;
             var em = document.getElementById('email').value;
             var ph = document.getElementById('phoneno').value;
              var exp = document.getElementById('expdate').value;
    			
    			if(nm.length==0 || em.length==0 || ph.length==0 || exp.length==0)
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
    	    	alert("Enter Valid Phoneno");
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
	String _id = request.getQueryString(); 
	Session sess = HibernateUtil.getSessionFactory().openSession(); 
	Transaction tr = sess.beginTransaction();
	Query q = sess.createQuery("from InsurancePojo where id = :p");
	q.setString("p",_id);
	List<InsurancePojo > heli = (List<InsurancePojo>)q.list();
	String name=null;
	String surname=null;
	String email=null;
	String phoneno=null;
	String insuranceid=null;
	String expdate=null;
	String policy=null;
	 for(InsurancePojo e1 : heli)
	 {
	 	 name = e1.getName();
	 	 
	 	 email = e1.getEmail();
	 	 phoneno = e1.getPhoneno();
	 	 insuranceid = e1.getInsuranceno();
	 	 expdate = e1.getExpireDate();
	 	 policy = e1.getPolicy();
	 }
	 
	 %>
	 <%@ include file="Temp.jsp" %>
	 <center>
	 <div id="stylized" class="myform">
		<html:form action="/dataEdit" method="post">
		<h1>Customer DataEdit Form</h1>
		
		<label>Name
		<span class="small">Add your name</span>
		</label>
		<input type="text" name="name" id="name" size="30" value="<%=name %>"/> <br/> <br/>
	                      
        <label>Email
		<span class="small">Add your Email</span>
		</label>
		<input type="text" name="email" id="email" size="30" value="<%=email %>"/><br/><br/>
      
      	<label>PhoneNo
		<span class="small">Add your PhoneNo</span>
	    </label>
        <input type="text" name="phoneno" id="phoneno" size="30" value="<%=phoneno %>"/> <br/> <br/>  
               
        
         <input type="hidden" id="insuranceid" name="insuranceid" value="<%=insuranceid %>"/>	  	 
	   
	   <label>ExpireDate
	   <span class="small">Add Exp Date</span>
	   </label>
	   <input type="text" name="expdate" id="expdate" size="30" value="<%=expdate %>"/> <br/> <br/>
			
			
			<br/><br/>
			<input type="submit" value="Update" onclick="return rax();"/>
		
		<div class="spacer"></div>
		</html:form>
		</div>
	</center>
	
	<div id="wrapper2">
	
	<%@ include file="footer.jsp" %>
	</div>
	</body>
</html>

