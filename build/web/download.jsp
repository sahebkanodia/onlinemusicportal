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
        String user_id = (String)session.getAttribute("user_id");
    
    if(user_id!=null)
        {%>
<div id="templatemo_container">

	<div id="templatemo_header">
    	<div id="templatemo_title">
            <div id="templatemo_sitetitle">Music <span>Layout</span></div>
        </div>
        
        <div id="templatemo_login">
        	<form method="get" action="searchresult.jsp">
                <label>Search:</label>
                <select name="sWhat">
       			<option value="songName">Song Name</option>
      			<option value="genre">Genre</option>
      			<option value="artist">Artist</option>
      			<option value="album">Album</option>
                </select>
                <input class="inputfield" name="keyword" type="text" id="keyword"/>
                <input class="button" type="submit" name="Search" value="Search" />
            </form>
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
    <h2>Profile Home</h2>
    <div class="left_col_box">
    <input name="viewSongs" type="button" value="View All Songs" onClick="#">
    <p></p>
    <input name="viewProfile" type="button" value="View My Profile" onClick="#">
    </div></div>
    
    <div id="templatemo_right_column">
        	<!-- Code Here -->
            <div class="templatemo_right_panel_fullwidth">
            	<h1>Payment Successful!</h1><p></p>
                <div class="templatemo_right_panel_fullwidth_content">
                	
             <div class="templatemo_right_panel_fullwidth_content">
                	<h3>Song Name Here</h3>
                    <img src="images/image02(140x140).jpg" alt="image" /> 
                    <p>Nunc quis sem nec tellus blandit tincidunt. Duis mollis aliquet ligula. Maecenas adipiscing elementum vitae velit sed dui malesuada dignissim. Donec mollis aliquet ligula. Maecenas adipiscing elementum ipsum. </p>
                    <p>Lorem ipsum nunc quis sem dolor sit amet, consectetuer adipiscing elit. Nunc quis sem nec tellus blandit tincidunt. Duis mollis aliquet ligula. Maecenas adipiscing elementum vitae velit sed dui malesuada dignissim. Donec mollis aliquet ligula. Maecenas adipiscing elementum ipsum. </p>
                    
                    <a href="download2.jsp">Download This Music File</a>       
              </div> 
             
                
                
                </div></div>
    </div></div>        
            
     
    
	<div id="templatemo_footer">
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
	</div>
</div>
  <% } %>
</body>
</html>