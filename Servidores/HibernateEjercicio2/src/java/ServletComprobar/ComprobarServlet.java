/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletComprobar;

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
public class ComprobarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String videoclub = request.getParameter("videoclub");
        String datos = request.getParameter("Datos");
        String lista = request.getParameter("Lista");
        String categoria = request.getParameter("peliculas");
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;
        contexto.setAttribute("videoclub", videoclub);

        if (datos != null) {
            if (datos.equals("DatosNegocios")) {
                contexto.setAttribute("datos", datos);
                rd = contexto.getRequestDispatcher("/Negocios.jsp");
                rd.forward(request, response);
            } else if (datos.equals("DatosEmpleado")) {
                contexto.setAttribute("datos", datos);
                rd = contexto.getRequestDispatcher("/Empleados.jsp");
                rd.forward(request, response);
            }

        }
        if (lista != null) {
            if (lista.equals("Activos")) {
                rd = contexto.getRequestDispatcher("/Activos.jsp");
                rd.forward(request, response);
            } else if (lista.equals("Inactivos")) {
                rd = contexto.getRequestDispatcher("/Inactivos.jsp");
                rd.forward(request, response);
            }
        }
        if (categoria != null) {
            contexto.setAttribute("cat", categoria);
            rd = contexto.getRequestDispatcher("/Peliculas.jsp");
            rd.forward(request, response);
        }                                           

    }

}
