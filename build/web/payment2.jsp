<%-- 
    Document   : payment2
    Created on : 29 Jun, 2013, 12:17:59 AM
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
    String user_id = (String)session.getAttribute("user_id");

     if(user_id!=null)
          {
            try{
                String song_id = (String)session.getAttribute("song_id");
                Connection con = MyConnection.getCon();
   PreparedStatement ps=null;
    String cardNo = request.getParameter("cardNo");
        String cardType = request.getParameter("cardType");
        String cvvNo = request.getParameter("cvvNo");
        String validity=request.getParameter("password");
       
    
        ps = con.prepareStatement("INSERT INTO payment VALUES(concat('B',b_id_seq.nextval),?,'29/06/2013',?,?,?,?,?)");
                ps.setString(1,user_id);
                ps.setString(2,song_id);
                 ps.setString(3,cardType);
               ps.setString(4,cardNo);
                  ps.setString(5,cvvNo);
                 ps.setString(6,validity);
               
                 int i=ps.executeUpdate();
                    if(i>0)
                        {
                 response.sendRedirect("download.jsp");
                 }
                 }
    catch (Exception e) { 
		     out.println("Error: "+e);
		
                     }
            }
    else{
   %>   <jsp:forward page="home.jsp"></jsp:forward>
           
           <% }%>
    </body>
</html>
