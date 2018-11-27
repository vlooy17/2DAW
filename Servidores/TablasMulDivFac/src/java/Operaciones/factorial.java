/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Operaciones;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alumno_2DAW
 */
public class factorial extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        double num = Double.parseDouble(request.getParameter("numerokk"));
        double resultado = 0;

        out.println("<html>");
        out.println("<head><title>Datos introducidos por Formulario1</title></head>");
        out.println("<body>");
        out.println("<h1>DATOS INTRODUCIDOS</h1>");
        out.println("<table border = \"3\">");
        double x;
        double y;
        for (int i = 0; i < num + 1; i++) {

            if (i == 0) {

                out.println("<tr><td>" + i + "! = 1</td></tr>");

            } else {
                resultado = i;
                x = i;
                y = i;
                while (1 < x) {

                    resultado = resultado * (y - 1);
                    x--;
                    y--;
                }
                out.println("<tr><td>" + i + "! = " + (resultado) + "</td></tr>");
            }

        }
        out.println("</table>");
        out.println("</body>");
        out.println("</html>");

    }
}
/*
resultado = num;
		while(1<numero){

			resultado = resultado * (num-1);
			num--;
			
		}
 */
