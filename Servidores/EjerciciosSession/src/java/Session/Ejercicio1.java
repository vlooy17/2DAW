/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Session;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alumno_2DAW
 */
public class Ejercicio1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        PrintWriter out = response.getWriter();
        int visitas = 1;
        long fecha;
        HttpSession sesion = request.getSession();
        sesion.setMaxInactiveInterval(60);

        if (sesion.getAttribute("visitas") == null) {
            sesion.setAttribute("visitas", visitas);
        } else {
            visitas = Integer.parseInt(sesion.getAttribute("visitas").toString());
            visitas++;
            sesion.setAttribute("visitas", visitas);
        }
        fecha = sesion.getCreationTime();
        Date fechaC = new Date(fecha);
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd//MM/yyyy kk:mm:ss");
        fecha = sesion.getLastAccessedTime();

        Date fechaA = new Date(fecha);
        out.println("<html>");
        out.println("<head><title><Sesiones</title></head>");
        out.println("<body>");
        out.println("ID: <b>" + sesion.getId() + "</b><br>");
        if (sesion.isNew()) {
            out.println("La sesion es nueva<br>");
        } else {
            out.println("La sesion no es nueva<br>");
        }
        out.println("Visitas: " + visitas + "<br>");
        out.println("Fecha Creacion: " + formatoFecha.format(fechaC));
        out.println("Fecha Acceso: " + formatoFecha.format(fechaA));
        out.println("<form method='post' action='cerrarSesion'>");
        out.println("<input type='submit' value='Cerrar Sesion'>");
        out.println("</form>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
