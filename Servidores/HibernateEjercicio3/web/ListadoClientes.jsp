<%-- 
    Document   : inicio
    Created on : 28-ene-2019, 13:35:04
    Author     : alumno_2DAW
--%>

<%@page import="Ayudante.Rental"%>
<%@page import="Ayudante.Customer"%>
<%@page import="Ayudante.Category"%>
<%@page import="Ayudante.Ayuda"%>
<%@page import="java.util.List"%>
<%@page import="Ayudante.Store"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center;">
        <div>
            <img src="imagenes/videoteca.gif" width="290" height="189" alt="videoteca"/>
        </div>
        <hr style="width: 50%;margin-left: 25%">
        <h2>Listado de Peliculas</h2>
        <hr style="width: 50%;margin-left: 25%">
        <div>
            <table border="0"  style="width: 50%;margin-left: 25%">
                <thead>
                    <tr>
                        <th>Peliculas</th>
                        <th>Fecha de Alquiler</th>
                        <th>Fecha de Devolución</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String cliente = request.getParameter("cliente");
                        String videoclub = request.getParameter("videoclub");
                        Ayuda consulta = new Ayuda();
                        int tramo = Integer.parseInt(request.getParameter("t"));
                        List<Rental> peli_alq = consulta.getListado1(videoclub, cliente, tramo);
                        for (int i = 0; i < peli_alq.size(); i++) {
                            out.println("<tr>");
                            out.println("<td>" + peli_alq.get(i).getInventory().getFilm().getTitle() + "</td>");
                            out.println("<td>" + peli_alq.get(i).getRentalDate() + "</td>");
                            out.println("<td>" + peli_alq.get(i).getReturnDate() + "</td>");
                            out.println("</tr>");

                        }
                        out.println("</tbody>");
                        out.println("</table>");
                        if (tramo >= 10) {
                            out.println("<a href='ListadoClientes.jsp?t=" + (tramo - 10) + "&cliente=" + cliente + "&videoclub=" + videoclub + "'>Anterior</a>");
                        }
                        if (peli_alq.size() == 10) {
                            out.println("<a href='ListadoClientes.jsp?t=" + (tramo + 10) + "&cliente=" + cliente + "&videoclub=" + videoclub + "'>Siguiente</a>");
                        }


                    %>
                <br></br>
            <a href='inicio.jsp'>Volver</a>

        </div>   
    </body>
</html>

