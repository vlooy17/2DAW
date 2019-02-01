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
public class ServletRecogida extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher rd;
        ServletContext contexto = getServletContext();
        HttpSession sesion = request.getSession();
        
        String recogida = request.getParameter("recoger");
        sesion.setAttribute("recogida", recogida);
        out.println(recogida);
        rd = contexto.getRequestDispatcher("/telefono.jsp");
        rd.forward(request, response);

    }

}
