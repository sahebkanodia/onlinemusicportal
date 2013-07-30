<%-- 
    Document   : viewAllUsers
    Created on : 28 Jun, 2013, 3:08:11 AM
    Author     : radhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="myClass.*" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Musica Web Services</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form name="form2" method="post" action="viewAllUsers.jsp">
<div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">Music <span>Layout</span></div>
        </div>
        
        <div id="templatemo_login">
        </div>
    </div>

	<div id="templatemo_banner">
       	<div id="templatemo_banner_text">
            <div id="banner_title">Welcome To Music Store</div>
            <p>
            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for. 
    	</div>
	</div>
    
    <div id="templatemo_menu">
     	<ul>
			<li><a href="index.html" class="current">Main Page</a></li>
	<li><a href="subpage.html">Audios</a></li>
            <li><a href="subpage.html">Albums</a></li>  
            <li><a href="subpage.html">Artists</a></li>                      
            <li><a href="contact.html" class="lastmenu">Contact</a></li>            
        </ul>  
    </div>
    
    <div id="templatemo_content">
    <div id="templatemo_left_column">
    <h2 align="left">View All Users</h2>
     <div id="templatemo_left_column">
    <div class="left_col_box" align="left">
    <input name="toHome" type="button" value="Back to Home" onClick="window.location='adminhome.jsp'">
    <p></p>
    <input name="logout" type="button" value="Logout" onClick="window.location='alogout.jsp'">
    </div></div>
    
    </div>
    
    <div id="templatemo_right_column">
            <div class="templatemo_right_panel_fullwidth">
            	<h1 align ="left">Administrator</h1>
            	<p></p>
                <div class="templatemo_right_panel_fullwidth_content">
                	
             <div class="templatemo_right_panel_fullwidth_content">
                	
                  <%
String adminId = (String)session.getAttribute("adminId");

     if(adminId!=null)
          {
          Connection con = MyConnection.getCon();
  try
    {
                       PreparedStatement ps = con.prepareStatement("Select * from userDb");
   ResultSet rs = ps.executeQuery( );
   %>
                    
                    <table width="95%" border="1" cellspacing="1" cellpadding="1"> 

  <tr>
    <td align="center">UserID</td>
    <td align="center">Name</td>
    <td align="center">Password</td>
    <td align="center">e-Mail</td>
    <td align="center">Address</td>
    <td align="center">Phone No.</td>
    <td align="center">Gender</td>
    <td align="center">D.O.B</td>
  </tr>
  <% 
while (rs.next ())
    {
    String userId=rs.getString(1);
    %> 
  <tr>
    <td align="center"><%=rs.getString(1)%></td>
    <td align="center"><%=rs.getString(3)%></td>
    <td align="center"><%=rs.getString(2)%></td>
    <td align="center"><%=rs.getString(5)%></td>
    <td align="center"><%=rs.getString(4)%></td>
    <td align="center"><%=rs.getString(6)%></td>
    <td align="center"><%=rs.getString(7)%></td>
    <td align="center"><%=rs.getString(8)%></td>
  </tr>
  <% 
}
   
   %>
</table>

<% 
   }
  catch(Exception e)
          {
      out.println(e);
  }}
            %>   
                </div>
                

                
                </div>
                </div>
    </div></div>        
            
     
    
	<div id="templatemo_footer">
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
	</div>
</div>
</form>
</body>
</html>