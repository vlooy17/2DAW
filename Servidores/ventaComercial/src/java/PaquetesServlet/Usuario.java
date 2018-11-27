/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PaquetesServlet;

import BaseDatos.venta;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class Usuario extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usu;
        String clav;
        String usu2;
        String clav2;
        usu = request.getParameter("usuario");
        clav = request.getParameter("clave");
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        ArrayList<venta> usuario = new ArrayList<venta>();
        usuario = BaseDatos.bd.Datos();
        usu2 = usuario.get(0).getUsuario();
        clav2 = usuario.get(0).getClave();
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;
        if(usu.equals(usu2)&& clav.equals(clav2)){
            rd = contexto.getRequestDispatcher("/agregar.jsp");
            rd.forward(request, response);
        }else{
            out.println("Incorrecto");
        }
                

    }

}
