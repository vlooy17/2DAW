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
public class ServletPedido extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher rd;
        ServletContext contexto = getServletContext();
        HttpSession sesion = request.getSession();
        String carnes = request.getParameter("carne");
        String quesos = request.getParameter("queso");
        String infantil = request.getParameter("infantil");
        String gluten = request.getParameter("gluten");
        String clasicos = request.getParameter("clasicos");
        String cant1 = request.getParameter("cantidad1");
        sesion.setAttribute("carnes", carnes);
        sesion.setAttribute("cant1", cant1);
        String cant2 = request.getParameter("cantidad2");
        sesion.setAttribute("quesos", quesos);
        sesion.setAttribute("cant2", cant2);
        String cant3 = request.getParameter("cantidad3");
        sesion.setAttribute("infantil", infantil);
        sesion.setAttribute("cant3", cant3);
        String cant4 = request.getParameter("cantidad4");
        sesion.setAttribute("gluten", gluten);
        sesion.setAttribute("cant4", cant4);
        String cant5 = request.getParameter("cantidad5");
        sesion.setAttribute("clasicos", clasicos);
        sesion.setAttribute("cant5", cant5);
        rd = contexto.getRequestDispatcher("/recogida.jsp");
        rd.forward(request, response);

    }

}
