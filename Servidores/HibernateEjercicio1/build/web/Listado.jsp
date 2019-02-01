<%-- 
    Document   : Listado
    Created on : 17-ene-2019, 11:27:04
    Author     : alumno_2DAW
--%>

<%@page import="Ayuda.Film"%>
<%@page import="java.util.List"%>
<%@page import="Ayuda.Category"%>
<%@page import="Ayuda.Category"%>
<%@page import="Ayuda.Ayudante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de peliculas</h1>
        <%
            String valor;
            valor = request.getParameter("idCategorias");
            Ayudante fh = new Ayudante();
            List<Film> lista = fh.getLista(valor);
            Film nuevo = null;
            for (int x = 0; x < lista.size(); x++) {
                nuevo = lista.get(x);
                out.println(nuevo.getTitle());
                out.println("<br>");
            }
        %>
    </body>
</html>
