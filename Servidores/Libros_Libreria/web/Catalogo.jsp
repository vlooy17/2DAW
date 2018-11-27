<%-- 
    Document   : Catalogo
    Created on : 25-oct-2018, 9:44:48
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BaseDatos.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Catalogo</title>
    </head>
    <body>
        <h1>Catálogo de Libros:</h1>
        <%
            ServletContext contexto = getServletContext();
            String cad = (String) contexto.getAttribute("busca");
            ArrayList<Libro> lista = new ArrayList<Libro>();
            String sql = "SELECT * FROM libros;";
            lista = BaseDatos.bd.consultaTitulos(sql);

            out.println("<table border = \"3\">");
            out.println("<th>Codigo</th>");
            out.println("<th>Titulo</th>");
            out.println("<th>Autor</th>");
            out.println("<th>Fecha</th>");
            out.println("<th>Paginas</th>");
            out.println("<th>Precio</th>");
            for (int i = 0; i < lista.size(); i++) {

                out.println("<tr><td>" + lista.get(i).getCodigo() + "</td>"
                        + "<td>" + lista.get(i).getTitulo() + "</td>"
                        + "<td>" + lista.get(i).getAutor() + "</td>"
                        + "<td>" + lista.get(i).getFecha() + "</td>"
                        + "<td>" + lista.get(i).getPaginas() + "</td>"
                        + "<td>" + lista.get(i).getPrecio() + "</td></tr>");

            }
            out.println("</table>");


        %>

    </body>
</html>
