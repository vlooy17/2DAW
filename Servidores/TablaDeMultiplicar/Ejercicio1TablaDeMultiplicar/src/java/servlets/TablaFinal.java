package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TablaFinal extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        /* TODO output your page here. You may use following sample code. */
        String numS = (String) getServletContext().getAttribute("numero");
        int num = Integer.parseInt(numS);
        String color = (String) getServletContext().getAttribute("color");

        out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<style> body{color: "+color+"; }</style>");
            out.println("<title>Servlet TablaFinal</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Tabla de multiplicar del " + num + "</h1>");
            out.println("<table border=\"5\">");
            for (int x = 1; x < 10; x++) {
                out.println("<tr><td>" + num + "</td><td> x " + x + " =</td><td>" + x * num + "</td></tr>");
            }
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
