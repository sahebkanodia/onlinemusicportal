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
           
           //String msg2=null;
          String msg2=(String)session.getAttribute("msg");
            if(msg2==null)
                {
             
               %>    
                <form name="form1" method="post" action="userhome.jsp">
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
            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for. All you need is to have an account. Go ahead and create one now.
            </p> 
            <input class="more_button" type="button" name="signup" value="SignUp" onclick="window.location='regn.jsp'"/>
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
    
    	<div id="templatemo_left_column">
            <h2 align="left">Customer Login</h2>
            <div class="left_col_box">
                
                    <p id="p1"></p>
                    
                  <div class="form_row"><label>User ID</label><input class="inputfield" name="A_user_id" type="text" id="A_user_id"/></div>
                    <div class="form_row"><label>Password</label><input class="inputfield" name="A_password" type="password" id="A_password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login" />
               
			</div>
            
            <h2 align ="left">Latest News</h2>
            <div class="left_col_box">
                <div class="blog_box">
                    <h3>Cheryl Cole named star with 'tattiest' tattoos</h3>
                    A celebrity publication had last week asked its readers to vote for the star who had screwed up their looks with body art. And guess who's the winner?<br />
                    
				</div>
                <div class="blog_box">
                    <h3>Jen decides baby name</h3>
                    Pregnant actress Jennifer Love Hewitt is reportedly planning to name her baby after her late mother Patricia.<br />
				</div>
                <div class="blog_box">
                    <h3>Mila ignored me : Russel</h3>
                    Funnyman Russel Brand has revealed that actress Mila Kunis turned down his advances when they starred alongside in the 2008 film "Forgetting Sarah Marshall".<br />
       			</div> 
                <div class="blog_box">
                    <a href="http://validator.w3.org/check?uri=referer"></a>
    <a href="http://jigsaw.w3.org/css-validator/check/referer"></a>
				</div> 
			</div>
		</div>
        
        <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<h1 align="left">Latest Albums</h1>
            	<div class="new_released_box">
                <img src="images/image01(140x140).jpg" alt="image" />
                    <h3 align="center">Album No. 1</h3> 
                    <h4 align="center">Artist Name 1</h4>  
                    <div class="more_button" align="center"><a href="#">More</a></div>
				</div>
                <div class="new_released_box">
                <img src="images/image02(140x140).jpg" alt="image" />
                    <h3 align="center">Album No. 2</h3> 
                    <h4 align="center">Artist Name 2</h4>  
                    <div class="more_button" align="center"><a href="#">More</a></div>
				</div>
                <div class="new_released_box">
                <img src="images/image03(140x140).jpg" alt="image" />
                    <h3 align="center">Album No. 3</h3> 
                    <h4 align="center">Artist Name 3</h4>  
                    <div class="more_button" align="center"><a href="#">More</a></div></div>
				
            </div>
            
            <div class="templatemo_right_panel_fullwidth">
                <div id="news_section">
                    
                    <div class="news_box"></div>
                    <div class="more_button" style="margin-left:15px;"><a href="#">View All</a></div>
                </div> <!-- end of news -->
 
			</div>                
            
		</div>
    </div>
    	<div id="templatemo_footer">
        Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
	</div>
</div>
</form> 
    
    
               
               <%
               
               }
            else
                {
                         
             
                           %>    
                <form name="form1" method="post" action="userhome.jsp">
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
            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for. All you need is to have an account. Go ahead and create one now.
            </p> 
            <div class="more_button"><a href="regn.html">Sign Up</a></div>
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
    
    	<div id="templatemo_left_column">
            <h2>Customer Login</h2>
            <div class="left_col_box">
               
                    <p id="p1"></p>
                    <%=msg2%>
                  <div class="form_row"><label>User ID</label><input class="inputfield" name="A_user_id" type="text" id="A_user_id"/></div>
                    <div class="form_row"><label>Password</label><input class="inputfield" name="A_password" type="password" id="A_password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login">
                
			</div>
            
            <h2>Latest News</h2>
            <div class="left_col_box">
                <div class="blog_box">
                    <h3>Cheryl Cole named star with 'tattiest' tattoos</h3>
                    A celebrity publication had last week asked its readers to vote for the star who had screwed up their looks with body art. And guess who's the winner?<br />
                    
				</div>
                <div class="blog_box">
                    <h3>Jen decides baby name</h3>
                    Pregnant actress Jennifer Love Hewitt is reportedly planning to name her baby after her late mother Patricia.<br />
				</div>
                <div class="blog_box">
                    <h3>Mila ignored me : Russel</h3>
                    Funnyman Russel Brand has revealed that actress Mila Kunis turned down his advances when they starred alongside in the 2008 film "Forgetting Sarah Marshall".<br />
       			</div> 
                <div class="blog_box">
                    <a href="http://validator.w3.org/check?uri=referer"></a>
    <a href="http://jigsaw.w3.org/css-validator/check/referer"></a>
				</div> 
			</div>
		</div>
        
        <div id="templatemo_right_column">
        	<div id="new_released_section">
            	<h1>Latest Albums</h1>
            	<div class="new_released_box">
                <img src="images/image01(140x140).jpg" alt="image" />
                    <h3>Album No. 1</h3> 
                    <h4>Artist Name 1</h4>  
              <div class="rantsection">
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/whitestar.gif" alt="star" />
                    </div>
                    <div class="more_button"><a href="#">More</a></div>
				</div>
                <div class="new_released_box">
                <img src="images/image02(140x140).jpg" alt="image" />
                    <h3>Album No. 2</h3> 
                    <h4>Artist Name 2</h4>  
                    <div class="rantsection">
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/whitestar.gif" alt="star" />
                        <img class="star" src="images/whitestar.gif" alt="star" />
                    </div>
                    <div class="more_button"><a href="#">More</a></div>
				</div>
                <div class="new_released_box">
                <img src="images/image03(140x140).jpg" alt="image" />
                    <h3>Album No. 3</h3> 
                    <h4>Artist Name 3</h4>  
                    <div class="rantsection">
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/yellowstar.gif" alt="star" />
                        <img class="star" src="images/whitestar.gif" alt="star" />
                        <img class="star" src="images/whitestar.gif" alt="star" />
                    </div>
                    <div class="more_button"><a href="#">More</a></div></div>
				
            </div>
            
            <div class="templatemo_right_panel_fullwidth">
                <div id="news_section">
                    
                    <div class="news_box"></div>
                    <div class="more_button" style="margin-left:15px;"><a href="#">View All</a></div>
                </div> <!-- end of news -->
 
			</div>                
            
		</div>
    </div>
    	<div id="templatemo_footer">
        <a href="#">Home</a> | <a href="#">Videos</a> | <a href="#">Audios</a> | <a href="#">Albums</a> | <a href="#">Artists</a> | <a href="#">Contact</a><br />
        Copyright © <a href="#"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="" target="_blank" >Musica Buds</a>
	</div>
</div>
</form> 
    
    
               
               <%
               
               }
            
           %>

</body>
</html>
