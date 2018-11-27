<%-- 
    Document   : AñadeCarro
    Created on : 09-oct-2018, 12:48:33
    Author     : alumno_2DAW
--%>


<%@page import="Carro.*"%>
<%@page import="Carro.Comprobar"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html;">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String art = request.getParameter("articulos");
            int cant = Integer.parseInt(request.getParameter("cantidad"));


        %>
        <%@include file="indice.html" %>
        <br>
        cantidad <%=cant%> articulo <%=art%> agregada al carro
        <%

            Comprobar.productos.add(new Articulo(art, cant));


        %>
        <br>
        
    </body>
</html>
