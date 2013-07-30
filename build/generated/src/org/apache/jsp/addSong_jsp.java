package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import myClass.*;

public final class addSong_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Musica Web Services</title>\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"SpryAssets/SpryValidationTextField.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"SpryAssets/SpryValidationRadio.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"SpryAssets/SpryValidationTextarea.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"SpryAssets/SpryValidationPassword.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"SpryAssets/SpryValidationTextField.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"SpryAssets/SpryValidationRadio.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"SpryAssets/SpryValidationTextarea.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"SpryAssets/SpryValidationPassword.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   ");
 
    String adminId = (String)session.getAttribute("adminId");
    
    if(adminId!=null)
        { 
      out.write("\r\n");
      out.write("<div id=\"templatemo_container\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"templatemo_header\">\r\n");
      out.write("    \t<div id=\"templatemo_title\">\r\n");
      out.write("            <div id=\"templatemo_sitetitle\">MUSICA</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"templatemo_login\">\r\n");
      out.write("        \t\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"templatemo_banner\">\r\n");
      out.write("       \t<div id=\"templatemo_banner_text\">\r\n");
      out.write("            <div id=\"banner_title\">The Online Mega Music Store</div>\r\n");
      out.write("            <p>\r\n");
      out.write("            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for.\r\n");
      out.write("            </p>\r\n");
      out.write("    \t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"templatemo_menu\">\r\n");
      out.write("     \t<ul>\r\n");
      out.write("\t\t\t<li><a href=\"index.html\" class=\"current\">Main Page</a></li>\r\n");
      out.write("            <li><a href=\"subpage.html\">Audios</a></li>\r\n");
      out.write("            <li><a href=\"subpage.html\">Albums</a></li>  \r\n");
      out.write("            <li><a href=\"subpage.html\">Artists</a></li>                      \r\n");
      out.write("            <li><a href=\"contact.html\" class=\"lastmenu\">Contact</a></li>            \r\n");
      out.write("        </ul>  \r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"templatemo_content\">\r\n");
      out.write("    <h2>Add a New Song</h2>\r\n");
      out.write("     <div id=\"templatemo_left_column\">\r\n");
      out.write("    <div class=\"left_col_box\">\r\n");
      out.write("    <input name=\"toHome\" type=\"button\" value=\"Back to Home\" onClick=\"window.location='adminhome.jsp'\">\r\n");
      out.write("    <p></p>\r\n");
      out.write("    <input name=\"logout\" type=\"button\" value=\"Logout\" onClick=\"window.location='alogout.jsp'\">\r\n");
      out.write("    </div></div>\r\n");
      out.write("    <div id=\"templatemo_right_column\">\r\n");
      out.write("        \t<div id=\"new_released_section\">\r\n");
      out.write("           \t  <div class=\"new_released_box\">\r\n");
      out.write("                \r\n");
      out.write("      \r\n");
      out.write("      <table width=\"500\" border=\"0\" cellspacing=\"1\">\r\n");
      out.write("          <form action=\"UploadServlet1\" method=\"post\"  enctype=\"multipart/form-data\">\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Song Name :</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield1\">\r\n");
      out.write("      <input type=\"text\" name=\"songName\" id=\"songName\" />\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr><p>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Genre :</td>\r\n");
      out.write("    <td align=\"center\"><select name=\"genre\" size=\"1\" >\r\n");
      out.write("      <option value=\"Hip Hop\">Hip Hop</option>\r\n");
      out.write("      <option value=\"Rock\">Rock</option>\r\n");
      out.write("      <option value=\"Electro House\">Electro House</option>\r\n");
      out.write("      <option value=\"Pop Rock\">Pop Rock</option>\r\n");
      out.write("      <option value=\"Pop\">Pop</option>\r\n");
      out.write("      <option value=\"R&B\">R&B </option>\r\n");
      out.write("      <option value=\"Dance\">Dance</option>\r\n");
      out.write("      <option value=\"Acoustic\">Acoustic</option>\r\n");
      out.write("      <option value=\"Electropop\">Electropop</option>\r\n");
      out.write("      <option value=\"Comedy\">Comedy</option>\r\n");
      out.write("      <option value=\"Country\">Country</option>\r\n");
      out.write("    </select></td>\r\n");
      out.write("  </tr><p>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Artist: </td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"artist\" id=\"artist\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr><p>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Album</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"album\" id=\"album\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Release Year :</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"year\" id=\"year\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Duration :</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"duration\" id=\"duration\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Type :</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"type\" id=\"type\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Cost :</td>\r\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\r\n");
      out.write("      \r\n");
      out.write("      <input type=\"text\" name=\"cost\" id=\"cost\">\r\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>Song Location</td>\r\n");
      out.write("    \r\n");
      out.write("      <td align=\"center\"><input name=\"file\" type=\"file\"  /></td>  \r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>&nbsp;</td><p></p>\r\n");
      out.write("    <td align=\"center\"><input name=\"submit\" type=\"submit\" value=\"Submit\" /></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</form>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write(" </table>\r\n");
      out.write("              \r\n");
      out.write("              </div></div>\r\n");
      out.write("    </div></div>\r\n");
      out.write("  <div id=\"templatemo_footer\">\r\n");
      out.write("        <a href=\"#\">Home</a> | <a href=\"#\">Videos</a> | <a href=\"#\">Audios</a> | <a href=\"#\">Albums</a> | <a href=\"#\">Artists</a> | <a href=\"#\">Contact</a><br />\r\n");
      out.write("        Copyright © <a href=\"#\"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href=\"contact.html\" target=\"_blank\" >Musica Buds</a>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var sprytextfield1 = new Spry.Widget.ValidationTextField(\"sprytextfield1\");\r\n");
      out.write("var sprytextfield2 = new Spry.Widget.ValidationTextField(\"sprytextfield2\");\r\n");
      out.write("var sprytextfield3 = new Spry.Widget.ValidationTextField(\"sprytextfield3\");\r\n");
      out.write("var spryradio1 = new Spry.Widget.ValidationRadio(\"spryradio1\");\r\n");
      out.write("var sprytextfield4 = new Spry.Widget.ValidationTextField(\"sprytextfield4\");\r\n");
      out.write("var sprytextarea1 = new Spry.Widget.ValidationTextarea(\"sprytextarea1\");\r\n");
      out.write("var sprytextfield5 = new Spry.Widget.ValidationTextField(\"sprytextfield5\");\r\n");
      out.write("var sprypassword1 = new Spry.Widget.ValidationPassword(\"sprypassword1\");\r\n");
      out.write("var sprytextfield6 = new Spry.Widget.ValidationTextField(\"sprytextfield6\");\r\n");
      out.write("var sprytextfield7 = new Spry.Widget.ValidationTextField(\"sprytextfield7\");\r\n");
      out.write("</script>\r\n");
      out.write("        ");
 }
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
