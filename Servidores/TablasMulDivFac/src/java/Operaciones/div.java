/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno_2DAW
 */
public class div extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       
          ServletContext contexto = getServletContext();
        
        String num = (String) contexto.getAttribute("numerokk");
        

        double n = Double.parseDouble(num);
                
     
        out.println("<html>");
        out.println("<head><title>Datos introducidos por Formulario1</title></head>");
        out.println("<body>");
        out.println("<h1>DATOS INTRODUCIDOS</h1>");
        out.println("<table border = \"3\">");
        for (int i = 1; i < 21; i++) {

            out.println("<tr><td>" + n + "</td><td> / " + i + " = </td><td>" + (n / i) + "</td></tr>");

        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");

    }
}
