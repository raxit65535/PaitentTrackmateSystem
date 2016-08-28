<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Edit My Profile</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />

  
  
  
  <script type="text/javascript">
            
            function rax()
            {
    			//var n ,e,p;
    			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                var phoneno = /^\d{10}$/;
    			var n = document.getElementById('name').value;
    			var e = document.getElementById('email').value;
    			var p = document.getElementById('phone').value;
    			
    			if(n.length==0 || e.length==0 || p.length==0)
    			{
    				alert("Please Enter All Fields");
    				return false;
    			}	
    			
                else if(!filter.test(e))
    	         {
    	    	alert("Enter Valid Email_ID");
    	    	return false;
    	          }
    	       else if(!p.match(phoneno))
    	    {
    	    	alert("Enter Valid PhoneNo");
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
  
   <%@ include file="Temp.jsp"%>
   
   <%
  HttpSession paitent = request.getSession();
  
  String ino = (String)paitent.getAttribute("Insuranceno");
  
        String name = null;
		String email = null;
		String gender =null;
		String dob = null;
		String policy = null;
		//String insuranceno = null;
		String idproof = null;
		String value = null;
		String phoneno = null;
		
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query q = sess.createQuery("From PaitentPOJO where Insuranceno = :i");
  q.setString("i",ino);
  
  List<PaitentPOJO> detail =(List<PaitentPOJO>)q.list();
	  		sess.getTransaction().commit();
		
	  		for(PaitentPOJO heli1 : detail)
	  		{
	  			name = heli1.getName();
	  			email = heli1.getEmail();
	  			gender = heli1.getGender();
	  			dob = heli1.getDob();
	  			phoneno = heli1.getPhoneno();
	  			idproof = heli1.getIdproof();
	  			value = heli1.getValue();
	  			policy = heli1.getPolicy();
	  			
	  			  			
	  		} 
  
  
   %>
   
   
   <div id="stylized" class="myform">
   <form action="paitent/EditDetailAction.jsp">
  <center><h1>Edit Details Form<br/></h1></center> 
   <label>Name
   <span class="small">your name</span>
   </label>
   <input type="text" id="name" name="name"   value="<%=name %>"/>
   
    <label>Email
   <span class="small">your Email_ID</span>
   </label>
   <input type="text"  id="email" name="email"   value="<%=email %>"/>
   
    <label>ContactNo. 
   <span class="small">Your phoneno.</span>
   </label>
   <input type="text"    id="phone" name="phone"      value="<%=phoneno %>"/>
   
   <input type="submit" onclick="return rax();"  value="Update" class="large button black" style="margin-left: 90px"/>
   
   <div class="spacer"></div>
   </form>
  </div> 
   
   
   

  </body>
  
     <div id="wrapper6">
  <br/>
   <div id="wrapper6">
  <br/>
 <%@ include file="footer.jsp"  %>
 </div>
 </div>
</html>
