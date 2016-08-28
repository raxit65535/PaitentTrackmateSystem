<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">


<%@ page import="org.apache.commons.fileupload.*, org.apache.commons.fileupload.servlet.ServletFileUpload, org.apache.commons.fileupload.disk.DiskFileItemFactory, org.apache.commons.io.FilenameUtils, java.util.*, java.io.File, java.lang.Exception" %>
<%@page import="org.hibernate.Session"%>
<%@page import="com.raxit.hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="raxit.attempts.*"%>


<html>
  <head>
    <title>File Upload Example</title>
  </head>

  <body>
    <h1>Data Received at the Server</h1>
    <hr/>
    <p>

<%
if (ServletFileUpload.isMultipartContent(request)){
  ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
  List fileItemsList = servletFileUpload.parseRequest(request);

  String optionalFileName = "";
  FileItem fileItem = null;

  Iterator it = fileItemsList.iterator();
  while (it.hasNext()){
    FileItem fileItemTemp = (FileItem)it.next();
    if (fileItemTemp.isFormField()){
%>

<b>Name-value Pair Info:</b><br/>
Field name: <%= fileItemTemp.getFieldName() %><br/>
Field value: <%= fileItemTemp.getString() %><br/><br/>

<%
      if (fileItemTemp.getFieldName().equals("filename"))
        optionalFileName = fileItemTemp.getString();
    }
    else
      fileItem = fileItemTemp;
  }
  
  

  if (fileItem!=null){
    String fileName = fileItem.getName();
%>

<b>Uploaded File Info:</b><br/>
Content type: <%= fileItem.getContentType() %><br/>
Field name: <%= fileItem.getFieldName() %><br/>
File name: <%= fileName %><br/>
File size: <%= fileItem.getSize() %><br/><br/>

<%
    /* Save the uploaded file if its size is greater than 0. */
    if (fileItem.getSize() > 0){
      if (optionalFileName.trim().equals(""))
        fileName = FilenameUtils.getName(fileName);
      else
        fileName = optionalFileName;

     
      File saveTo = new File(config.getServletContext().getRealPath("/")+"images/paitent/" + fileName);
      try {
        fileItem.write(saveTo);
    
        
%>

<b>The uploaded file has been saved successfully.</b>



<%
      }
      catch (Exception e){
%>

<b>An error occurred when we tried to save the uploaded file.</b>

<%
      }
    }
    
      HttpSession paitent = request.getSession();
     String ino = (String)paitent.getAttribute("Insuranceno");
     System.out.println(ino);
     Session session1 = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session1.beginTransaction();
        Query q = session1.createQuery("Update PaitentPOJO  set image = :im where insuranceno = :i");
        q.setString("im",fileName);
        q.setString("i",ino);
        
        int result = q.executeUpdate();
        tr.commit();
        session1.close();
        
        
        if(result>0)
        {
        	%>
        	<jsp:forward page="paitenthome.jsp"></jsp:forward>
        	<%
        }
      
       
  }
     
}

%>

    </p>
    
  </body>
</html>