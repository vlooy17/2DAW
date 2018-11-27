/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno_2DAW
 */
public class hombres extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        ServletContext contexto = getServletContext();

        String nombre = (String) contexto.getAttribute("nombre1");
        String apellido = (String) contexto.getAttribute("apellidos1");
        String numero = (String) contexto.getAttribute("numero1");
        String ciudad = (String) contexto.getAttribute("ciudad1");
        String sexo = (String) contexto.getAttribute("sexo1");
        String pais = (String) contexto.getAttribute("pais1");
        String parapente = (String) contexto.getAttribute("parapente1");
        String aladelta = (String) contexto.getAttribute("alaDelta1");
        String esqui = (String) contexto.getAttribute("esqui1");
        String submarinismo = (String) contexto.getAttribute("submarinismo1");
        String comentario = (String) contexto.getAttribute("comentario1");

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='utf-8'>");
        out.println("<style>");
        if (sexo.equals("hombre")) {
            out.println("body {   background-color: cyan;}");
        } else {
            out.println("body {   background-color: pink;}");
        }

        out.println("</style>");
        out.println("<title>Datos</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>DATOS FORMULARIOS</h1>");
        out.println("<h2>Hola " + nombre + "</h2>");
        out.println("<table border = \"3\">");
        out.println("<tr>");
        out.println("<td>Nommbre</td><td>" + nombre + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>apellidos</td><td>" + apellido + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Telefono</td><td>" + numero + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Lugar de nacimiento</td><td>" + ciudad + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Sexo</td><td>" + sexo + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>País</td><td>" + pais + "</td>");
        out.println("</tr>");
        out.println("<tr>");
        out.println("<td>Area de texto</td><td>" + comentario + "</td>");
        out.println("</tr>");
        out.println("</table>");
        out.println("<p>" + nombre.toUpperCase() + ", tus actividades de ocio favoritas son:");
        out.println("<table border = \"3\">");
        if (!(parapente==null)) {
            out.println("<tr>");
            out.println("<td>" + parapente + "</td>");
            out.println("</tr>");
        }
        if (!(esqui==null)) {
            out.println("<tr>");
            out.println("<td>" + esqui + "</td>");
            out.println("</tr>");
        }
        if (!(aladelta == null)) {
            out.println("<tr>");
            out.println("<td>" + aladelta + "</td>");
            out.println("</tr>");
        }
        if (!(submarinismo==null)) {
            out.println("<tr>");
            out.println("<td>" + submarinismo + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
       
        if(sexo.equals("hombre")){
            out.println("<a href='/VanlooyCala/hombres.html'>Sorpresa</a>");
        }else{
            out.println("<a href='/VanlooyCala/mujer.html'>Sorpresa</a>");
        }
        out.println("</body>");
        out.println("</html>");
    }

}
