<%-- 
    Document   : ejemplo5
    Created on : 05-oct-2018, 10:44:14
    Author     : alumno_2DAW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%
        //captura de parámetros
        String color = request.getParameter("color");
        String nombre = request.getParameter("nombre");

        //si no se le pasa ningun parametro a la jsp
        if (nombre == null) {%>
    <%@include file="/FormuColores.jsp" %>

    <!-- si el usuario se deja algún cuadrado sin completae -->
    <% }else if (color.length() == 0 || nombre.length() == 0) {%>
    <%@include file="/FormuColoresConAviso.jsp" %>

    <% } else {%>
    <body bgcolor="<%=color%>">
        <h2>Datos introducidos</h2>
        Nombre: <font color="red"><%=nombre%></font><p>
        Color de fondo : <font color="red"><%=color%></font>
            <% }%>
    </body>
</html>
