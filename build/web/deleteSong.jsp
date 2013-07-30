

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="myClass.*" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Musica Web Services</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationRadio.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationRadio.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
</head>
<body>
     <% 
    String adminId = (String)session.getAttribute("adminId");

     if(adminId!=null)
          {
        /* Connection con = MyConnection.getCon();
   PreparedStatement ps=null;
   String songId=(String)request.getParameter("songId");
   PreparedStatement ps1 = con.prepareStatement("Delete from song where songId=?");
   int i = ps1.executeUpdate();
   if(i>0)
       {
       response.sendRedirect("adminhome.jsp");
   }*/
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
    <h2>Delete a Song</h2>
     <div id="templatemo_left_column">
     <div class="left_col_box">
    <input name="toHome" type="button" value="Back to Home" onClick="window.location='adminhome.jsp'">
    <p></p>
    <input name="logout" type="button" value="Logout" onClick="window.location='alogout.jsp'">
    </div></div>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<div class="new_released_box">
                
      <form action="opSuccessful.jsp" method="post" name="deleteSong">
      
      <table width="300" border="0" cellspacing="15">
  <tr>
    <td>Enter Song ID&nbsp;:&nbsp;</td>
    <td align="center"><span id="sprytextfield1">
      <input type="text" name="songId" id="songId" />
      <span class="textfieldRequiredMsg">A value is required.</span></span></td>
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
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
  </div>
</div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
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