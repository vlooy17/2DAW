package Tabla;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Comprobacion extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double numero = Double.parseDouble(request.getParameter("numero"));
        String color = request.getParameter("color");
        boolean num = false;
        boolean col = false;

        ServletContext contexto = getServletContext();
        RequestDispatcher rd;

        if (numero >= 0 && numero <= 9) {

            num = true;
            contexto.setAttribute("numero", numero);

        } else {
            rd = contexto.getRequestDispatcher("/ErrorTabla.html");
            rd.forward(request, response);

        }
        if (color.equalsIgnoreCase("red") || color.equalsIgnoreCase("green")
                || color.equalsIgnoreCase("yellow")
                || color.equalsIgnoreCase("orange") || color.equalsIgnoreCase("pink")
                || color.equalsIgnoreCase("black") || color.equalsIgnoreCase("blue")) {

            col = true;
            contexto.setAttribute("color", color);

        } else {
            rd = contexto.getRequestDispatcher("/ErrorColor.html");
            rd.forward(request, response);

        }
        if (num) {
            rd = contexto.getRequestDispatcher("/GeneraTabla");
            rd.forward(request, response);

        }
    }

}
