<%-- 
    Document   : song
    Created on : 27 Jun, 2013, 9:15:01 AM
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
        <%
            String user_id = (String) session.getAttribute("user_id");

            if (user_id != null) {
                Connection con = MyConnection.getCon();
                String song_id = (String) request.getParameter("songId");
                PreparedStatement ps2 = con.prepareStatement("Select * from Song where SONGID=" +song_id);
                //  ps1.setString(1, song_id);
                String Query = "Select * from Song";
                ResultSet rs2 = ps2.executeQuery(Query);

                if (rs2.next()) {
        %>
        <form name="form1" method="get" action="payment.jsp">
            <div id="templatemo_container">
                
                <div id="templatemo_header">
                    <div id="templatemo_title">
                        <div id="templatemo_sitetitle">Musica</div>
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
                        <li><a href="home.jsp" class="current">Main Page</a></li>
                        <li><a href="subpage.html">Audios</a></li>
                        <li><a href="subpage.html">Albums</a></li>  
                        <li><a href="subpage.html">Artists</a></li>                      
                        <li><a href="contact.html" class="lastmenu">Contact</a></li>            
                    </ul>  
                </div>
                
                <div id="templatemo_content">
                    <div id="templatemo_left_column">
                        <h2 align="left">Profile Home</h2>
                        <div class="left_col_box" align="left">
                            <input name="viewSongs" type="button" value="View All Songs" onClick="window.location='viewAllSongs.jsp'">
                            <p></p>
                            <input name="viewProfile" type="button" value="View My Profile" onClick="window.location='userprofile.jsp'">
                    </div></div>
                    <%=song_id%>
                    <div id="templatemo_right_column">
                        <!-- Code Here -->
                        <div class="templatemo_right_panel_fullwidth">
                            <h1 align="left"><%=rs2.getString(2)%></h1><p></p>
                            <div class="templatemo_right_panel_fullwidth_content">
                                
                                <div class="templatemo_right_panel_fullwidth_content">
                                    <h3>Album: <%=rs2.getString(3)%></h3>
                                    <%=rs2.getString(2)%>        
                                    <p>ARTIST: <%=rs2.getString(4)%></p>     <p>GENRE: <%=rs2.getString(5)%></p>     <p>RELEASEYEAR: <%=rs2.getString(6)%></p>
                                    <p>DURATION: <%=rs2.getString(7)%></p>       <p>TYPE: <%=rs2.getString(8)%></p>      <p>COST: Rs<%=rs2.getString(9)%></p>
                                    
                                    <% String path="upload//";
                                           String source = path + rs2.getString(2) + "." + rs2.getString(8); %>
                                    
                                    <div align = "left">
                                        <%=source%>
                                        <% String path2=rs2.getString(10);
                                           String file=path2.substring(path2.lastIndexOf("\\")); 
                                           String file1="upload"+file;
                                           %>
                                        <audio controls>
                                            <source src="<%=source%>" type="audio/mpeg" />
                                            Your browser does not support the audio element.
                                    </audio>     <p><p></div> 
                                    
                                    
                                    
                                    
                                    <input name="purchase" type="button" value="Purchase this Song" onClick="window.location='payment.jsp'">       
                                </div> 
                                
                                
                                
                        </div></div>
                </div></div>        
                
                
                
                <div id="templatemo_footer">
                    Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
                </div>
            </div>
        </form>
        <%         
            session.setAttribute("song_id",song_id);
                 }
        } else {
        %>
        <jsp:forward page="home.jsp"></jsp:forward>
        <%
            }
        %>
    </body>
</html>
