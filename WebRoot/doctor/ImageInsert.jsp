<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Add Image</title>
<link rel="stylesheet" href="../css/form.css" type="text/css" />
<link rel="stylesheet" href="css/search.css" type="text/css" />
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
</head>
<body>
  <%@ include file="Temp.jsp"%>

<div id="stylized" class="myform">
<form name="form1" method="post" enctype="multipart/form-data" action="doctor/insertimage2.jsp">
 
<label>Image
<span class="small">Browse from computer</span>
</label>
<input type="file" name="ImageFile" id="ImageFile" class="large button green"/>

<input type="submit" name="submit" value="submit" class="large button blue" style="margin-left: 90px"/>
<div class="spacer"></div>

</form>
</div>
</body>
 <div id="wrapper2">
  <br/>
 <%@ include file="footer.jsp"  %>
 </div>
</html>

