<%-- 
    Document   : mostrar
    Created on : 25-oct-2018, 9:21:30
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
        
        <title>Info</title>
    </head>
    <body>
        <h1>Información</h1>
        <%
            String titulo = request.getParameter("desp");
            ArrayList<Libro> lista = new ArrayList<Libro>();
            String sql = "SELECT * FROM libros where titulo like '"+titulo+"';";
            lista = BaseDatos.bd.consultaTitulos(sql);
            

        %>
        <div>
            <p><b>Codigo:</b> <%=lista.get(0).getCodigo()%></p>
            <p><b>Titulo:</b> <%=lista.get(0).getTitulo()%></p>
            <p><b>Autor:</b> <%=lista.get(0).getAutor()%></p>
            <p><b>Fecha:</b> <%=lista.get(0).getFecha()%></p>
            <p><b>Paginas:</b> <%=lista.get(0).getPaginas()%></p>
            <p><b>Precio:</b> <%=lista.get(0).getPrecio()%></p>
        </div>
        
        <a href="index.html">Inicio</a>
    </body>
</html>
