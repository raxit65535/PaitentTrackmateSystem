<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.insurance.table.*"%>
<%@page import="com.raxit.hibernate.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>Admin Homepage</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
  </head>
  
  <body>
  
  <% 
  Session s1 = HibernateUtil.getSessionFactory().openSession();
  Transaction t1 = s1.beginTransaction();
  Query q1 = s1.createQuery("From InsurancePojo");
  t1.commit();
  
  List<InsurancePojo> l1 = (List<InsurancePojo>)q1.list();  
  
  
  Session s2 = HibernateUtil.getSessionFactory().openSession();
  Transaction t2 = s2.beginTransaction(); 
  t2.commit();
  Query q2 = s2.createQuery("From PaitentPOJO"); 
    List<PaitentPOJO> l2 = (List<PaitentPOJO>)q2.list(); 
    String r = null;
    String h = null;
    
    for(PaitentPOJO e : l2)
    {
    	int status=0;
    	r = e.getInsuranceno();
    	for(InsurancePojo f : l1)
    	{
    		h = f.getInsuranceno();
    		if(h.equals(r))
    		{
    			status = status+1;
    		}
    		else
    		{
    		}
    		
    		
    		
    	}
    	
    	if(status==0)
    	{
    		System.out.println("i Am In Delete"+r);	
    	}
    	
    }
    
    
   %>

	<jsp:include page="Temp.jsp"></jsp:include>
	
 <center>
 <h3>
 <br/><br/><br/><br/><br/><br/><br/><br/><br/>
 This is Sanjivni Hospital's Admin Home page....

 </h3>
 </center>
 <div id="wrapper2">
 <jsp:include page="footer.jsp"></jsp:include>
  </div>
  </body>
</html>
