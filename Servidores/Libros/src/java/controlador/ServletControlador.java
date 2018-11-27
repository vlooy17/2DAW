/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

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
public class ServletControlador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String buscar = request.getParameter("busqueda");
        buscar = buscar.trim();
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        char c = ' ';

        if (!buscar.equals("")) {

            for (int i = 0; i < buscar.length(); i++) {
                c = buscar.charAt(i);
                out.println(c);
                out.println("<br>");

                if (c == '%' || c == '<' || c == '>' || c == '&') {

                    rd = contexto.getRequestDispatcher("/error.jsp");
                    rd.forward(request, response);
                } else {
                    contexto.setAttribute("busca", buscar);
                    rd = contexto.getRequestDispatcher("/resultado.jsp");
                    rd.forward(request, response);

                }

            }

        } else {
            rd = contexto.getRequestDispatcher("/index.html");
            rd.forward(request, response);

        }
    }
}
