<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for EditDoctForm form</title>
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
    			var e = document.getElementById('email').value;
    			var p = document.getElementById('contactno').value;
    			
    			
    			
    			if(n.length==0 || des.length == 0 || e.length==0 || p.length==0)
    			{
    				alert("Please Enter All Fields");
    				return false;
    			}
    			else if(!p.match(phoneno))
    			{
    				alert("Enter Valid phoneno");
    				return false;
    			}
    			else if(!filter.test(e))
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
	<% 
	String _id = request.getQueryString(); 
	Session sess = HibernateUtil.getSessionFactory().openSession(); 
	Transaction tr = sess.beginTransaction();
	Query q = sess.createQuery("from DoctorPOJO where id = :p");
	q.setString("p",_id);
	List<DoctorPOJO> heli = (List<DoctorPOJO>)q.list();
 	String name=null;
	String department=null;
	String designation=null;
	
	String timingsTo=null;
	String timingsFrom=null;
	String email=null;
	String contact_No=null;
	String UUID=null;
	 for(DoctorPOJO e1 : heli)
	 {
	 	 name = e1.getName();
	 	 designation = e1.getDesignation();
	 	
	 	 email = e1.getEmail();
	 	 contact_No = e1.getContact_No();
	 	 UUID = e1.getUUID();
	 }
	 
	 %>
	   <%@ include file="Temp.jsp" %>
 
   <div id="stylized" class="myform">
		<html:form action="/editDoct">
		
		 <label>Name
		 <span class="small">Docotr's name</span>
		 </label> 
		  <input type="text" name="name" id="name" size="30" value="<%=name %>"/> <br/> <br/>
		
		<label>Email_id 
		 <span class="small">Docotr's Email_id</span>
		 </label>  
		  <input type="text" name="email" id="email" size="30" value="<%=email %>"/> <br/> <br/>	 
	  
	  <label>Designation  
		 <span class="small">Docotr's Designation </span>
		 </label> <input type="text" name="designation" id="designation" size="30" value="<%=designation %>"/> <br/> <br/>
	  
	  <label>PhoneNo
		 <span class="small">Doctor's ContactNo</span>
		 </label>  
		 <input type="text" name="contactno" id="contactno" size="30" value="<%=contact_No %>"/> <br/> <br/>
	  
	  <input type="hidden" id="uuid" name="uuid"  value="<%=UUID %>"/><br/><br/>
			
			
			 
			<html:submit value="update" onclick="return rax();"  styleClass="large button black" style="margin-left:90px"/>
			<div class="spacer"></div>
		</html:form>
		
		</div>
   
   <div id="wrapper2">
 <%@ include file="footer.jsp" %>
 </div>
	</body>
</html>

