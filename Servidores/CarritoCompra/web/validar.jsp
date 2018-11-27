<%-- 
    Document   : validar
    Created on : 10-oct-2018, 9:19:22
    Author     : alumno_2DAW
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Carro.Comprobar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        double total = 0;
        for (int i = 0; i < Comprobar.productos.size(); i++) {

            total = total + Carro.Comprobar.productos.get(i).getTotal();
        }
        Carro.Comprobar.productos = new ArrayList();

    %> 
    <body>
        <h1>El Total de la compra es : <%=total%></h1>
    </body>
</html>
