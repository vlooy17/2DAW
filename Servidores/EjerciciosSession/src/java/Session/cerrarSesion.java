/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alumno_2DAW
 */
public class cerrarSesion extends HttpServlet {

   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        sesion.invalidate();
        
        out.println("<html>");
        out.println("<head><title>Sesiones</title></head>");
        out.println("<body>");
        out.println("Sesion cerrada.<p>");
        out.println("<a href='Ejercicio1'>Inicio</a>");
        out.println("</body>");
        out.println("</html>");
        
        
    }

}
