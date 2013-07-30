<%-- 
    Document   : registration
    Created on : 28 Jun, 2013, 3:33:28 PM
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
    
            try{
                Connection con = MyConnection.getCon();
   PreparedStatement ps=null;
    String name = request.getParameter("name");
        String address = request.getParameter("addr");
        String email = request.getParameter("email");
        String contact=request.getParameter("contact");
        String phNo=request.getParameter("contact");
        String gender=request.getParameter("gender");
        String dob=request.getParameter("dob");
        String password=request.getParameter("password");
        
        ps = con.prepareStatement("INSERT INTO userdb VALUES('U'||u_id_seq.nextval,?,?,?,?,?,?,?)");

                 ps.setString(1,password);
                 ps.setString(2,name);
                 ps.setString(3,address);
                 ps.setString(4,email);
                 ps.setString(5,phNo);
                 ps.setString(6,gender);
                 ps.setString(7,dob);
                 int i=ps.executeUpdate();
                    if(i>0)
                        {
                 response.sendRedirect("regnSuccessful.jsp");
                 }
                 }
    catch (Exception e) { 
		     out.println("Error: "+e);
		}
   %>
   
    </body>
</html>
