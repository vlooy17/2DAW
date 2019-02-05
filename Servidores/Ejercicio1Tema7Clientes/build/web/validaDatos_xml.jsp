<%-- 
    Document   : validaDatos_xml
    Created on : 29-ene-2019, 13:17:30
    Author     : alumno_2DAW
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<%
    String fecha = request.getParameter("fecha_nacimiento");
    String cos = request.getParameter("codigo_postal");
    String tel = request.getParameter("telefono");
    
    
    String datos = "<respuestas><mensaje>Resultado</mensaje>"
            + "<parametros><telefono>"+tel+"</telefono>"
            + "<codigo_postal>"+cos+"</codigo_postal>"
            + "<fecha_nacimiento>"+fecha+"</fecha_nacimiento></parametros></respuestas>";
    
    out.println(datos);
    
%>