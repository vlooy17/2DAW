
package ejemploClases;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServvletFormulario extends HttpServlet {

       @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //captura de parametros
        
        String nom = request.getParameter("nombre");
        String tef = request.getParameter("telefono");
        String lugNaci = request.getParameter("lugar de nacimiento");
        
        //Asignación a la respuesta html que va a generarse del tipo MIME
        response.setContentType("text/html");
        
        //Obtención del objeto que escribe la respuesta.Pertenece a java.io
        PrintWriter out= response.getWriter();
        
        //generamos html
        out.println("<html>");
        out.println("<head><title>Datos introducidos por Formulario1</title></head>");
        out.println("<body>");
        out.println("<h1>DATOS INTRODUCIDOS</h1>");
        out.println("<table border = \"5\">");
        out.println("<tr><td>Nombre: </b></td><td><i>"+nom+"</i></td>/</tr>");
        out.println("<tr><td>Teléfono: </b></td><td><i>"+tef+"</i></td>/</tr>");
        out.println("<tr><td>Lugar de nacimiento: </b></td><td><i>"+lugNaci+"</i></td>/</tr>");
        out.println("</table>");
        out.println("</body>");
        out.println("</html");
        
        
        
    }

   

}
