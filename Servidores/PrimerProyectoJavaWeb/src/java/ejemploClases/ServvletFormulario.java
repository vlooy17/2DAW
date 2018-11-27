package ejemploClases;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServvletFormulario extends HttpServlet {

 

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        out.print("</br>");
        out.print("</br>");
        out.print("<h1>INFORMACIÓN DE LA PETICIÓN:</h1>");
        out.print("</br>");
        out.print("<p>Protocolo de la petición: "+request.getProtocol()+"</p>");
        out.print("<p>Nombre del cliente: "+request.getRemoteHost()+"</p>");
        out.print("<p>Dirección ip del cliente: "+request.getRemoteAddr()+"</p>");
        out.print("<p>Clave del usuario que realiza la petición: "+request.getRemoteUser()+"</p>");
        out.print("<p>Tipo MIME usado por el cliente: "+request.getContentType()+"</p>");
        out.print("<p>Cadena de parámetros de la petición: "+request.getQueryString()+"</p>");
        out.print("<p>URI de la petición: "+request.getRequestURI()+"</p>");
        out.print("<p>URL de la petición: "+request.getRequestURL()+"</p>");
        out.print("<p>Ruta URI del servlet: "+request.getServletPath()+"</p>");
        out.print("<p>Nombre del servidor web que recibe la petición: "+request.getServerName()+"</p>");
        out.println("<p>Numero del puerto por el que el servidor acepta la conexión del cliente:"+request.getRemotePort()+" </p>");
        out.println("</br>");
        out.println("<h1>Encabezados asociados a la petición</h1>");
        out.println("<table border = \"3\">");
        out.println("<tr><td>Host: </b></td><td><i>"+request.getHeader("host")+"</i></td>/</tr>");
        out.println("<tr><td>user-agent: </b></td><td><i>"+request.getHeader("user-agent")+"</i></td>/</tr>");
        out.println("<tr><td>accept: </b></td><td><i>"+request.getHeader("accept")+"</i></td>/</tr>");
         out.println("<tr><td>accept-language: </b></td><td><i>"+request.getHeader("accept-language")+"</i></td>/</tr>");
        out.println("<tr><td>accept-encoding: </b></td><td><i>"+request.getHeader("accept-encoding")+"</i></td>/</tr>");
        out.println("<tr><td>accept-charset: </b></td><td><i>"+request.getHeader("accept-charset")+"</i></td>/</tr>");
         out.println("<tr><td>keep-alive: </b></td><td><i>"+request.getHeader("keep-alive")+"</i></td>/</tr>");
        out.println("<tr><td>connection: </b></td><td><i>"+request.getHeader("connection")+"</i></td>/</tr>");
        out.println("<tr><td>referer: </b></td><td><i>"+request.getHeader("referer")+"</i></td>/</tr>");
        out.println("<tr><td>content-type: </b></td><td><i>"+request.getHeader("content-type")+"</i></td>/</tr>");
        out.println("<tr><td>content-length: </b></td><td><i>"+request.getHeader("content-length")+"</i></td>/</tr>");
        out.println("</table>");
        out.println("</body>");
        out.println("</html");
    }
}
