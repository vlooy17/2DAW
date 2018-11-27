<%-- 
    Document   : anadir
    Created on : 09-nov-2018, 11:06:46
    Author     : alumno_2DAW
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="/index.html" %>
        <%
            String codComercial;
            codComercial = request.getParameter("comercial");
            String codProducto;
            codProducto = request.getParameter("producto");
            String cant;
            cant = request.getParameter("cantidad");
            String fecha;
            fecha = request.getParameter("fecha");
            
            boolean agregado = false;
             agregado = BaseDatos.bd.insetar(codComercial, codProducto, cant, fecha);
             if(agregado){
                 out.println("Venta añadida");
             }else{
                 out.println("Error al añadir");
             }
        %>
    </body>
</html>
