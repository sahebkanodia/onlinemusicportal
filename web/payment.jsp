<%-- 
    Document   : payment
    Created on : 29 Jun, 2013, 12:06:32 AM
    Author     : radhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
%@ page import="java.sql.*" %>
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
    String user_id = (String)session.getAttribute("user_id");

     if(user_id!=null)
          {
         String song_id = (String)session.getAttribute("song_id");
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
			<li><a href="subpage.html">Videos</a></li>
            <li><a href="subpage.html">Audios</a></li>
            <li><a href="subpage.html">Albums</a></li>  
            <li><a href="subpage.html">Artists</a></li>                      
            <li><a href="subpage.html" class="lastmenu">Contact</a></li>            
        </ul>  
    </div>
    
    <div id="templatemo_content">
    <h2>Payment Portal</h2>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<div class="new_released_box">
                
      <form action="payment2.jsp" method="post" name="payment">
      
      <table width="50" border="0" cellspacing="1">
  <tr>
    <td>Card No.&nbsp;:&nbsp;</td>
    <td><span id="sprytextfield1">
      <input type="text" name="cardNo" id="cardNo" />
      <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr><p>
  <tr>
    <td>Type&nbsp;:&nbsp;</td>
    <td align="left"><select name="cardType" size="1" >
      <option value="visa">VISA</option>
      <option value="mastercard">MasterCard</option>
      <option value="americanexpress">American Express</option>
      <option value="maestro">Maestro</option>
    </select></td>
  </tr><p>
  <tr>
    <td>CVV No.&nbsp;:&nbsp;</td>
    <td align="center"><span id="sprytextfield7">
      
      <input type="text" name="cvvNo" id="cvvNo">
      <span class="textfieldRequiredMsg">A value is required.</span></span></td>
  </tr><p>
  <tr>
    <td>Valid Through:&nbsp;:&nbsp;</td>
    <td>
      <input type="text" name="password" id="password" /><p>
      </td>
  </tr>
  <tr>
    <td>&nbsp;</td><p></p>
    <td align="center"><input name="submit" type="button" value="Submit" onclick="window.location='payment2.jsp'"/></td>
  </tr>
  
  
  
 </table>
      </form>        
                </div></div>
    </div></div>
  <div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="#"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="" target="_blank" >Musica Buds</a>
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
<% } 
    
    %>
</body>
</html>