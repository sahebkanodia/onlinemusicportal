package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import myClass.*;

public final class regn_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!-- Validation Begins -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function validate()\n");
      out.write("{\n");
      out.write(" \n");
      out.write("   if( document.regn.name.value == \"\" )\n");
      out.write("   {\n");
      out.write("     alert( \"Please provide your name!\" );\n");
      out.write("     document.regn.name.focus() ;\n");
      out.write("     return false;\n");
      out.write("   }\n");
      out.write("   if( document.regn.addr.value == \"\" )\n");
      out.write("   {\n");
      out.write("     alert( \"Please provide your Address!\" );\n");
      out.write("     document.regn.addr.focus() ;\n");
      out.write("     return false;\n");
      out.write("   }\n");
      out.write("  \tvar x=document.forms[\"regn\"][\"email\"].value;\n");
      out.write("\tvar atpos=x.indexOf(\"@\");\n");
      out.write("\tvar dotpos=x.lastIndexOf(\".\");\n");
      out.write("\tif (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)\n");
      out.write("  \t{\n");
      out.write("  \talert(\"Not a valid e-mail address\");\n");
      out.write("  \treturn false;\n");
      out.write("\t}\n");
      out.write("   if( document.regn.contact.value == \"\" ||\n");
      out.write("           isNaN( document.regn.contact.value ) ||\n");
      out.write("           document.regn.contact.value.length != 10 )\n");
      out.write("   {\n");
      out.write("     alert( \"Please provide a 10 digit Contact Number!\" );\n");
      out.write("     document.regn.contact.focus() ;\n");
      out.write("     return false;\n");
      out.write("   }\n");
      out.write("   if( document.regn.dob.value == \"\" )\n");
      out.write("   {\n");
      out.write("     alert( \"Please provide your Date of Birth!\" );\n");
      out.write("     document.regn.dob.focus() ;\n");
      out.write("     return false;\n");
      out.write("   }\n");
      out.write("   var passid = document.regn.password;\n");
      out.write("   var passid_len = passid.value.length;  \n");
      out.write("\tif (passid_len == 0 || passid_len >= 10 || passid_len < 5)  \n");
      out.write("\t{  \n");
      out.write("\talert(\"Password should not be empty | Length  should be between \"+5+\" to \"+10);  \n");
      out.write("\tpassid.focus();  \n");
      out.write("\treturn false;  \n");
      out.write("\t}  \n");
      out.write("    return( true );\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<!-- Validation Ends -->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

    
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
   
      out.write("\n");
      out.write("   \n");
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
      out.write("\t      <li><a href=\"subpage.html\">Audios</a></li>\n");
      out.write("            <li><a href=\"subpage.html\">Albums</a></li>  \n");
      out.write("            <li><a href=\"subpage.html\">Artists</a></li>                      \n");
      out.write("            <li><a href=\"contact.html\" class=\"lastmenu\">Contact</a></li>            \n");
      out.write("        </ul>  \n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div id=\"templatemo_content\">\n");
      out.write("    <h2>Registration</h2>\n");
      out.write("    <div id=\"templatemo_right_column\">\n");
      out.write("        \t<div id=\"new_released_section\">\n");
      out.write("            \t<div class=\"new_released_box\">\n");
      out.write("                \n");
      out.write("      <form onSubmit=\"return(validate());\" method=\"post\" name=\"regn\" action=\"registration.jsp\">\n");
      out.write("      \n");
      out.write("      <table width=\"50\" border=\"0\" cellspacing=\"1\">\n");
      out.write("  <tr>\n");
      out.write("    <td>Name&nbsp;:&nbsp;</td>\n");
      out.write("    <td><input type=\"text\" name=\"name\" id=\"name\" /></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>Address&nbsp;:&nbsp;</td>\n");
      out.write("    <td><input type=\"text\" name=\"addr\" id=\"addr\"></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>E-Mail&nbsp;:&nbsp;</td>\n");
      out.write("    <td><input type=\"text\" name=\"email\" id=\"email\" /></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>Contact&nbsp;:&nbsp;</td>\n");
      out.write("    <td><input type=\"text\" name=\"contact\" id=\"contact\" /></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>Gender&nbsp;:&nbsp;</td>\n");
      out.write("    <td align=\"left\"><select name=\"gender\" size=\"1\" >\n");
      out.write("      <option value=\"male\">Male</option>\n");
      out.write("      <option value=\"female\">Female</option>\n");
      out.write("    </select></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>D.O.B&nbsp;:&nbsp;</td>\n");
      out.write("    <td align=\"center\"><input type=\"text\" name=\"dob\" id=\"dob\" /></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>Password&nbsp;:&nbsp;</td>\n");
      out.write("    <td><input type=\"password\" name=\"password\" id=\"password\" /></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("    <td align=\"center\">  <input name=\"submit\" type=\"submit\" value=\"Submit\" /></td>\n");
      out.write("  </tr>\n");
      out.write(" </table>\n");
      out.write("      </form>        \n");
      out.write("                </div></div>\n");
      out.write("              \n");
      out.write("    </div></div>\n");
      out.write("  <div id=\"templatemo_footer\">\n");
      out.write("        Copyright © <a href=\"home.jsp\"><strong>Musica Entertainment Pvt. Ltd.</strong></a> | Designed by <a href=\"contact.html\" target=\"_blank\" >Musica Buds</a>\n");
      out.write("\t</div>\n");
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
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
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
