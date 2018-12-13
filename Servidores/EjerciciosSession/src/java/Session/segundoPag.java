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
public class segundoPag extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String n = request.getParameter("nombre");
        String a = request.getParameter("apellidos");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("nom", n);
        sesion.setAttribute("ape", a);
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet primeraPag</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<form method='post' action='terceraPag'>");
        out.println("Email: <input type='text' name='email'>");
        out.println("<input type='Submit' value='Enviar'>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }



}
