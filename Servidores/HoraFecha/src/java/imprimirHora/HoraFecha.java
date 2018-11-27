/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package imprimirHora;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HoraFecha extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Primer servlet</title></head>");
        out.println("<body>");
        DateFormat dfEspañol = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, Locale.getDefault());
        out.println("<h1> Fecha: "+dfEspañol.format(new Date())+"</h1>");
        out.println("Este es muy sencillo");
        out.println("</body>");
        out.println("</html>");
    }
    
    public void destroy(){
        Date d = new Date();
        log("Servlet fuera de servicio el "+ d);
    }

}
