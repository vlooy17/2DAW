/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
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
 * @author DOCENTRO
 */
public class ServletUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        RequestDispatcher rd;
        ServletContext contexto = getServletContext();
        HttpSession sesion = request.getSession();
        String usu = request.getParameter("usuario");
        String pass = request.getParameter("passw");
        sesion.setAttribute("usuario", usu);
        sesion.setAttribute("validado", "si");
        sesion.setAttribute("clave", pass);
        String usuario;
        String password;
        
        ArrayList<Usuario> lista = new ArrayList<Usuario>();
        lista = BD.consultaUsuario();
        
        for (int i = 0; i < lista.size(); i++) {
            usuario = lista.get(i).getUsuario();
            password = lista.get(i).getPassword();
            
            if(usu.equals(usuario)&& pass.equals(password)){
                rd = contexto.getRequestDispatcher("/pedido.jsp");
                rd.forward(request, response);
            }else{
                rd = contexto.getRequestDispatcher("/index.html");
                rd.forward(request, response);
                
            }
        }

    }

}
