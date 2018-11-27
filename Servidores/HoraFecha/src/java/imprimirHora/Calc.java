package imprimirHora;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Calc extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        double n1 = Double.parseDouble(request.getParameter("n1"));
        double n2 = Double.parseDouble(request.getParameter("n2"));
        double resultado = 0;
        String op = request.getParameter("op");
        String operacion="";
        
        if(op.equals("+")){
            
            resultado = n1 + n2;
            operacion = "suma";
        }
        if(op.equals("-")){
            
            resultado = n1 - n2;
            operacion= "resta";
        }
        if(op.equals("/")){
            
            resultado = n1/n2;
            operacion = "división";
        }
        if(op.equals("*")){
            
            resultado = n1*n2;
            operacion = "multiplicación";
        }
        
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();
        out.println("<html>");
        out.println("<head><title>Datos introducidos por Formulario1</title></head>");
        out.println("<body>");
        out.println("<h1>El resultado la "+operacion+" es "+n1+" "+op+" "+n2+" = "+resultado);
        out.println("</body>");
        out.println("</html");
        
        
    }

}
