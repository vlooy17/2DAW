/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calc;

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
public class Comprobar extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        boolean error = false;

        String ope = request.getParameter("venta");
        String num = request.getParameter("entregada");
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;
        double ent = 0;
        double ven = 0;
        try {
            ven = Double.parseDouble(ope);
            ent = Double.parseDouble(num);
        } catch (Exception e) {
            error = true;
            rd = contexto.getRequestDispatcher("/error.jsp");
            rd.forward(request, response);
        }

        if (ven > ent) {
            rd = contexto.getRequestDispatcher("/error.jsp");
            rd.forward(request, response);
        } else {
            contexto.setAttribute("venta", ope);
            contexto.setAttribute("entrega", num);
            rd = contexto.getRequestDispatcher("/vuelta.jsp");
            rd.forward(request, response);
        }

    }

}
