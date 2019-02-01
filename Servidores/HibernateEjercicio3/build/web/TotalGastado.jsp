<%-- 
    Document   : TotalGastado
    Created on : 31-ene-2019, 8:55:47
    Author     : alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="Ayudante.Customer"%>
<%@page import="Ayudante.Ayuda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">

        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        <hr style="width: 50%;margin-left: 25%">
        <%
            String cliente = request.getParameter("cliente2");
            String videoclub = request.getParameter("videoclub2");
            String fecha1 = request.getParameter("mesDesde");
            String fecha2 = request.getParameter("mesHasta");
            Ayuda consulta = new Ayuda();
            Long total = consulta.getTotal(cliente, videoclub, fecha1, fecha2);
            String nombreCliente="";
            List<Customer> store2 = consulta.getClientes2(cliente);
            

            out.println("<table style='width: 50%;margin-left: 25%'>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Cliente</th>");
            out.println("<th>Total Gastado</th>");
            out.println("</tr>");
            out.println("</thead><tbody>");
            out.println("<tr>");
            out.println("<td>"+store2.get(0).getFirstName()+" "+store2.get(0).getLastName()+"</td>");
            out.println("<td>"+total+"</td> ");
            out.println("</tr>");
            out.println("</tbody>");
            out.println("</table>");

        %>
        <hr style="width: 50%;margin-left: 25%">
    </body>
</html>
