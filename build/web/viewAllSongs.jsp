
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
        <form name="form2" method="post" action="viewAllSongs.jsp">
            
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
                        <h2 align="left">All Songs</h2>
                        <div id="templatemo_left_column" align="left">
                            <div class="left_col_box">
                                <input name="toHome" type="button" value="Back to Home" onClick="window.location='userhome.jsp'">
                                <p></p>
                                <input name="logout" type="button" value="Logout" onClick="window.location='logout.jsp'">
                        </div></div>
                        
                        
                    </div>
                    
                    <div id="templatemo_right_column">
                        <div class="templatemo_right_panel_fullwidth">
                            <h1 align="left">Song Name</h1>
                            <p></p>
                            <div class="templatemo_right_panel_fullwidth_content">
                                
                                <div class="templatemo_right_panel_fullwidth_content">
                                    
                                    <%
            String user_id = (String) session.getAttribute("user_id");

            Connection con = MyConnection.getCon();
            try {
                PreparedStatement ps = con.prepareStatement("Select * from song");
                ResultSet rs = ps.executeQuery();
                                    %>
                                    <table width="92%" border="0.5" cellspacing="10" cellpadding="1">
                                        <%
                                            while (rs.next()) {
                                                String songId = rs.getString(1);

                                        %>  
                                        
                                                           
                                        <tr>
                                            <td align="left">
                                                <%=songId%>
                                            </td>
                                            <td align="left">
                                                <%=rs.getString(2)%>
                                            </td>
                                            <td>
                                                <input type= "button" value ="View" onclick="window.location='song.jsp?songId=<%=rs.getString("songId")%>'"/>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        
                                        %>
                                    </table>
                                    <%
            } catch (Exception e) {
                out.println(e);
            }
                                    %>
                                    
                                </div>
                                
                                
                                
                            </div>
                        </div>
                </div></div>        
                
                
                
                <div id="templatemo_footer">
                    Copyright © <a href="home.jsp"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href="contact.html" target="_blank" >Musica Buds</a>
                </div>
            </div>
        </form>
    </body>
</html>
