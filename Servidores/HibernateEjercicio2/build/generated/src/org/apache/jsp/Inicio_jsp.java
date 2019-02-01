package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Ayudante.Store;
import java.util.List;
import Ayudante.Category;
import Ayudante.Ayuda;

public final class Inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"text-align: center;\">\n");
      out.write("        <form method=\"GET\" action=\"/HibernateEjercicio2/ComprobarServlet\">\n");
      out.write("            <div>\n");
      out.write("                <img src=\"imagenes/videoteca.gif\" width=\"290\" height=\"189\" alt=\"videoteca\"/>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <hr style=\"width: 50%;margin-left: 25%\"></hr>\n");
      out.write("                VideoClub:<select name=\"videoclub\">\n");
      out.write("                    ");
Ayuda fh = new Ayuda();
                        List<Store> store = fh.getTienda();
                        Store nuevo = null;
                        for (int x = 0; x < store.size(); x++) {
                            nuevo = store.get(x);
                            out.println("<option value='" + nuevo.getStoreId() + "'>" + nuevo.getNombre()+ "</opton>");
                        }
                    
      out.write("\n");
      out.write("                </select>\n");
      out.write("                <hr style=\"width: 50%;margin-left: 25%\"></hr>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <p style=\"background-color:#3871AF;color:white;width: 50%;margin-left: 25%;\">DATOS DEL NEGOCIO</p>\n");
      out.write("                <input type=\"radio\" name=\"Datos\" value=\"DatosNegocios\" />Datos del negocio\n");
      out.write("                <br></br>\n");
      out.write("                <input type=\"radio\" name=\"Datos\" value=\"DatosEmpleado\" />Datos del empleado\n");
      out.write("                <br></br>\n");
      out.write("                <input type=\"submit\" value=\"Mostrar\" name=\"M1\" />\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <p style=\"background-color:#3871AF;color:white;width: 50%;margin-left: 25%;\">GESTIÓN DEL CLIENTE:</p>\n");
      out.write("                <input type=\"radio\" name=\"Lista\" value=\"Activos\" />Listado de clientes activos\n");
      out.write("                <br></br>\n");
      out.write("                <input type=\"radio\" name=\"Lista\" value=\"Inactivos\" />Listado de clientes inactivos\n");
      out.write("                <br></br>\n");
      out.write("                <input type=\"submit\" value=\"Mostrar\" name=\"M2\" />\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <p style=\"background-color:#3871AF;color:white;width: 50%;margin-left: 25%;\">GESTIÓN DE INVENTARIO:</p>\n");
      out.write("                Categorias de películas:<select name=\"peliculas\">\n");
      out.write("                    ");

                        List<Category> categorias = fh.getCategoria();
                        Category nuevo1 = null;
                        for (int x = 0; x < categorias.size(); x++) {
                            nuevo1 = categorias.get(x);
                            out.println("<option value='" + nuevo1.getCategoryId() + "'>" + nuevo1.getName() + "</opton>");
                        }
                    
      out.write("\n");
      out.write("                </select>\n");
      out.write("                <br></br>\n");
      out.write("                <input type=\"submit\" value=\"Mostrar\" name=\"M3\" />\n");
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
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
