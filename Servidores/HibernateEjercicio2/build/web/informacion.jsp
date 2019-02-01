<%-- 
    Document   : informacion
    Created on : 30-ene-2019, 8:44:29
    Author     : alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="Ayudante.Film"%>
<%@page import="Ayudante.Ayuda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Información Peliculas</h1>
        <%
            
            String valor = (String) request.getParameter("id");
            Ayuda fh = new Ayuda();
            List<Film> lis = fh.getListaPeliculas(valor);
            Film peli = lis.get(0);
        %>    
        <table>

            <tbody>
                <tr>
                    <td>Titulo:</td>
                    <td><%
                        out.print(peli.getTitle());
                        %></td>
                </tr>
                <tr>
                    <td>Descripcion:</td>
                    <td><%
                        out.print(peli.getDescription());
                        %></td>
                </tr>
                <tr>
                    <td>Rating:</td>
                    <td><%
                        out.print(peli.getRating());
                        %></td>
                </tr>
                <tr>
                    <td>Release:</td>
                    <td><%
                        out.print(peli.getReleaseYear());
                        %></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
