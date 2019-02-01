<%-- 
    Document   : TotalGastado
    Created on : 31-ene-2019, 8:55:47
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.Payment"%>
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

            String videoclub = request.getParameter("videoclub5");
            int tramo = Integer.parseInt(request.getParameter("t"));
            Ayuda consulta = new Ayuda();
            //long totalC = consulta.getTotalClientes(videoclub);
            Ayuda fh1 = new Ayuda();
            List<Payment> store1 = fh1.getClientesVideoclub(videoclub);
            List<Customer> clientesVC = fh1.getClientesVC(videoclub, tramo);
            Payment nuevo1 = null;

            out.println("<table style='width: 50%;margin-left: 25%'>");
            out.println("<thead>");
            out.println("<tr>");
            out.println("<th>Cliente</th>");
            out.println("<th>Total Gastado</th>");
            out.println("</tr>");
            out.println("</thead><tbody>");
            for (int i = 0; i < store1.size(); i++) {
                nuevo1 = store1.get(i);
                for (int z = 0; z < clientesVC.size(); z++) {
                    if (clientesVC.get(z).getCustomerId() == nuevo1.getCustomer().getCustomerId()) {
                        out.println("<tr>");
                        out.println("<td>" + nuevo1.getCustomer().getFirstName() + "</td>");
                        String idC = "" + nuevo1.getCustomer().getCustomerId();
                        long totalC = consulta.getTotalClientes(videoclub, idC);
                        out.println("<td>" + totalC + "</td> ");
                        out.println("</tr>");
                    }

                }

            }
            out.println("</tbody>");
            out.println("</table>");
            if (tramo >= 10) {
                out.println("<a href='TotalClientes.jsp?t=" + (tramo - 10) + "&videoclub5=" + videoclub + "'>Anterior</a>");
            }
            if (clientesVC.size() == 10) {
                out.println("<a href='TotalClientes.jsp?t=" + (tramo + 10) + "&videoclub5=" + videoclub + "'>Siguiente</a>");
            }


        %>
        <hr style="width: 50%;margin-left: 25%">
    </body>
</html>