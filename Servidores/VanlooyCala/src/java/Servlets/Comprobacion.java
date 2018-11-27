/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

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
public class Comprobacion extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String numero = request.getParameter("numero");
        String ciudad = request.getParameter("ciudad");
        String sexo = request.getParameter("sexo");
        String pais = request.getParameter("pais");
        String parapente = request.getParameter("parapente");
        String alaDelta = request.getParameter("alaDelta");
        String esqui = request.getParameter("esqui");
        String submarinismo = request.getParameter("submarinismo");
        String comentario = request.getParameter("comentarios");

        ServletContext contexto = getServletContext();
        RequestDispatcher rd;

        contexto.setAttribute("nombre1", nombre);
        contexto.setAttribute("apellidos1", apellidos);
        contexto.setAttribute("numero1", numero);
        contexto.setAttribute("ciudad1", ciudad);
        contexto.setAttribute("sexo1", sexo);
        contexto.setAttribute("pais1", pais);
        contexto.setAttribute("parapente1", parapente);
        contexto.setAttribute("alaDelta1", alaDelta);
        contexto.setAttribute("esqui1", esqui);
        contexto.setAttribute("submarinismo1", submarinismo);
        contexto.setAttribute("comentario1", comentario);

        if (sexo.equals("hombre")) {
            rd = contexto.getRequestDispatcher("/hombres");
            rd.forward(request, response);
        } else {
            rd = contexto.getRequestDispatcher("/hombres");
            rd.forward(request, response);
        }

    }

}
