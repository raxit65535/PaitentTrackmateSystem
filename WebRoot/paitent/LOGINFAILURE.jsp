<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="imagetoolbar" content="no" />
 
  <meta name="robots" content="noindex,nofollow" />
  <title>Nothing found </title>

		<style>
		body {background: #f9fee8;margin: 0; padding: 20px; text-align:center; font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#666666;}
		.error_page {width: 600px; padding: 50px; margin: auto;}
		.error_page h1 {margin: 20px 0 0;}
		.error_page p {margin: 10px 0; padding: 0;}		
		a {color: #9caa6d; text-decoration:none;}
		a:hover {color: #9caa6d; text-decoration:underline;}
		</style>

</head>

<body class="login">
  <div class="error_page">
    <img alt="Kidmondo_face_sad" src="images/kidmondo_face_sad.gif" />
    
    <%
   String e = request.getParameter("e");
    %>
    
    <h1>We're sorry...</h1>
    <h3><%
    if(e==null)
    {
    }
    else
    {
    	out.println(e);
    }
    %>
    </h3>
    <pre>
    <h3></h3>
    <b>
    Check Your Internet Connection...
    You are Violating some constrains...try again with correct parameters...
    </b>
    </pre>
    
	
	
	
	
	
   
  </div>
</body>
</html>
 
