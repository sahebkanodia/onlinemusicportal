

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

<!-- Validation Begins -->
<script type="text/javascript">
function validate()
{
 
   if( document.regn.name.value == "" )
   {
     alert( "Please provide your name!" );
     document.regn.name.focus() ;
     return false;
   }
   if( document.regn.addr.value == "" )
   {
     alert( "Please provide your Address!" );
     document.regn.addr.focus() ;
     return false;
   }
  	var x=document.forms["regn"]["email"].value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  	{
  	alert("Not a valid e-mail address");
  	return false;
	}
   if( document.regn.contact.value == "" ||
           isNaN( document.regn.contact.value ) ||
           document.regn.contact.value.length != 10 )
   {
     alert( "Please provide a 10 digit Contact Number!" );
     document.regn.contact.focus() ;
     return false;
   }
   if( document.regn.dob.value == "" )
   {
     alert( "Please provide your Date of Birth!" );
     document.regn.dob.focus() ;
     return false;
   }
   var passid = document.regn.password;
   var passid_len = passid.value.length;  
	if (passid_len == 0 || passid_len >= 10 || passid_len < 5)  
	{  
	alert("Password should not be empty | Length  should be between "+5+" to "+10);  
	passid.focus();  
	return false;  
	}  
    return( true );
}

</script>
<!-- Validation Ends -->
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
        String gender=request.getParameter("gender");
        String dob=request.getParameter("dob");
        String password=request.getParameter("password");
        
        ps = con.prepareStatement("INSERT INTO userdb VALUES(?,?,?,?,?,?,?,?)");

                 ps.setString(1,password);
                 ps.setString(2,name);
                 ps.setString(3,address);
                 ps.setString(4,email);
                 ps.setString(5,contact);
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
    <h2>Registration</h2>
    <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<div class="new_released_box">
                
      <form onSubmit="return(validate());" method="post" name="regn" action="registration.jsp">
      
      <table width="50" border="0" cellspacing="1">
  <tr>
    <td>Name&nbsp;:&nbsp;</td>
    <td><input type="text" name="name" id="name" /></td>
  </tr>
  <tr>
    <td>Address&nbsp;:&nbsp;</td>
    <td><input type="text" name="addr" id="addr"></td>
  </tr>
  <tr>
    <td>E-Mail&nbsp;:&nbsp;</td>
    <td><input type="text" name="email" id="email" /></td>
  </tr>
  <tr>
    <td>Contact&nbsp;:&nbsp;</td>
    <td><input type="text" name="contact" id="contact" /></td>
  </tr>
  <tr>
    <td>Gender&nbsp;:&nbsp;</td>
    <td align="left"><select name="gender" size="1" >
      <option value="male">Male</option>
      <option value="female">Female</option>
    </select></td>
  </tr>
  <tr>
    <td>D.O.B&nbsp;:&nbsp;</td>
    <td align="center"><input type="text" name="dob" id="dob" /></td>
  </tr>
  <tr>
    <td>Password&nbsp;:&nbsp;</td>
    <td><input type="password" name="password" id="password" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center">  <input name="submit" type="submit" value="Submit" /></td>
  </tr>
 </table>
      </form>        
                </div></div>
              
    </div></div>
  <div id="templatemo_footer">
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
</script>

</body>
</html>
