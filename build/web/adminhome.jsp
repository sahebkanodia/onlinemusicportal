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
     <% 
    String adminId = (String)session.getAttribute("adminId");

     if(adminId!=null)
          {
          Connection con = MyConnection.getCon();
   PreparedStatement ps1 = con.prepareStatement("Select adminName from admin where adminId=?");
   ps1.setString(1, adminId);
   ResultSet rs1 = ps1.executeQuery();
    if(rs1.next())
         {       
    %>
          
<div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">Music <span>Layout</span></div>
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
    <h2>Administrator Home</h2>
    <div class="left_col_box">
    <input name="viewAdminProfile" type="button" value="View Admin Profile" onClick="window.location='adminprofile.jsp'">
    <p></p>
    <input name="logout" type="button" value="Logout" onClick="window.location='alogout.jsp'">
    </div></div>
    
    <div id="templatemo_right_column">
        	<!-- Code Here -->
            <div class="templatemo_right_panel_fullwidth">
            	<h1>Welcome <%=rs1.getString(1)%> !!</h1>
            	<p></p>
                <div class="templatemo_right_panel_fullwidth_content">
                	
             <div class="templatemo_right_panel_fullwidth_content">
                	
                  <!-- Code Here -->  
                    <table width="200" border="0" cellspacing="5" cellpadding="3">
  <tr>
    <td>&nbsp;<input name="addSong" type="button" value="Add a New Song" onClick="window.location='addSong.jsp'"> <p></td>
    <td>&nbsp;<input name="deleteSong" type="button" value="Delete Song" onClick="window.location='deleteSong.jsp'"> <p></td>
  </tr>
  <tr>
    <td><input name="viewUserDetails" type="button" value="View User Details" onClick="window.location='viewAllUsers.jsp'"> 
      <p></td>
      <td><input name="viewPaymentHistory" type="button" value="View Payment History" onClick="window.location='viewPaymentHistory.jsp'"> 
      <p></td>
  </tr><p><p><p><p></table>
  <table width="250" border="0" cellspacing="1" cellpadding="1"><tr>
    <td align="center" >&nbsp;<input name="deleteUser" type="button" value="Delete User" onClick="window.location='deleteuser.jsp'"> <p></td>
  </tr>
</table>
              
                </div></div></div>
    </div></div>        
            
     
    
	<div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
	</div>
</div>
<%   }
     }
  
    else
        {
        
               %>
                <jsp:forward page="admin.html"></jsp:forward>
           <%
                }
            %>
</body>
</html>