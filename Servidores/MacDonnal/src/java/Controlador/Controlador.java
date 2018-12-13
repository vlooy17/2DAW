/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alumno_2DAW
 */
public class Controlador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        PrintWriter out = response.getWriter();
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", usuario);
        sesion.setAttribute("clave", clave);
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;
        
        out.print(usuario);
        out.print(clave);
        
        ArrayList<Usuario> lista;
        
        lista = BaseDatos.Base.consultaTitulos();
        
        String usuario1 = lista.get(0).getUsuario();
        String clave1 = lista.get(0).getClave();
        String nombre = lista.get(0).getNombre();
        sesion.setAttribute("nombre", nombre);
        
        if(usuario.equals(usuario1)&& clave.equals(clave1)){
           rd = contexto.getRequestDispatcher("/pedido.jsp");
           rd.forward(request, response);
        }else{
            rd = contexto.getRequestDispatcher("/index.html");
            rd.forward(request, response);
        }
        
        
    }

}
