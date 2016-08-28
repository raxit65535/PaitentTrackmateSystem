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
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>Prescription step2</title>
			 <link rel="stylesheet" href="../css/form.css" type="text/css" />
			 <link rel="stylesheet" href="css/search.css" type="text/css" media="screen" title="default" />
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		
		
		<script type="text/javascript">
            
            function rax()
            {
            
             var a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v;
             
             a = document.getElementById('doctorname').value;
             b = document.getElementById('designation').value;
             c = document.getElementById('department').value;
             d = document.getElementById('insuranceno').value;
             e = document.getElementById('name').value;
             f = document.getElementById('email').value;
             g = document.getElementById('policy').value;
             h = document.getElementById('dob').value;
             i = document.getElementById('gender').value;
             j = document.getElementById('phoneno').value;
             k = document.getElementById('idproof').value;
             l = document.getElementById('value').value;
             m = document.getElementById('admitdate').value;
             n = document.getElementById('dischargedate').value;
             o = document.getElementById('complain').value;
             p = document.getElementById('history').value;
             q = document.getElementById('localexamination').value;
             r = document.getElementById('provisionaldiagnosis').value;
             s = document.getElementById('tests').value;
             t = document.getElementById('finaldiagnosis').value;
             u = document.getElementById('treetment').value;
             v = document.getElementById('remark').value;
             
            if(a.length==0 || b.length==0 || c.length==0 || d.length==0 || e.length==0 || f.length==0 || g.length==0 || h.length==0 || i.length==0 || j.length==0 || k.length==0 || l.length==0 || m.length==0 || n.length==0 || o.length==0 || p.length==0 || q.length==0 || r.length==0 || s.length==0 || t.length==0 || u.length==0 ||v.length==0 )
            {
            	alert("Enter All Field for prescription");
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
	HttpSession doctor = request.getSession(); 
	String _insuranceno = (String)doctor.getAttribute("insuranceno"); 
	String _Doctorname = (String)doctor.getAttribute("Name");
	String _designation =(String)doctor.getAttribute("Designation");
	String _department = (String)doctor.getAttribute("Department");
	String _uuid = (String)doctor.getAttribute("UUID");
	String status ="1";
	
	
	DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
   
   Date date = new Date();
   
   String dischargedate = dateFormat.format(date);
	
	 
	 
		Session sess = HibernateUtil.getSessionFactory().openSession(); 
	Transaction tr = sess.beginTransaction();
	Query q = sess.createQuery("from PaitentPOJO where insuranceno = :p AND Status != :s");
	q.setString("p",_insuranceno);
	q.setString("s",status);
	
	List<PaitentPOJO > heli = (List<PaitentPOJO>)q.list();
	

	String name=null;
	String email=null;
	String dob=null;
	String gender =null;
	String phoneno=null;
	String policy =null;
	String idproof=null;
	String value =null;
	String admintdate = null;
	
	if(heli.size()>0)
	{
	
	
	 for(PaitentPOJO e1 : heli)
	 {
	 	 name = e1.getName();
	 	 email = e1.getEmail();
	 	 dob = e1.getDob();
	 	 gender=e1.getGender();
	 	 phoneno=e1.getPhoneno();
	 	 policy = e1.getPolicy();
	 	 idproof = e1.getIdproof();
	 	 value = e1.getValue();
	 	 admintdate = e1.getStatus();
	 }
	 
	 }
	 
	 else
	 {
	 	%>
	 	<jsp:forward page="doctorPrescription1.jsp"></jsp:forward>
	 	<%
	 }
	 
	 %>
	 



  	
  <%@ include file="Temp.jsp" %>
 
   <div id="stylized" class="myform">
		<html:form action="/doctorPrescription2">
		
		<label>Doctor
		<span class="small">Doctor name</span>
		</label>
		<input type="text" id="doctorname" name="doctorname" size="30" value="<%=_Doctorname %>" /><br/><br/>
		
		<label>Designation
		<span class="small">Doctor Designation</span>
		</label>
		<input type="text" id="designation" name="designation" size="30" value="<%=_designation %>"/><br/><br/>
		<input type="hidden" id="uuid" name="uuid" value="<%=_uuid %>"/>
		
		
		<label>Department
		<span class="small">Doctor's department</span>
		</label>
		<input type="text" id="department" name="department" size="30" value="<%=_department %>" /><br/><br/>
		
		<label>InsuranceNo
		<span class="small">paitent's insuranceno</span>
		</label>
		<input type="text" id="insuranceno" name="insuranceno" size="30" value="<%=_insuranceno %>"/><br/><br/>
		
		<label>Name
		<span class="small">paitent's name</span>
		</label>
		<input type="text" id="name" name="name" size="30" value="<%=name %>" /><br/><br/>
		
		<label>Email
		<span class="small">paitent's Email</span>
		</label>
		<input type="text" id="email" name="email" size="30" value="<%=email %>"/><br/><br/>
		
		<label>Policy
		<span class="small">Insurance Policy</span>
		</label>
		<input type="text" id="policy" name="policy" size="30" value="<%=policy %>"/><br/><br/>
		
		<label>DOB
		<span class="small">paitent's DOB</span>
		</label>
		<input type="text" id="dob" name="dob" size="30" value="<%=dob %>"/><br/><br/>
		
		<label>Gender
		<span class="small">paitent's Gender</span>
		</label>
		<input type="text" id="gender" name="gender" size="30" value="<%=gender %>"/><br/><br/>
		
		<label>PhoneNO
		<span class="small">paitent's phoneno</span>
		</label>
		<input type="text" id="phoneno" name="phoneno" size="30" value="<%=phoneno %>"/><br/><br/>
		
		<label>IDproof
		<span class="small">paitent's identity</span>
		</label><input type="text" id="idproof" name="idproof" size="30" value="<%=idproof %>"/>
		
		<label>IdentityNo
		<span class="small">Idproof No.</span>
		</label>
		<input type="text" id="value" name="value" size="30" value="<%=value %>"/><br/><br/>
		
		<label>AdmitDate
		<span class="small">paitent's AdmitDate</span>
		</label>
		<input type="text" id="admitdate" name="admitdate" size="30" value="<%=admintdate %>"/><br/><br/>
		
		<label>DischargeDate
		<span class="small">paitent's dischargedate</span>
		</label>
		<input type="text" id="dischargedate" name="dischargedate" size="30" value="<%=dischargedate%>"/><br/><br/>
		
		<label>Presenting Complain
		<span class="small">Complain Description </span>
		</label>
		<textarea rows="4" cols="50" id="complain" name="complain" ></textarea><br/><br/>
		
		<label>PaitentHistory
		<span class="small">habbits' history </span>
		</label>
		<textarea rows="4" cols="50" id="history" name="history" ></textarea><br/><br/>
		
		<label>Local Examination
		<span class="small">level-1 Examination </span>
		</label>
		<textarea rows="4" cols="50" id="localexamination" name="localexamination" ></textarea><br/><br/>
		
		<label>Provisional Diagnosis
		<span class="small">level-2 Examination </span>
		</label>
		<textarea rows="4" cols="50" id="provisionaldiagnosis" name="provisionaldiagnosis" ></textarea><br/><br/> 
			
		<label>Tests
		<span class="small">Paitent's Tests' prediction </span>
		</label>
		<textarea rows="4" cols="50" id="tests" name="tests" ></textarea><br/><br/>
		
		<label>Final Diagnosis
		<span class="small">level-3 (final) </span>
		</label>
		<textarea rows="4" cols="50" id="finaldiagnosis" name="finaldiagnosis" ></textarea><br/><br/>
		
		<label>Treetment
		<span class="small">Medicines and dieat </span>
		</label>
		<textarea rows="4" cols="50" id="treetment" name="treetment" ></textarea><br/><br/>
		
		<label>My Remark
		<span class="small">is this DC is Eligible for Claim? </span>
		</label>
		<textarea rows="4" cols="50" id="remark" name="remark" ></textarea><br/><br/>
			
			
			<html:submit value="Prescribe" onclick="return rax();" styleClass="large button black" style="margin-left:90px"/>
			<div class="spacer"></div>
			</html:form>
			 

   </div>
   
   <div id="wrapper2">
 <%@ include file="footer.jsp" %>
 </div>
	</body>
</html>

