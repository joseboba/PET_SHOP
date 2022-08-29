package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bo.*;
import java.util.*;

public final class UpdateStore_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Update Stire</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1> ACTUALIZAR TIENDA </h1>\n");
      out.write("         ");

            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            int index = Integer.valueOf(request.getParameter("registro"));
            Store store = stores.get(index);
          
      out.write("\n");
      out.write("        <form action=\"Process.jsp\" method=\"POST\">\n");
      out.write("            NIT:        <input type=\"text\" name=\"txtNit\" value=\"");
      out.print(store.getNit());
      out.write("\" /> <br> <br>\n");
      out.write("            Nombre:     <input type=\"text\" name=\"txtName\" value=\"");
      out.print(store.getName());
      out.write("\" /> <br> <br>\n");
      out.write("            Dirección:  <input type=\"text\" name=\"txtAddress\" value=\"");
      out.print(store.getAddress());
      out.write("\" /> <br> <br>\n");
      out.write("            Email:      <input type=\"text\" name=\"txtEmail\" value=\"");
      out.print(store.getEmail());
      out.write("\" /> <br> <br>\n");
      out.write("            Telefono:   <input type=\"number\" name=\"txtPhone\" value=\"");
      out.print(store.getPhone());
      out.write("\" /> <br> <br>\n");
      out.write("            \n");
      out.write("            <input  type=\"hidden\" name=\"txtUpdateIndex\" value=\"");
      out.print(index);
      out.write("\">\n");
      out.write("            <input type=\"submit\" name=\"btnUpdate\" value=\"Actualizar\" />\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <a href=\"List.jsp\">Ver datos</a>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
