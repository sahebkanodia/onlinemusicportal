package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import myClass.*;

public final class song_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>Musica Web Services</title>\n");
      out.write("        <link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String user_id = (String) session.getAttribute("user_id");

            if (user_id != null) {
                Connection con = MyConnection.getCon();
                String song_id = (String) request.getParameter("songId");
                PreparedStatement ps1 = con.prepareStatement("Select * from Song where songId=" + song_id);
                //  ps1.setString(1, song_id);
                String Query = "Select * from Song";
                ResultSet rs1 = ps1.executeQuery(Query);

                if (rs1.next()) {
        
      out.write("\n");
      out.write("        <form name=\"form1\" method=\"get\" action=\"payment.jsp\">\n");
      out.write("            <div id=\"templatemo_container\">\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_header\">\n");
      out.write("                    <div id=\"templatemo_title\">\n");
      out.write("                        <div id=\"templatemo_sitetitle\">Music <span>Layout</span></div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
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
      out.write("                        <li><a href=\"home.jsp\" class=\"current\">Main Page</a></li>\n");
      out.write("                        <li><a href=\"subpage.html\">Audios</a></li>\n");
      out.write("                        <li><a href=\"subpage.html\">Albums</a></li>  \n");
      out.write("                        <li><a href=\"subpage.html\">Artists</a></li>                      \n");
      out.write("                        <li><a href=\"contact.html\" class=\"lastmenu\">Contact</a></li>            \n");
      out.write("                    </ul>  \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_content\">\n");
      out.write("                    <div id=\"templatemo_left_column\">\n");
      out.write("                        <h2 align=\"left\">Profile Home</h2>\n");
      out.write("                        <div class=\"left_col_box\" align=\"left\">\n");
      out.write("                            <input name=\"viewSongs\" type=\"button\" value=\"View All Songs\" onClick=\"window.location='viewAllSongs.jsp'\">\n");
      out.write("                            <p></p>\n");
      out.write("                            <input name=\"viewProfile\" type=\"button\" value=\"View My Profile\" onClick=\"window.location='userprofile.jsp'\">\n");
      out.write("                    </div></div>\n");
      out.write("                    \n");
      out.write("                    <div id=\"templatemo_right_column\">\n");
      out.write("                        <!-- Code Here -->\n");
      out.write("                        <div class=\"templatemo_right_panel_fullwidth\">\n");
      out.write("                            <h1 align=\"left\">");
      out.print(rs1.getString(2));
      out.write("</h1><p></p>\n");
      out.write("                            <div class=\"templatemo_right_panel_fullwidth_content\">\n");
      out.write("                                \n");
      out.write("                                <div class=\"templatemo_right_panel_fullwidth_content\">\n");
      out.write("                                    <h3>Album: ");
      out.print(rs1.getString(3));
      out.write("</h3>\n");
      out.write("                                    ");
      out.print(rs1.getString(2));
      out.write("        \n");
      out.write("                                    <p>ARTIST: ");
      out.print(rs1.getString(4));
      out.write("</p>     <p>GENRE: ");
      out.print(rs1.getString(5));
      out.write("</p>     <p>RELEASEYEAR: ");
      out.print(rs1.getString(6));
      out.write("</p>\n");
      out.write("                                    <p>DURATION: ");
      out.print(rs1.getString(7));
      out.write("</p>       <p>TYPE: ");
      out.print(rs1.getString(8));
      out.write("</p>      <p>COST: Rs");
      out.print(rs1.getString(9));
      out.write("</p>\n");
      out.write("                                    \n");
      out.write("                                    ");
 String source = rs1.getString(2) + "." + rs1.getString(8); 
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    <div align = \"left\">\n");
      out.write("                                        \n");
      out.write("                                        <audio controls>\n");
      out.write("                                            <source src=\"upload\\\\'");
      out.print(source);
      out.write("'\" type=\"audio/mpeg\" />\n");
      out.write("                                            Your browser does not support the audio element.\n");
      out.write("                                    </audio>     <p><p></div> \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    <input name=\"purchase\" button type=\"button\" value=\"Purchase this Song\" onClick=\"window.location='payment.jsp'\">       \n");
      out.write("                                </div> \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                        </div></div>\n");
      out.write("                </div></div>        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div id=\"templatemo_footer\">\n");
      out.write("                    Copyright © <a href=\"home.jsp\"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href=\"contact.html\" target=\"_blank\" >Musica Buds</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        ");
            }
        } else {
        
      out.write("\n");
      out.write("        ");
      if (true) {
        _jspx_page_context.forward("home.jsp");
        return;
      }
      out.write("\n");
      out.write("        ");

            }
        
      out.write("\n");
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
