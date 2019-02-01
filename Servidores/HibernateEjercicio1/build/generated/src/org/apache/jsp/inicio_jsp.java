package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import Ayuda.Category;
import Ayuda.Ayudante;

public final class inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Inicio</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container clearfix\">\n");
      out.write("            <p class=\"titulo\">Ejemplo 1 Hibernate. Listado de Peliculas segun la categoria</p>\n");
      out.write("            <form action=\"Listado.jsp\" method=\"POST\">\n");
      out.write("                <p class=\"text\">Categoria</p>\n");
      out.write("                <select class=\"_select\" name=\"idCategorias\">\n");
      out.write("                    ");
Ayudante fh = new Ayudante();
                        List<Category> categorias = fh.getCategoria();
                        Category nuevo = null;
                        for(int x = 0; x<categorias.size();x++){
                            nuevo = categorias.get(x);
                            out.println("<option value='"+nuevo.getCategoryId()+"'>"+nuevo.getName()+"</opton>");
                        }
                        
                        //SELECT *  FROM category c,film_category f,film fl WHERE c.category_id = f.category_id AND f.film_id = fl.film_id and c.category_id=6;
                    
      out.write("\n");
      out.write("                </select>\n");
      out.write("                <button class=\"mostrar\">Mostrar Peliculas</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
