package Tabla;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GeneraTabla extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        int num = Integer.parseInt(request.getParameter("numero"));
        String colo = request.getParameter("color");
        out.println("<html>");
        out.println("<head><title>Datos introducidos por Formulario1</title></head>");
        out.println("<style> body{color: "+colo+"; }</style>");
        out.println("<body>");
        out.println("<h1>DATOS INTRODUCIDOS</h1>");
        out.println("<table border = \"3\">");
        for (int i = 0; i < 11; i++) {
            
            out.println("<tr><td>"+num+"</td><td> * "+i+" = </td><td>"+(num*i)+"</td></tr>");
            
        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");
        
        
    }

}
