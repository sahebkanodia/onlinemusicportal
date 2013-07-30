<%-- 
    Document   : opSuccessful
    Created on : 29 Jun, 2013, 7:56:13 AM
    Author     : radhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="myClass.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <body>
        
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
     <%
    
           
                Connection con = MyConnection.getCon();
   PreparedStatement ps=null;
   String songId=(String)request.getParameter("songId");
   PreparedStatement ps1 = con.prepareStatement("Delete from song where songId=?");
   ps1.setString(1, songId);
   int i = ps1.executeUpdate();
   if(i>0)
       {
       response.sendRedirect("adminhome.jsp");
   }
           
        %>
        
    </body>
</html>
