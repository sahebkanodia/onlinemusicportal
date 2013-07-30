package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import myClass.*;

public final class payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("%@ page import=\"java.sql.*\" %>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Musica Web Services</title>\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"SpryAssets/SpryValidationTextField.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"SpryAssets/SpryValidationRadio.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"SpryAssets/SpryValidationTextarea.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"SpryAssets/SpryValidationPassword.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script src=\"SpryAssets/SpryValidationTextField.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"SpryAssets/SpryValidationRadio.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"SpryAssets/SpryValidationTextarea.js\" type=\"text/javascript\"></script>\n");
      out.write("<script src=\"SpryAssets/SpryValidationPassword.js\" type=\"text/javascript\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

    String user_id = (String)session.getAttribute("user_id");

     if(user_id!=null)
          {
      out.write("\n");
      out.write("<div id=\"templatemo_container\">\n");
      out.write("\n");
      out.write("\t<div id=\"templatemo_header\">\n");
      out.write("    \t<div id=\"templatemo_title\">\n");
      out.write("            <div id=\"templatemo_sitetitle\">MUSICA</div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"templatemo_login\">\n");
      out.write("        \t\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\t<div id=\"templatemo_banner\">\n");
      out.write("       \t<div id=\"templatemo_banner_text\">\n");
      out.write("            <div id=\"banner_title\">The Online Mega Music Store</div>\n");
      out.write("            <p>\n");
      out.write("            We at Musica bring you the best Music in the industry at the right price and quality. We are known for our 100% customer satisfaction and diversity in genre. Experience now the quality music you have been waiting for.\n");
      out.write("            </p>\n");
      out.write("    \t</div>\n");
      out.write("\t</div>\n");
      out.write("    \n");
      out.write("    <div id=\"templatemo_menu\">\n");
      out.write("     \t<ul>\n");
      out.write("\t\t\t<li><a href=\"index.html\" class=\"current\">Main Page</a></li>\n");
      out.write("\t\t\t<li><a href=\"subpage.html\">Videos</a></li>\n");
      out.write("            <li><a href=\"subpage.html\">Audios</a></li>\n");
      out.write("            <li><a href=\"subpage.html\">Albums</a></li>  \n");
      out.write("            <li><a href=\"subpage.html\">Artists</a></li>                      \n");
      out.write("            <li><a href=\"subpage.html\" class=\"lastmenu\">Contact</a></li>            \n");
      out.write("        </ul>  \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div id=\"templatemo_content\">\n");
      out.write("    <h2>Payment Portal</h2>\n");
      out.write("    <div id=\"templatemo_right_column\">\n");
      out.write("        \t<div id=\"new_released_section\">\n");
      out.write("            \t<div class=\"new_released_box\">\n");
      out.write("                \n");
      out.write("      <form action=\"payment2.jsp\" method=\"post\" name=\"payment\">\n");
      out.write("      ");
 String song_id=request.getParameter("song_id");
      out.write("\n");
      out.write("      <table width=\"50\" border=\"0\" cellspacing=\"1\">\n");
      out.write("  <tr>\n");
      out.write("    <td>Card No.&nbsp;:&nbsp;</td>\n");
      out.write("    <td><span id=\"sprytextfield1\">\n");
      out.write("      <input type=\"text\" name=\"cardNo\" id=\"cardNo\" />\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\n");
      out.write("  </tr><p>\n");
      out.write("  <tr>\n");
      out.write("    <td>Type&nbsp;:&nbsp;</td>\n");
      out.write("    <td align=\"left\"><select name=\"cardType\" size=\"1\" >\n");
      out.write("      <option value=\"visa\">VISA</option>\n");
      out.write("      <option value=\"mastercard\">MasterCard</option>\n");
      out.write("      <option value=\"americanexpress\">American Express</option>\n");
      out.write("      <option value=\"maestro\">Maestro</option>\n");
      out.write("    </select></td>\n");
      out.write("  </tr><p>\n");
      out.write("  <tr>\n");
      out.write("    <td>CVV No.&nbsp;:&nbsp;</td>\n");
      out.write("    <td align=\"center\"><span id=\"sprytextfield7\">\n");
      out.write("      \n");
      out.write("      <input type=\"text\" name=\"cvvNo\" id=\"cvvNo\">\n");
      out.write("      <span class=\"textfieldRequiredMsg\">A value is required.</span></span></td>\n");
      out.write("  </tr><p>\n");
      out.write("  <tr>\n");
      out.write("    <td>Password&nbsp;:&nbsp;</td>\n");
      out.write("    <td><span id=\"sprypassword1\">\n");
      out.write("      <label for=\"password\"></label>\n");
      out.write("      <input type=\"password\" name=\"password\" id=\"password\" /><p>\n");
      out.write("      <span class=\"passwordRequiredMsg\">A value is required.</span></span></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>&nbsp;</td><p></p>\n");
      out.write("    <td align=\"center\"><input name=\"submit\" type=\"button\" value=\"Submit\" onclick=\"window.location='download.jsp'\"/></td>\n");
      out.write("  </tr>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write(" </table>\n");
      out.write("      </form>        \n");
      out.write("                </div></div>\n");
      out.write("    </div></div>\n");
      out.write("  <div id=\"templatemo_footer\">\n");
      out.write("        <a href=\"#\">Home</a> | <a href=\"#\">Videos</a> | <a href=\"#\">Audios</a> | <a href=\"#\">Albums</a> | <a href=\"#\">Artists</a> | <a href=\"#\">Contact</a><br />\n");
      out.write("        Copyright © <a href=\"#\"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href=\"\" target=\"_blank\" >Musica Buds</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("var sprytextfield1 = new Spry.Widget.ValidationTextField(\"sprytextfield1\");\n");
      out.write("var sprytextfield2 = new Spry.Widget.ValidationTextField(\"sprytextfield2\");\n");
      out.write("var sprytextfield3 = new Spry.Widget.ValidationTextField(\"sprytextfield3\");\n");
      out.write("var spryradio1 = new Spry.Widget.ValidationRadio(\"spryradio1\");\n");
      out.write("var sprytextfield4 = new Spry.Widget.ValidationTextField(\"sprytextfield4\");\n");
      out.write("var sprytextarea1 = new Spry.Widget.ValidationTextarea(\"sprytextarea1\");\n");
      out.write("var sprytextfield5 = new Spry.Widget.ValidationTextField(\"sprytextfield5\");\n");
      out.write("var sprypassword1 = new Spry.Widget.ValidationPassword(\"sprypassword1\");\n");
      out.write("var sprytextfield6 = new Spry.Widget.ValidationTextField(\"sprytextfield6\");\n");
      out.write("var sprytextfield7 = new Spry.Widget.ValidationTextField(\"sprytextfield7\");\n");
      out.write("</script>\n");
 } 
    
    
      out.write("\n");
      out.write("</body>\n");
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
