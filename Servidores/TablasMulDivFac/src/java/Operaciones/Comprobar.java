/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

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

      

        String ope = request.getParameter("op");
        //int num = Integer.parseInt(request.getParameter("numero"));
        String num = request.getParameter("numero");
        
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;
        
        contexto.setAttribute("numerokk", num);

        if(ope.equals("mul")){
            rd = contexto.getRequestDispatcher("/Multiplica");
            rd.forward(request, response);
        }
        if(ope.equals("div")){
            rd = contexto.getRequestDispatcher("/div");
            rd.forward(request, response);
        }
        if(ope.equals("fac")){
            rd = contexto.getRequestDispatcher("/factorial");
            rd.forward(request, response);
            
        }

    }

}
