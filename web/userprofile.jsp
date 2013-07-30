<%-- 
    Document   : userprofile
    Created on : 26 Jun, 2013, 12:49:37 AM
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
    <% 
    String user_id = (String)session.getAttribute("user_id");
    
    if(user_id!=null)
        {
            Connection con = MyConnection.getCon();
   PreparedStatement ps = con.prepareStatement("Select * from UserDb where userId="+user_id);
   //ps.setString(1, user_id);
  String Query="Select * from UserDb";
   ResultSet rs = ps.executeQuery(Query);
 if(rs.next())
     {
   %>
<form name="form2" method="post" action="userprofile.jsp">
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
            <li><a href="viewAllSongs.jsp">Audios</a></li>
            <li><a href="subpage.html">Albums</a></li>  
            <li><a href="subpage.html">Artists</a></li>                      
            <li><a href="contact.html" class="lastmenu">Contact</a></li>            
        </ul>  
    </div>
    
    <div id="templatemo_content">
       
       <div align="left"> <h2 >Profile</h2></div>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
                     <div class="new_released_box">
                <!-- code here -->  
                <p>
                    <table width="300" border="0" cellspacing="3" cellpadding="3">
                <tr>
                <td align="left">Name :</td>
                <td align="left"><%=rs.getString(3)%></td>
            </tr>
                <p><tr>
                <td align="left">D.O.B :</td>
                <td align="left"><%=rs.getString(8)%></td>
                <p>
                <tr>
                <td align="left">Address :</td>
                <td align="left"><%=rs.getString(4)%></td>
                <p>
               <tr>
               <td align="left">E-mail :</td>
               <td align="left"><%=rs.getString(5)%></td>
                <p>
               <tr>
               <td align="left">Contact Number :</td>
               <td align="left"><%=rs.getString(6)%></td>
                <p>
               <tr>
               <td align="left">Gender :</td>
               <td align="left"><%=rs.getString(7)%></td>
                <p>
            </table>
                <p><p><p>
                   <div align="center"><input name="home" type="button" value="Back to Home" onClick="window.location='userhome.jsp'"></div>  <p><p><p><p><p><p>
                </div></div>
    </div></div>
  <div id="templatemo_footer">
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
  </div>
</div>
</form>
<% 
 }
   }
  
   // else
      //  {
                %>
              <%-- <jsp:forward page="index.html"></jsp:forward> --%>
           <%
            // }
            %>
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
</body>
