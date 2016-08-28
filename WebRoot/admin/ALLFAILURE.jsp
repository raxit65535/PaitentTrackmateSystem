<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>WOOPSIE DAISY! Something went wrong!!!</title>
		<style>
        b. {margin-left:0cm;}
       </style>
		<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" title="default" />
		
		
	</head>
	<body>
	<center>
	 <%@ include file="Temp.jsp" %>
		
				<img src="images/oops.jpg" />
					<h1><br/><br/><br/><br/>Woopsie Daisy!<br/><br/><br/></h1>
					<h3>
					<%
					String e = request.getParameter("e");
					
					if(e==null)
					{
					}
					else
					{
						out.println(e);
					}
					
					 %>
					 </h3>
					
					
					
		</center>
		 <div id="wrapper6">
   <jsp:include page="footer.jsp"></jsp:include>
  </div>
	</body>
</html>