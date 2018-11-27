<%-- 
    Document   : ConsultaTitulos
    Created on : 25-oct-2018, 8:35:36
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BaseDatos.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Consulta</title>
    </head>
    <body>
        <h1>Consulta de los titulos disponibles</h1>
        <%
            ArrayList<Libro> lista = new ArrayList<Libro>();
            String sql = "SELECT * FROM libros;";
            lista = BaseDatos.bd.consultaTitulos(sql);
            out.println("<form  action='mostrar.jsp' method ='POST'>");

            out.println("<select  name ='desp'> ");
            for (int i = 0; i < lista.size(); i++) {

                out.println("<option value='" + lista.get(i).getTitulo() + "'>" + lista.get(i).getTitulo() + "</option>");
            }
            out.println("</ select>");
            out.println("<input type='submit' value='Mostrar información'></input>");
            out.println(" </form>");


        %>
    </body>
</html>
