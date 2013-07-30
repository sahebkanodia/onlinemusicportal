<%-- 
    Document   : opSuccessful2
    Created on : 29 Jun, 2013, 8:17:00 AM
    Author     : radhika
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
    
          Connection con = MyConnection.getCon();
          String userId=(String)request.getParameter("userId");
          PreparedStatement ps1 = con.prepareStatement("Delete from userDb where userId=?");
   ps1.setString(1, userId);
    int i= ps1.executeUpdate();
    if(i>0)
        {
       response.sendRedirect("adminhome.jsp");
       }
          %>
      </body>
</html>
