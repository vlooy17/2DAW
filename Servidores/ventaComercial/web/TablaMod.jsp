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
        <form method="POST" action="actualiza.jsp">


            <%
                String comercial;
                int cant = 0;
                comercial = request.getParameter("comercial");
                ServletContext contexto = getServletContext();
                String referencia;
                String codComercial;
                String fecha;
                RequestDispatcher rd;
            %>
            <h1>Tabla de ventas de <%=comercial%></h1>
            <%

                ArrayList<venta> datos = new ArrayList<venta>();
                datos = BaseDatos.bd.Listado2(comercial);
                contexto.setAttribute("datos", datos);
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
                    cant = datos.get(i).getCantidad();
                    fecha = datos.get(i).getFecha();
                    referencia = datos.get(i).getCodProd2();
                    codComercial = datos.get(i).getCodComer2();
                    out.println("<input disable type='hidden' name='cod" + i + "' value='" + codComercial + "'></input>");
                    out.println("<input disable type='hidden' name='referencia" + i + "' value='" + referencia + "'></input>");
                    out.println("<tr>");
                    out.println("<td><input disable type='text' name='comercial' value='" + datos.get(i).getComercial() + "'></input></td>");
                    out.println("<td><input disable type='text' name='ref' value='" +  datos.get(i).getProducto()+ "'></input></td>");
                    out.println("<td>" + datos.get(i).getProducto() + "</td>");
                    out.println("<td><input type='number' name='cantidad" + i + "' value='" + cant + "'></input></td>");
                    out.println("<td>" + datos.get(i).getPrecio() + "</td>");
                    out.println("<td>" + Math.round(((datos.get(i).getCantidad()) * (datos.get(i).getPrecio()) * 100d) / 100d) + "</td>");
                    out.println("<td>" + datos.get(i).getDescuento() + "</td>");
                    out.println("<td>" + Math.round((((datos.get(i).getCantidad()) * (datos.get(i).getPrecio()) - datos.get(i).getDescuento()) * 100d) / 100d) + "</td>");
                    out.println("<td><input disable type='text' name='fecha" + i + "' value='" + fecha + "'></input></td>");
                    out.println("</tr>");

                }
                out.println("</tbody>");
            %>

            <td colspan="8"><input type="submit" value="Modifica" /></td>
        </table>
    </form>



</body>
</html>
