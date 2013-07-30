<%-- 
    Document   : download2
    Created on : 28 Jun, 2013, 5:21:25 PM
    Author     : Saheb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="myClass.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%  
        String user_id = (String)session.getAttribute("user_id");
    
    if(user_id!=null)
        {
         Connection con = MyConnection.getCon();
            String song_id=(String)request.getParameter("songId");
            PreparedStatement ps = con.prepareStatement("Select songName from Song where songId="+song_id);
            ResultSet rs = ps.executeQuery();
            if(rs.next())
                {
  String filename = rs.getString(1); 
  String filepath = "E:\\J2EE project\\Musica\\web\\upload\\"; 
  response.setContentType("APPLICATION/OCTET-STREAM"); 
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
		  
  int i; 
  while ((i=fileInputStream.read()) != -1) {
    out.write(i); 
  } 
  fileInputStream.close();
}
  }     
%> 
    </body>
</html>
