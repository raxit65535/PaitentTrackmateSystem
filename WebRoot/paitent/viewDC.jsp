<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="com.sanjivni.doctor.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>Discharge Card</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">

body
{
margin:0px;
}

.td
{
	font-family:verdana;
	font-size:12px;
	color:#000000;
	
	font-weight:normal;
	margin-left:90px;
}

.th
{
	font-family:verdana;
	font-size:30px;
	color:#000000;
	font-weight:bold;
	margin-left:10px;
	font-weight:bold;
	text-align: center;
}
.invtd
{
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:16px;
	text-align:left;
	color:#000000;
	margin-left:90px;
}
</style>

  </head>
  
  <body>
    <%
    String _id = request.getQueryString();
    
    int id;
	String doctorname = null;
	String designation = null;
	String department = null;
	String insuranceno = null;
	String name = null;
	String email = null;
	String policy = null;
	String dob = null;
	String gender = null;
	String phoneno = null;
	String idproof = null;
	String value = null;
	String admitdate = null;
	String dischargedate = null;
	String complain = null;
	String history = null;
	String localexamination = null;
	String provisionaldiagnosis = null;
	String tests = null;
	String finaldiagnosis = null;
	String treetment = null;
	String remark = null;
	
    
    
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    Query q = sess.createQuery("from PrescriptionPOJO where id = :i");
    q.setString("i",_id);
    
    List<PrescriptionPOJO> pr = (List<PrescriptionPOJO>)q.list();
    
    Iterator itr = pr.iterator();
    
    while(itr.hasNext())
    {
    	PrescriptionPOJO p = (PrescriptionPOJO)itr.next();
    	insuranceno = p.getInsuranceno();
    	name = p.getEmail();
    	email = p.getEmail();
    	phoneno = p.getPhoneno();
    	policy = p.getPolicy();
    	gender = p.getGender();
    	dob = p.getDob();
    	admitdate = p.getAdmitdate();
    	dischargedate = p.getDischargedate();
    	idproof = p.getIdproof();
    	value = p.getValue();
    	doctorname =p.getDoctorname();
    	designation = p.getDesignation();
    	department =p.getDepartment();
    	complain =p.getComplain();
    	history = p.getHistory();
    	localexamination = p.getLocalexamination();
    	provisionaldiagnosis = p.getProvisionaldiagnosis();
    	tests = p.getTests();
    	finaldiagnosis = p.getFinaldiagnosis();
    	treetment = p.getTreetment();
    	remark = p.getRemark();	
    	
    }
    
    
    
     %>
<table width="100%" border="0"> 	
			<tr width="154" height="150">
			 <th colspan="4" align="center"><h1>Sanjivani Health Care</h1></th></tr>
	
			<tr>
				<td height="20" colspan="6" bgcolor="#CCCCCC" class="invtd"><strong>&nbsp;&nbsp; </strong></td>
   		    </tr>
    		<tr>
    		<td width="133" class="invtd"> Admitdate </td>
    		<td width="5" class="invtd">:</td>
    		<td><%=admitdate %></td>
    		</tr>
    		
    		
   		    
    		
    		
    		<tr>
    		<td width="133" class="invtd">Dischargedate </td>
    		<td width="5" class="invtd">:</td>
    		<td><%=dischargedate %></td>
    		</tr>
    		
    		
    		
    		<tr>
				<td height="20" colspan="6" bgcolor="#CCCCCC" class="invtd"><strong>&nbsp;&nbsp;Dcotor Information </strong></td>
   		    </tr>
    		
    		 <tr>
			  <td align="left"><%=department %> </td>
			  </tr>
			  <tr>
			 
			  <td align="left"><%=doctorname %></td></tr>
			  <tr>
			 
			  	  <td align="left"> <%=designation %></td>
		  </tr>
    		
    		
    		<tr>
				<td height="20" colspan="6" bgcolor="#CCCCCC" class="invtd"><strong>&nbsp;&nbsp; Patient Information</strong></td>
   		    </tr>
   		    
   		    
   		    
    		<tr>
				<td width="133" class="invtd">Patient Name:<%=name %> </td>
			  	
			  	<td></td>
			  	</tr>
    
    		<tr>
				<td height="26" valign="top" class="invtd">Email</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=email %></td>
			  	
			</tr>
			
    		<tr>
				<td height="26" valign="top" class="invtd">Insurance NO</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=insuranceno %></td>
			</tr>
			<tr>
				<td height="26" valign="top" class="invtd">Policy</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=policy %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">DOB</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=dob %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Gender</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=gender %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Phone No</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=phoneno %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">ID Proof</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=idproof %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Proof No</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=value %></td>
			</tr>	
			<tr>
				<td height="20" colspan="6" bgcolor="#CCCCCC" class="invtd"><strong>&nbsp;&nbsp;Doctor Information </strong></td>
   		    </tr>
   		    <tr>
				<td height="26" valign="top" class="invtd">Complain</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=complain %></td>
			</tr>	
			 <tr>
				<td height="26" valign="top" class="invtd">History</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=history %></td>
			</tr>	
			 <tr>
				<td height="26" valign="top" class="invtd">LocalExamination</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=localexamination %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">ProvisionalDiagnosis</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=provisionaldiagnosis %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Tests</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=tests %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">FinalDiagnosis</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=finaldiagnosis %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Treatment</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=treetment %></td>
			</tr>	
			<tr>
				<td height="26" valign="top" class="invtd">Remark</td>
			  	<td height="26" valign="top" class="invtd">:</td>
			  	<td><%=remark %></td>
			</tr>	
			
			  </table>
  </body>
  
</html>
