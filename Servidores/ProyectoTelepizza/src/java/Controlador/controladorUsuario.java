/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelos.Usuario;
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
public class controladorUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String usuario = request.getParameter("txtUsuario");
        String clave = request.getParameter("txtClave");
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", usuario);
        sesion.setAttribute("clave", clave);
        ServletContext contexto = getServletContext();
        RequestDispatcher rd;

        ArrayList<Usuario> lista = BaseDatos.BD.Usuarios();

        String usu = lista.get(0).getUsuario();
        String cla = lista.get(0).getClave();

        if (usuario.equals(usu) && clave.equals(cla)) {
            rd = contexto.getRequestDispatcher("/ofertas.jsp");
            rd.forward(request, response);
        } else {
            rd = contexto.getRequestDispatcher("/error.html");
            rd.forward(request, response);
        }

    }

}
