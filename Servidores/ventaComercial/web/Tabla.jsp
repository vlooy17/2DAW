<%-- 
    Document   : Tabla
    Created on : 08-nov-2018, 9:07:24
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BaseDatos.venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="/index.html" %>
        <%
            String comercial;
            comercial = request.getParameter("comercial");
        %>
        <h1>Tabla de ventas de <%=comercial%></h1>
        <%
            ArrayList<venta> datos = new ArrayList<venta>();
            datos = BaseDatos.bd.Listado(comercial);
            out.println("<table border='1'>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Comercial</th>");
            out.println("<th>Producto</th>");
            out.println("<th>Cantidad</th>");
            out.println("<th>Precio</th>");
            out.println("<th>Total</th>");
            out.println("<th>Descuento</th>");
            out.println("<th>TotalDescuento</th>");
            out.println("<th>Fecha</th>");
            out.println("</tr>");
            out.println("</thead>");
            out.println("<tbody>");

            for (int i = 0; i < datos.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + datos.get(i).getComercial() + "</td>");
                out.println("<td>" + datos.get(i).getProducto() + "</td>");
                out.println("<td>" + datos.get(i).getCantidad() + "</td>");
                out.println("<td>" + datos.get(i).getPrecio() + "</td>");
                out.println("<td>" + Math.round(((datos.get(i).getCantidad()) * (datos.get(i).getPrecio()) * 100d) / 100d) + "</td>");
                out.println("<td>" + datos.get(i).getDescuento() + "</td>");
                out.println("<td>" + Math.round((((datos.get(i).getCantidad()) * (datos.get(i).getPrecio()) - datos.get(i).getDescuento()) * 100d) / 100d) + "</td>");
                out.println("<td>" + datos.get(i).getFecha() + "</td>");
                out.println("</tr>");

            }
            out.println("</tbody>");
        %>




    </table>

</body>
</html>
