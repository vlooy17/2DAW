/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno_2DAW
 */
public class ControladorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        usuario = usuario.trim();
        clave = clave.trim();
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        char c = ' ';
        if (usuario.equals("admin")&&clave.equals("trebujena")) {
            rd = contexto.getRequestDispatcher("/añadir.jsp");
            rd.forward(request, response);

        } else {
            rd = contexto.getRequestDispatcher("/index.html");
            rd.forward(request, response);

        }
    }
}
