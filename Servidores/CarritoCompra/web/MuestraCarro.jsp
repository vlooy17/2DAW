<%-- 
    Document   : MuestraCarro
    Created on : 09-oct-2018, 12:09:02
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Carro.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Descripcion</th>
                    <th>cantidad</th>
                    <th>precio</th>
                    <th>total</th>
                </tr>

            </thead>
            <tbody>
                <%
                    for (int i = 0; i < Comprobar.productos.size(); i++) {
                        out.println("<tr>");
                        out.println("<td>" + (Carro.Comprobar.productos.get(i).getProducto()) + "</td>");
                        out.println("<td>" + (Carro.Comprobar.productos.get(i).getCan()) + "</td>");
                        out.println("<td>" + (Carro.Comprobar.productos.get(i).getPrecio()) + "</td>");
                        out.println("<td>" + (Carro.Comprobar.productos.get(i).getTotal()) + "</td>");
                        out.println("</tr>");

                    }

                %>              

            </tbody>
        </table>
        <a href="validar.jsp"><button>Validar</button></a>
        <a href="indice.html"><button>Seguir Comprando</button></a>

    </body>
</html>
