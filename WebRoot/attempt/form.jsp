<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'form.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	
	-->
<style type="text/css">


body{
font-family:"Lucida Grande", "Lucida Sans Unicode", Verdana, Arial, Helvetica, sans-serif;
font-size:12px;
}
p, h1, form, button{border:0; margin:0; padding:0;}
.spacer{clear:both; height:1px;}
/* ----------- My Form ----------- */
.myform{
margin:0 auto;
width:400px;
padding:14px;
}

/* ----------- stylized ----------- */
#stylized{
border:solid 2px #b7ddf2;
background:#ebf4fb;
}
#stylized h1 {
font-size:14px;
font-weight:bold;
margin-bottom:8px;
}
#stylized p{
font-size:11px;
color:#666666;
margin-bottom:20px;
border-bottom:solid 1px #b7ddf2;
padding-bottom:10px;
}
#stylized label{
display:block;
font-weight:bold;
text-align:right;
width:140px;
float:left;
}
#stylized .small{
color:#666666;
display:block;
font-size:11px;
font-weight:normal;
text-align:right;
width:140px;
}
#stylized input{
float:left;
font-size:12px;
padding:4px 2px;
border:solid 1px #aacfe4;
width:200px;
margin:2px 0 20px 10px;
}
#stylized button{
clear:both;
margin-left:150px;
width:125px;
height:31px;
background:#666666 url(img/button.png) no-repeat;
text-align:center;
line-height:31px;
color:#FFFFFF;
font-size:11px;
font-weight:bold;
}

</style>
  </head>
  
  <body>
  <div id="stylized" class="myform">
   <html:form action="/patientRegistratiom">
<h1>Patient RegistrationForm</h1>
<p>
	<% String s1 =(String)session.getAttribute("errorLogin");
	if(s1 == null){
	
	}
	
	else{out.println(s1 + ""+ "is" + "already available"); 
	
	}%></p>
<label>Name
<span class="small">Add your name</span>
</label>
<html:text property="name"/><html:errors property="name"/>

<label>Email
<span class="small">Add a valid address</span>
</label>
<html:text property="email"/><html:errors property="email"/>

<label>Password
<span class="small">Min. size 6 chars</span>
</label>
<html:password property="password"/><html:errors property="password"/>

<label>ConformPassword
<span class="small">Repeat Password</span>
</label>
<html:password property="conformPass"/><html:errors property="conformPass"/>

<label>LoginAs
<span class="small">Enter uinqeId</span>
</label>
<html:text property="loginAs"/><html:errors property="loginAs"/>


<label>Location
<span class="small">Give Address only name</span>
</label>
<html:text property="location"/><html:errors property="location"/>

<label>BirthDate
<span class="small">datePicker</span>
</label>
<html:text property="birthdate"/><html:errors property="birthdate"/>

<label>ContactNo
<span class="small">Enter contactNo</span>
</label>
<html:text property="phn_no"/><html:errors property="phn_no"/>

<label>Type
<span class="small">CaseType</span>
</label>
<html:text property="type"/><html:errors property="type"/>

<label>InsuranceName
<span class="small">Current Name</span>
</label>
<html:text property="insuranceName"/><html:errors property="insuranceName"/>

<label>InsuranceId
<span class="small">Valid Id</span>
</label>
<html:text property="insurance_id"/><html:errors property="insurance_id"/>

<label>Security Que
<span class="small">select one</span>
</label>
<html:select property="que">
		<html:option value="what is your fav car name?">what is your fav car name?</html:option>
		<html:option value="give security code ">Enter secure code</html:option>
		</html:select>

Answer
<html:text property="ans"/><html:errors property="ans"/>

<input type="text" id="txtCaptcha" 
            style="background-image:url(gallery_4.jpg); text-align:center; border:none;
            font-weight:bold; font-family:Modern" />
           
		 <html:button property="btnrefresh"  styleId="btnrefresh"  value="Refresh" onclick="DrawCaptcha();"></html:button>
			<br/><br/>
			<html:text property="txtInput" styleId="txtInput" ></html:text>
		
			<br/>
			<html:submit onclick="alert(ValidCaptcha());" value="RegesterMe"/>
<div class="spacer"></div>

</html:form>
</div>

  </body>
</html>
