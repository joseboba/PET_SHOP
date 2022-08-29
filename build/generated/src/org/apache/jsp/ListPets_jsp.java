package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import bo.*;

public final class ListPets_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            List<Store> stores = (ArrayList) request.getSession().getAttribute("stores");
            
            String txtIndexStore = request.getParameter("txtIndexStore");
            int indexStore = Integer.valueOf(txtIndexStore);
            Store store = stores.get(indexStore);
            List<Pet> pets = store.getPets();
            String txtCreate = request.getParameter("txtCreate");
            boolean create = (txtCreate != null);
            if (pets == null && !create) {
                out.println("NO HAY REGISTROS <br>");
                out.println("<a href='List.jsp'>Ver datos</a>");
            } else {
                out.println("<h1>LISTADO DE MASCOTAS DE LA TIENDA: " + store.getName() + "</h1>");
            
            String deleteIndex = request.getParameter("txtDeleteIndex");
            String updateIndex = request.getParameter("txtUpdateIndex");
            
           
            
            if (deleteIndex != null) {
                int index = Integer.valueOf(deleteIndex);
                pets.remove(index);
                store.setPets(pets);
            }
            
            if (updateIndex != null) {
                int index = Integer.valueOf(updateIndex);
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String tipo = request.getParameter("txtType");
                Pet pet = new Pet(code, name, tipo);
                
                pets.set(index, pet);
                store.setPets(pets);
            }
            
            if (create) {
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String tipo = request.getParameter("txtType");
                
                Pet pet = new Pet(code, name, tipo);
                if (pets == null) {
                    pets = new ArrayList<>();
                    pets.add(pet);
                    store.setPets(pets);
                } else {
                    pets.add(pet);
                    store.setPets(pets);
                }
            }
            
            if (pets == null) {
                out.println("No existen mascotas en esta tienda <br>");
            } else {
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<th>Codigo </th>");
                out.println("<th>Nombre </th>");
                out.println("<th>Tipo </th>");
                out.println("</tr>");
                
                int i = 0;
                for (Pet pet: pets) {
                    out.println("<tr>");
                    out.println("<td>" + pet.getCode() + " </td>");
                    out.println("<td>" + pet.getName() + " </td>");
                    out.println("<td>" + pet.getType() + " </td>");
                    out.println("<td> <a href='DeletePet.jsp?registro="+ i +"&store="+ indexStore + "'>Eliminar</a>");
                    out.println("<td> <a href='UpdatePet.jsp?registro="+ i +"&store="+ indexStore + "'>Modificar</a>");
                    out.println("</tr>");
                    i++;
                }
                out.println("</table>");
                out.println("<a href='List.jsp'>Ver datos</a>");
            }
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
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
