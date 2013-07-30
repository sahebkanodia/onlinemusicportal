<%-- 
    Document   : admin
    Created on : 27 Jun, 2013, 4:29:23 PM
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
    <%  String adminId=request.getParameter("adminId");
            String password=request.getParameter("password");
            
            try
            {
            Connection con = MyConnection.getCon();
            PreparedStatement ps = con.prepareStatement("Select adminName from admin where adminId=? and adminPassword=?");
            ps.setString(1,adminId);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            
           
            if(rs.next())
           { 
               %>
               
               <form name="form6" method="post" action="admin.jsp">
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
    <h2>Administrator Login</h2>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<div class="new_released_box">
                
      <form action="" method="post" name="regn">
      
      <table width="50" border="0" cellspacing="1">
  <tr>
    <td>Username&nbsp;:&nbsp;</td>
    <td><span id="sprytextfield1">
      <input type="adminId" name="adminId" id="adminId" />
      <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr><p>
  <p>
  <tr>
    <td>Password&nbsp;:&nbsp;</td>
    <td><span id="sprypassword1">
      <label for="password"></label>
      <input type="password" name="password" id="password"/><p>
      <span class="passwordRequiredMsg">A value is required.</span></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td><p></p>
    <td align="center"><input name="submit" type="button" value="Submit" /></td>
  </tr>
  
  
  
 </table>
      </form>        
                </div></div>
    </div></div>
  <div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="#"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
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
<%
               session.setAttribute("adminId",adminId);
                response.sendRedirect("adminhome.jsp");
               }
            else
                {
                %>
                <jsp:forward page="admin.jsp"></jsp:forward>
                <%
                }
            }
            catch(Exception e)
            {e.printStackTrace();}        
            %>
        </form>       
</body>
