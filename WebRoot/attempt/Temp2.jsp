<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'Temp2.jsp' starting page</title>
    
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
  <div id="wrapper">

  <%@ include file="Temp.jsp" %>
  
   <h1>Page included successfully. </h1><br>
   <h1>Page included successfully. </h1><br>
   <h1>Page included successfully. </h1><br>
   <h1>Page included successfully. </h1><br>

   
   <jsp:include page="footer.jsp"></jsp:include>
  </div>
  </body>
  
</html>
