package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addSong1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<div id=\"templatemo_right_column\">\r\n");
      out.write("        \t<div id=\"new_released_section\">\r\n");
      out.write("           \t  <div class=\"new_released_box\">\r\n");
      out.write("                \r\n");
      out.write("      \r\n");
      out.write("      <table width=\"500\" border=\"0\" cellspacing=\"1\">\r\n");
      out.write("          <form action=\"UploadServlet1\" method=\"post\">\r\n");
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
      out.write("      ");
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
