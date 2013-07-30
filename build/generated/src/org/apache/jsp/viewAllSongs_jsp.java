package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import myClass.*;

public final class viewAllSongs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>Musica Web Services</title>\n");
      out.write("        <link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"form2\" method=\"post\" action=\"viewAllSongs.jsp\">\n");
      out.write("            \n");
      out.write("            <div id=\"templatemo_container\">\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_header\">\n");
      out.write("                    <div id=\"templatemo_title\">\n");
      out.write("                        <div id=\"templatemo_sitetitle\">Music <span>Layout</span></div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div id=\"templatemo_login\">\n");
      out.write("                        <form method=\"get\" action=\"searchresult.jsp\">\n");
      out.write("                            <label>Search:</label>\n");
      out.write("                            <select name=\"sWhat\">\n");
      out.write("                                <option value=\"songName\">Song Name</option>\n");
      out.write("                                <option value=\"genre\">Genre</option>\n");
      out.write("                                <option value=\"artist\">Artist</option>\n");
      out.write("                                <option value=\"album\">Album</option>\n");
      out.write("                            </select>\n");
      out.write("                            <input class=\"inputfield\" name=\"keyword\" type=\"text\" id=\"keyword\"/>\n");
      out.write("                            <input class=\"button\" type=\"submit\" name=\"Search\" value=\"Search\" />\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_banner\">\n");
      out.write("                    <div id=\"templatemo_banner_text\">\n");
      out.write("                        <div id=\"banner_title\">Welcome To Music Store</div>\n");
      out.write("                        <p>\n");
      out.write("                        We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for. \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_menu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.html\" class=\"current\">Main Page</a></li>\n");
      out.write("                        <li><a href=\"subpage.html\">Audios</a></li>\n");
      out.write("                        <li><a href=\"subpage.html\">Albums</a></li>  \n");
      out.write("                        <li><a href=\"subpage.html\">Artists</a></li>                      \n");
      out.write("                        <li><a href=\"contact.html\" class=\"lastmenu\">Contact</a></li>            \n");
      out.write("                    </ul>  \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_content\">\n");
      out.write("                    <div id=\"templatemo_left_column\">\n");
      out.write("                        <h2 align=\"left\">All Songs</h2>\n");
      out.write("                        <div id=\"templatemo_left_column\" align=\"left\">\n");
      out.write("                            <div class=\"left_col_box\">\n");
      out.write("                                <input name=\"toHome\" type=\"button\" value=\"Back to Home\" onClick=\"window.location='userhome.jsp'\">\n");
      out.write("                                <p></p>\n");
      out.write("                                <input name=\"logout\" type=\"button\" value=\"Logout\" onClick=\"window.location='logout.jsp'\">\n");
      out.write("                        </div></div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div id=\"templatemo_right_column\">\n");
      out.write("                        <div class=\"templatemo_right_panel_fullwidth\">\n");
      out.write("                            <h1 align=\"left\">Song Name</h1>\n");
      out.write("                            <p></p>\n");
      out.write("                            <div class=\"templatemo_right_panel_fullwidth_content\">\n");
      out.write("                                \n");
      out.write("                                <div class=\"templatemo_right_panel_fullwidth_content\">\n");
      out.write("                                    \n");
      out.write("                                    ");

            String user_id = (String) session.getAttribute("user_id");

            Connection con = MyConnection.getCon();
            try {
                PreparedStatement ps = con.prepareStatement("Select * from song");
                ResultSet rs = ps.executeQuery();
                                    
      out.write("\n");
      out.write("                                    <table width=\"92%\" border=\"0.5\" cellspacing=\"10\" cellpadding=\"1\">\n");
      out.write("                                        ");

                                            while (rs.next()) {
                                                String songId = rs.getString(1);

                                        
      out.write("  \n");
      out.write("                                        \n");
      out.write("                                                           \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                ");
      out.print(songId);
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td align=\"left\">\n");
      out.write("                                                ");
      out.print(rs.getString(2));
      out.write("\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <input type= \"button\" value =\"View\" onclick=\"window.location='song.jsp?songId=");
      out.print(rs.getString("songId"));
      out.write("'\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                            }
                                        
                                        
      out.write("\n");
      out.write("                                    </table>\n");
      out.write("                                    ");

            } catch (Exception e) {
                out.println(e);
            }
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                </div></div>        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_footer\">\n");
      out.write("                    Copyright © <a href=\"home.jsp\"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href=\"contact.html\" target=\"_blank\" >Musica Buds</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
