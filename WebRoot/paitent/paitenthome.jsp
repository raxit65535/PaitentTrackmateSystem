<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.raxit.hibernate.*"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html>
  <head>
    
    
    <title>Home page</title>
    
    <style type="text/css">

.leftNav
{
    width: 30%;
    height: 70%;
    float: left;
    margin-left: 50px;
   
}


</style>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>

    
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

  </head>
  
  <body>
  
  <%@ include file="Temp.jsp"%>
  
  <%

 HttpSession paitent = request.getSession();
  //String inno = (String)paitent.getAttribute("Insuranceno");
  String insurance = (String)paitent.getAttribute("Insuranceno");
  System.out.println(insurance);  


  
  
  
        String name = null;
		String email = null;
		String gender =null;
		String dob = null;
		String policy = null;
		//String insuranceno = null;
		String idproof = null;
		String value = null;
		String phoneno = null;
		String img = null;
		
  
  Session sess = HibernateUtil.getSessionFactory().openSession();
  Transaction t = sess.beginTransaction();
  
  Query q = sess.createQuery("From PaitentPOJO where Insuranceno = :i");
  q.setString("i",insurance);
  
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
	  			img = heli1.getImage();
	  			  			
	  		} 
  
  
   %>

 
    <div class="leftNav"> 
    
    <h2><br/><br/><br/></h2>

   <img src="../images/paitent/<%=img %>" width="115" height="128" style="margin-left = 20px"/>      
   
   <h2><br/><br/><br/><br/></h2>
   
   <h2><a href="paitent/EditProfile.jsp" class="large button blue">Edit My Details</a><br/><br/>
   
   <a href="paitent/ImageInsert.jsp" class="large button blue">Upload Photograph</a><br/><br/>
   
   <a href="paitent/ChangePass.jsp" class="large button blue" >Change Password</a>
    </h2>
    </div>
   
 <table  class="gridtable" style="margin-top :70px">
<tr>
<th>
Name
</th>
<td>
<%=name %>
</td>
</tr>

<tr>
<th>
Email
</th>
<td>
<%=email %>
</td>
</tr>

<tr>
<th>
Gender
</th>
<td>
<%=gender %>
</td>
</tr>

<tr>
<th>
Date of birth
</th>
<td>
<%=dob %>
</td>
</tr>

<tr>
<th>
Policy
</th>
<td>
<%=policy %>
</td>
</tr>

<tr>
<th>
InsuranceNo
</th>
<td>
<%=insurance %>
</td>
</tr>

<tr>
<th>
IdProof
</th>
<td>
<%=idproof %>
</td>
</tr>

<tr>
<th>
IDproof Number
</th>
<td>
<%=value %>
</td>
</tr>

<tr>
<th>
Contact Number
</th>
<td>
<%=phoneno %>
</td>
</tr>

</table>
    

   


 
  </body>
  <div id="wrapper6">
  <br/>
 <%@ include file="footer.jsp"  %>
 </div>
</html>
