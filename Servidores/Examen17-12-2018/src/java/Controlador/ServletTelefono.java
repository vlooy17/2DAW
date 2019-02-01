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
import javax.servlet.http.HttpSession;

/**
 *
 * @author DOCENTRO
 */
public class ServletTelefono extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher rd;
        ServletContext contexto = getServletContext();
        HttpSession sesion = request.getSession();

        String telefono = request.getParameter("telefono");

        if (telefono.length() == 9) {
            sesion.setAttribute("telefono", telefono);
            rd = contexto.getRequestDispatcher("/pedidoFinal.jsp");
            rd.forward(request, response);
        } else {
            rd = contexto.getRequestDispatcher("/telefono.jsp");
            rd.forward(request, response);
        }

    }
}
