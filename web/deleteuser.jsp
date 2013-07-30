<%-- 
    Document   : deleteuser
    Created on : 28 Jun, 2013, 2:56:09 AM
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

<link href="SpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />

<script src="SpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
</head>
<body>
    <% 
    String adminId = (String)session.getAttribute("adminId");

     if(adminId!=null)
          {
          /*Connection con = MyConnection.getCon();
          String userId=(String)request.getParameter("userId");
          PreparedStatement ps1 = con.prepareStatement("Delete from userDb where userId=?");
   ps1.setString(1, userId);
   ResultSet rs1 = ps1.executeQuery();
       response.sendRedirect("adminhome.jsp");*/
          %>
    
    
<div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">MUSICA</div>
        </div>
        
        <div id="templatemo_login">
        	
        </div>
    </div>

	<div id="templatemo_banner">
       	<div id="templatemo_banner_text">
            <div id="banner_title">The Online Mega Music Store</div>
            <p>
            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for.
            </p>
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
    <h2>Delete a User</h2>
     <div id="templatemo_left_column">
    <div class="left_col_box">
    <input name="toHome" type="button" value="Back to Home" onClick="window.location='adminhome.jsp'">
    <p></p>
    <input name="logout" type="button" value="Logout" onClick="window.location='alogout.jsp'">
    </div></div>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<div class="new_released_box">
                
      <form action="opSuccessful2.jsp" method="post" name="deleteUser">
      
      <table width="350" border="0" cellspacing="15">
  <tr>
    <td>Enter User ID&nbsp;:&nbsp;</td>
    <td align="center">
    <span id="sprytextfield1">
      <input type="text" name="userId" id="userId" />
      <span class="textfieldRequiredMsg"></span></span>
    </td>
  </tr><p>
  <p><br>
 <div> <tr>
    <td>&nbsp;</td><p></p>
    <td align="center"><input name="submit" type="submit" value="Submit" /></td>
  </tr></div>
  
  
  
 </table>
      </form>        
      </div></div>
  </div></div>
  <div id="templatemo_footer">
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
  </div>
</div>
<script type="text/javascript">
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var spryradio1 = new Spry.Widget.ValidationRadio("spryradio1");
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4");
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1");
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5");
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6");
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7");
</script>
<%   }
  
    else
        {
        
               %>
                <jsp:forward page="admin.html"></jsp:forward>
           <%
                }
            %>
</body>

</html>