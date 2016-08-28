<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>JSP for PaitentLoginForm form</title>
	

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../css/raxit.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="../css/heli.css" type="text/css" media="screen" />
 <script type="text/javascript" src="../js/swfobject/swfobject.js"></script>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
 
<link rel="stylesheet" href="../css/jquery.fencybox-1.3.4.css" type="text/css" />
	 <script type="text/javascript" charset="utf-8" src="../js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="../css/style.css">
  
  
<script type="text/javascript" charset="utf-8" src="../js/jquery.leanModal.min.js"></script>
  	
<script src="../js/slide.js" type="text/javascript"></script>

<!--  STEP ONE: insert path to SWFObject JavaScript -->


<!--------------------------------------slide Show ------------------------------>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<link rel="stylesheet" href="css/style3.css" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/easySlider1.7.js"></script>
		

<script type="text/javascript" src="../js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="../js/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../js/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/JavaScript">
		$(document).ready(function() {												
			
			$("a#example2").fancybox({
				'width'				: '60%',
				'height'			: '60%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
			
			$("a#example1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});						

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});		
						
				
			
			for(var q=0;q<3;q++)
			{
				$("#whatnew"+q).fancybox({
					'titlePosition'		: 'inside',
					'transitionIn'		: 'none',
					'transitionOut'		: 'none'
				});
			}	
			
			for(var q=0;q<3;q++)
			{
				$("#whatnewmore"+q).fancybox({
					'titlePosition'		: 'inside',
					'transitionIn'		: 'none',
					'transitionOut'		: 'none'
				});
			}	
			
			
</script>	
  

<link href="css/style2.css" rel="stylesheet" type="text/css" />

<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
		
		 <script type="text/javascript" lang="javascript">
            
             function b()
             {
                 var user = document.getElementById("loginid").value;
                 var pass = document.getElementById("passwd").value;
                 var reg = /^([A-Za-z0-9_\-\.])+\@([g]+[m]+[a]+[i]+[l])+\.([c]+[o]+[m])$/;
                  /*var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;*/
                 
                 if(user.length==0)
                     {
                         alert("Please Enter Username..");
                         return false;
                     }
                    else if(pass.length==0)
                    {
                        alert("Please Enter Password..");
                        return false;
                    }
                    else if(pass.length<4)
                        {
                            alert("please enter password more than 4 charactor..");
                            return false;
                        }
                        else if(reg.test(user)==false)
                            {
                              alert("only gmail is availvable in our service...please registor with gmailID");
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
    <jsp:include page="paitentLogin.jsp"></jsp:include>
    <p>faskldjflsajfd</p>
  </body>
</html>
